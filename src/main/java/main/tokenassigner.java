package main;

import com.google.gson.Gson;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class tokenassigner {


//    public void createTestData() {
//
//        for(int i=0;i<20;i++)
//        {
//            pendingTokens.add(i+1);
//        }
//    }

    class tokenDone
    {
        public Integer token;
        public Integer counter;
        public Double timeServed;
        public String startTime;
        public String endTime;


        public String contact;
    }


    HashMap<Integer, tokenserving> currenttokens = new HashMap<>();


    ConcurrentLinkedQueue<Integer> pendingTokens = new ConcurrentLinkedQueue<>();
    ConcurrentLinkedQueue<String> pendingNumbers = new ConcurrentLinkedQueue<>();
    ConcurrentLinkedQueue<tokenDone> doneTokens = new ConcurrentLinkedQueue<>();

    ConcurrentHashMap<Integer, ConcurrentLinkedQueue<tokenDone>>  countersDoneDetails = new ConcurrentHashMap<>();

    ConcurrentHashMap<Integer, Integer> renewlistmerchantwise = new ConcurrentHashMap<>();



    List<Integer> counters = new ArrayList<>();

    AtomicInteger currentMaxCounter = new AtomicInteger(0);
    AtomicInteger currentMaxToken =  new AtomicInteger(0);
    AtomicInteger currentMaxDoneToken =  new AtomicInteger(0);
    AtomicInteger currentMinPendingToken =  new AtomicInteger(0);
    AtomicInteger currentMaxHelper =  new AtomicInteger(0);

    class tokenserving
    {
        public Integer token;
        public String startTime;
    }
    tokenregistrationpayload merDetails = new tokenregistrationpayload();

    Set<String> registeredContacts = new HashSet<>();

    HashMap<Integer,String> tokenWithContact = new HashMap<>();


    public tokenassigner(String merchantId)
    {
        String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
        String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
        merDetails.merchantname = merchantName;
        merDetails.merchanturl = dpimg;
    }

    public String getMerchantTokenDetails(String merchantId)
    {

        System.out.println("in tokenassigner getMerchantTokenDetails for merchantId :"+merchantId);

        if(merDetails.merchantname == null || merDetails.merchantname.length() == 0)
        {
            String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
            String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
            merDetails.merchantname = merchantName;
            merDetails.merchanturl = dpimg;
        }

        merDetails.currentRunningToken = currentMinPendingToken.get();
      //  pendingTokens.remove();
      //  currentMinPendingToken.set(pendingTokens.peek());
        merDetails.currentMaxToken = currentMaxToken.get();
       // merDetails.currentRunningToken =  new AtomicInteger(currentMaxDoneToken.get());

        String str = new Gson().toJson(merDetails);
        System.out.println("in tokenassigner getMerchantTokenDetails for merchantId :"+merchantId +" returning .. "+str);
        return  str;
    }

    public tokenassigner()
    {

    }

    public String getPendingTokens() {

        String str = new Gson().toJson(pendingTokens);
        return str;
    }





    public String getTokenLogForCounter(String merchantId, String counterId)
    {

        System.out.println("getTokenLogForCounter for merchantId :"+merchantId+" counterId = "+counterId.toString());

        Queue<tokenDone> tokensList = new LinkedList<>();
        if(countersDoneDetails.containsKey(Integer.valueOf(counterId)) == true)
        {
            tokensList = countersDoneDetails.get(Integer.valueOf(counterId));
        }
        return new Gson().toJson(tokensList);
    }

    public String createcountersandhelpers(String merchantId, Integer counterscount, Integer helperscount)
    {

        /*
        for test ..
         */
        System.out.println("createcounters and helpers for merchantId :"+merchantId+" " +
                "counterscount = "+counterscount.toString()+"  helperscount = "+helperscount.toString());


        List<counteremppayload> existingids =  createcounters(merchantId, counterscount, "counters");
        List<counteremppayload> existinghelperids =  createcounters(merchantId, helperscount, "helpers");

        counterandhelper obj = new counterandhelper();

        obj.counterslist = existingids;
        obj.helperslist = existinghelperids;




        return new Gson().toJson(obj);
    }


    public List<counteremppayload> createcounters(String merchantId, Integer counterscount, String tableName)
    {

        System.out.println("createcounters for merchantId :"+merchantId+" counterscount = "+counterscount.toString());


        List<counteremppayload> existingids =  MySQLAccess.dbObj.getmerchantcounterdetails(merchantId, tableName);


//        java.lang.reflect.Method method;
//        try {
//            method = MySQLAccess.dbObj.getClass().getMethod(methodName, param1.class, param2.class, ..);
//        } catch (SecurityException e) { ... }
//        catch (NoSuchMethodException e) { ... }

        Integer i = 0;
        List<counteremppayload> counteremps = new ArrayList<counteremppayload>();

       int counter = 0;

        if(tableName.equalsIgnoreCase("counters"))
        {
            counter = currentMaxCounter.get();
        }
        else
        {
            counter =  currentMaxHelper.get();
        }

            for( i=counter+1;i<=counter+counterscount;i++)
            {
                String id;
                if(tableName.equalsIgnoreCase("helpers"))
                {
                    id = merchantId+"_"+i.toString()+"_helper";
                }
                else
                {
                   id =  merchantId+"_"+i.toString();
                }
                MySQLAccess.dbObj.insertIntoMerchantAsEmp(id, "0000", merchantId, tableName);

                counteremppayload cnttemp = new counteremppayload();
                cnttemp.username = id;
                cnttemp.password = "0000";
                counteremps.add(cnttemp);

                ConcurrentLinkedQueue<tokenDone> temp = new ConcurrentLinkedQueue<>();
                countersDoneDetails.put(i,temp);

            }
        existingids.addAll(counteremps);



        if(tableName.equalsIgnoreCase("counters"))
        {
            currentMaxCounter.set(i-1);
            System.out.println("for counters .. returning "+existingids.size());
        }
        else
        {
            System.out.println("for helpers .. returning "+existingids.size());

            currentMaxHelper.set(i-1);
        }

            return existingids;

            //return new Gson().toJson(existingids);
    }




    public tokenstatus createnewtoken(String merchantId)
    {
        tokenstatus obj = new tokenstatus();

        System.out.println("createnewtoken for merchantId :"+merchantId+" currentMaxToken = "+currentMaxToken.toString());
        obj.token = currentMaxToken.incrementAndGet();
        System.out.println("createnewtoken for merchantId : after updating  currentMaxToken = "+currentMaxToken.toString());

        obj.youareat = pendingTokens.size();

        System.out.println("createnewtoken for merchantId : pendingTokens size is  = "+pendingTokens.size());

        pendingTokens.add(currentMaxToken.get());

        System.out.println("createnewtoken for merchantId : pendingTokens size is  after adding = "+pendingTokens.size());


        return obj;
    }

    public String createnewtokenWithContact(String merchantId, String contact)
    {
//        currentMaxToken++;
//        pendingTokens.add(currentMaxToken);
//
//        String str =  currentMaxToken.toString();

        tokenstatus tok =  createnewtoken(merchantId);
        if(registeredContacts.contains(contact) == false) {
            registeredContacts.add(contact);
        }
            pendingNumbers.add(contact);
            sendMsgToNumber(merchantId, contact, "your_token_is_"+tok);



        System.out.println("created new token for contact "+contact+" . Token is "+tok.token+"  waiting at "+tok.youareat);
        return new Gson().toJson(tok);
    }





    public String sendMsgToNumber(String merchantId, String contact, String msg)
    {

        //   String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
        // Integer generatedNum =   MySQLAccess.dbObj.sendMsgToNumber( merchantId,  contact,msg);
        // String msgUrl = "http://cloud.fowiz.com/api/message_http_api.php?username=gopi.komanduri&phonenumber=+918686091898&message= "+merchantName+" "+msg+"&passcode=2013";






        String myPasscode = "2013";
        String myUsername = "gopi.komanduri";
        String toPhoneNumber = contact;
        String myMessage = msg;

        HttpClient client = new DefaultHttpClient();

        String connmsg = "http://cloud.fowiz.com/api/message_http_api.php?username="+myUsername+
                "&phonenumber="+toPhoneNumber+"&message="+myMessage+"&passcode="+myPasscode;
        System.out.println("sending following message "+connmsg);

        HttpGet request = new HttpGet(connmsg);
        try {
            HttpResponse response = client.execute(request);


            BufferedReader rd = new BufferedReader
                    (new InputStreamReader(response.getEntity().getContent()));

            String line = "";
            StringBuffer myres = new StringBuffer();
            while ((line = rd.readLine()) != null) {
                myres.append(line);
            }

            return "0";

        }
        catch(Exception ex)
        {
            System.out.println("Unable to send message "+ex.getMessage());
            return "0";
        }

    }


    public String sendMsgToNumber(String merchantId, String contact, String msg, String type, String receiptid)
    {

     //   String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
     // Integer generatedNum =   MySQLAccess.dbObj.sendMsgToNumber( merchantId,  contact,msg);
     // String msgUrl = "http://cloud.fowiz.com/api/message_http_api.php?username=gopi.komanduri&phonenumber=+918686091898&message= "+merchantName+" "+msg+"&passcode=2013";


        Integer itype = Integer.valueOf(type);
        if(itype == 0)
        {
            sendMsgToNumber(merchantId, contact, msg);
        }
        else {


            MySQLAccess.dbObj.sendMsgToNumber(merchantId, contact, msg, receiptid);

            String myPasscode = "2013";
            String myUsername = "gopi.komanduri";
            String toPhoneNumber = contact;
            String myMessage = msg;

            HttpClient client = new DefaultHttpClient();

            String connmsg = "http://cloud.fowiz.com/api/message_http_api.php?username=" + myUsername +
                    "&phonenumber=" + toPhoneNumber + "&message=" + myMessage + "&passcode=" + myPasscode;
            System.out.println("sending following message " + connmsg);

            HttpGet request = new HttpGet(connmsg);
            try {
                HttpResponse response = client.execute(request);


                BufferedReader rd = new BufferedReader
                        (new InputStreamReader(response.getEntity().getContent()));

                String line = "";
                StringBuffer myres = new StringBuffer();
                while ((line = rd.readLine()) != null) {
                    myres.append(line);
                }

                return "0";

            } catch (Exception ex) {
                System.out.println("Unable to send message " + ex.getMessage());
                return "0";
            }


        }

        return "0";


    }

    public String getTokenStatus(String merchantId, Integer token, String contact, String existingStatus)
    {

        String status = getTokenStatus(merchantId, token);


        String tokenstatus = "token_status="+status;
        if(existingStatus != status) {
            sendMsgToNumber(merchantId, contact, tokenstatus);
        }

        System.out.println("for getTokenStatus . returning "+status);
        return status;
    }

    public String getTokenStatus(String merchantId, Integer token)
    {
        System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString());

        Iterator<Integer> itr = pendingTokens.iterator();

        // hasNext() returns true if the queue has more elements

        System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString()+"  currentMinPendingToken: "+currentMinPendingToken.toString());


        if(renewlistmerchantwise.containsKey(token) == true)
        {
            System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString());

            System.out.println("getTokenStatus token is there for renew  = "+token.toString());


            renewlistmerchantwise.remove(token);
            System.out.println("getTokenStatus token is there for renew .. hence returning 5  = "+token.toString());

            return "5";
        }



        Integer count = 1;


        Integer curPen = currentMinPendingToken.get();

        if(token < curPen) {

            System.out.println("getTokenStatus token is already served . hence returning -1 = "+token.toString()
                    +" .. current penidng one is "+currentMinPendingToken);

            return "-1";
        }

        Integer pos = token - curPen +1;
        System.out.println("getTokenStatus  "+token+"  to be served at position  = "+pos.toString());


//        while (itr.hasNext() && count < 4)
//        {
//            Integer nxtToken = itr.next();
//
//            System.out.println("getTokenStatus next token to be served is   = "+nxtToken.toString());
//
//
//            if(token == nxtToken)
//            {
//                System.out.println("getTokenStatus  "+token+"  to be served at position  = "+count.toString());
//                return count.toString();
//            }
//            count++;
//        }



        return pos.toString();

    }


    public String renewToken(String merchantId, Integer token)
    {

        System.out.println("renewToken  "+token+"  merchantId  = "+merchantId.toString());

        Iterator<Integer> itr = pendingTokens.iterator();


        Integer count = 1;


        renewlistmerchantwise.put(token,1);

        return "0";
    }

//    public String renewToken(String merchantId, String existigToken)
//    {
//
//    }

    public String getNextToken(String merchantId, Integer counter, Integer existingtoken, Double timeserved, String starttime, String endTime)
    {

        System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" " +
                "existingtoken ="+existingtoken.toString()+" ");

        if(existingtoken == -1) {

            Integer nextToken = 1;
            tokenDone temp = new tokenDone();
//        if(currenttokens.get(counter) != null)
//        {
//            tokenserving obj = currenttokens.remove(counter);
            temp.counter = counter;
            temp.endTime = endTime;
            temp.startTime = starttime;
            temp.timeServed = timeserved;
            temp.token = existingtoken;
            doneTokens.add(temp);
            ConcurrentLinkedQueue<tokenDone> doneDetails;

            if (countersDoneDetails.containsKey(counter) == true) {
                System.out.println("getNextToken   merchantId  = " + merchantId.toString() + " counter already opened " + counter);

                doneDetails = countersDoneDetails.remove(counter);
            } else {
                System.out.println("getNextToken   merchantId  = " + merchantId.toString() + " counter NOT yet opened " + counter);

                doneDetails = new ConcurrentLinkedQueue<>();
            }
            doneDetails.add(temp);
            countersDoneDetails.put(counter, doneDetails);

            if (currentMaxDoneToken.get() < existingtoken)
                currentMaxDoneToken.set(existingtoken);
        }

       // }

      if(pendingTokens.size() == 0)
      {
          System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" counter  "+counter+" no tokens available . returning -1 = "+currentMaxToken);
          return "-1".toString();
      }

            Integer tok = pendingTokens.element();
            pendingTokens.remove();
            currentMinPendingToken.set(pendingTokens.element());

        tokenserving obj = new tokenserving();
        obj.token = tok;
        System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" counter  "+counter+" returning token  = "+tok);
        return tok.toString();

    }


    public String getBirthdayCount(String merchantId)
    {
        String geohash = MySQLAccess.dbObj.getMerchantGeohashForId(merchantId);
        String bdaycnt = MySQLAccess.dbObj.getBirthdayCount(geohash);
        return bdaycnt;

    }


}
