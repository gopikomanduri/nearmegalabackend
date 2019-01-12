package main;

import com.google.common.util.concurrent.AtomicDouble;
import com.google.gson.Gson;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.time.LocalDateTime;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class tokenassigner {


//    public void TestData() {
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



    AtomicDouble avgTime = new AtomicDouble(0);

    AtomicDouble totalTime = new AtomicDouble(0);

    Map<Integer, String> currentsmstokens = new TreeMap<>();


    ConcurrentLinkedQueue<Integer> pendingTokens = new ConcurrentLinkedQueue<>();
    ConcurrentLinkedQueue<String> pendingNumbers = new ConcurrentLinkedQueue<>();
    ConcurrentLinkedQueue<tokenDone> doneTokens = new ConcurrentLinkedQueue<>();
    ConcurrentHashMap<Integer,String> runningTokens = new ConcurrentHashMap<>();

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
    Set<Integer> deregisterset = new HashSet<>();
    smshandlerclass smsobj = new smshandlerclass();
    Integer smsindex = 0;
    String merchantName = "";


    public  tokenassigner(String merchantId)
    {
         merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
        String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
        merDetails.merchantname = merchantName;
        merDetails.merchanturl = dpimg;
    }

    public synchronized String deregistercustomer(String contact, String existingtoken) {

        Integer iexistingToken = Integer.valueOf(existingtoken);
//        if(currentMinPendingToken.get() > iexistingToken)
//        {
//            return "-2";
//        }
//        int x = 0;
//        for(int i=0;i<pendingTokens.size();i++)
//        {
//
//        }

        deregisterset.add(iexistingToken);
        return "0";

    }


    public synchronized String getMerchantTokenDetails(String merchantId)
    {

        System.out.println("in tokenassigner getMerchantTokenDetails for merchantId :"+merchantId);

        if(merDetails.merchantname.length() == 0)
        {
            String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
            String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
            merDetails.merchantname = merchantName;
            merDetails.merchanturl = dpimg;
        }

        if(currentMinPendingToken.get() > 0)
            merDetails.currentRunningToken = currentMinPendingToken.get();
        else
            merDetails.currentRunningToken = 0;
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

    public synchronized String getPendingTokens() {

        String str = "";

        str = new Gson().toJson(pendingTokens);

        if(pendingTokens.size() > 0) {
            str = new Gson().toJson(pendingTokens);
            System.out.println("IN getPendingtokens . pendingtoen size is > 0 . returning "+str);

        }
        else
        {
            System.out.println("IN getPendingtokens . pendingtoen size is 0 . returning "+str);

        }
        return str;
    }





    public synchronized String getTokenLogForCounter(String merchantId, String counterId)
    {

        System.out.println("getTokenLogForCounter for merchantId :"+merchantId+" counterId = "+counterId.toString());

        Queue<tokenDone> tokensList = new LinkedList<>();
        if(countersDoneDetails.containsKey(Integer.valueOf(counterId)) == true)
        {
            tokensList = countersDoneDetails.get(Integer.valueOf(counterId));
        }
        return new Gson().toJson(tokensList);
    }

    public synchronized String createcountersandhelpers(String merchantId, Integer counterscount, Integer helperscount)
    {

        /*
        for test ..
         */
        Integer viewerscount = 1;
        System.out.println("createcounters and helpers for merchantId :"+merchantId+" " +
                "counterscount = "+counterscount.toString()+"  helperscount = "+helperscount.toString());


        List<counteremppayload> existingids =  createcounters(merchantId, counterscount, "counters");
        List<counteremppayload> existinghelperids =  createcounters(merchantId, helperscount, "helpers");
        createcounters(merchantId, viewerscount, "viewers");

        counterandhelper obj = new counterandhelper();

        obj.counterslist = existingids;
        obj.helperslist = existinghelperids;
       // obj.viewerlist = existingviewerids;




        return new Gson().toJson(obj);
    }




    public synchronized List<counteremppayload> createcounters(String merchantId, Integer counterscount, String tableName)
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

       if(tableName.equalsIgnoreCase("viewers"))
       {
           counter = 0;
       }

       else if(tableName.equalsIgnoreCase("counters"))
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

                if(tableName.equalsIgnoreCase("viewers"))
                {
                    id = merchantId+"_"+i.toString()+"_viewers";
                }
               else if(tableName.equalsIgnoreCase("helpers"))
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




    public synchronized tokenstatus createnewtoken(String merchantId)
    {
        tokenstatus obj = new tokenstatus();

        System.out.println("createnewtoken for merchantId :"+merchantId+" before increment currentMaxToken = "+currentMaxToken.toString());
        obj.token = currentMaxToken.incrementAndGet();
        System.out.println("createnewtoken for merchantId : after updating  currentMaxToken = "+currentMaxToken.toString());

        pendingTokens.add(currentMaxToken.get());

        if(currentMinPendingToken.get() == 0)
        {
            currentMinPendingToken.set(obj.token);
        }


        obj.youareat = pendingTokens.size();


        System.out.println("createnewtoken for merchantId : pendingTokens size is  after adding = "+pendingTokens.size());


        return obj;
    }

    public synchronized String createnewtokenWithContact(String merchantId, String contact, boolean helper)
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

        CompletableFuture<Void> future = CompletableFuture.runAsync(() -> {
            // Simulate a long-running Job
            try {
                sendMsgToNumber(merchantId, contact, "your_token_is_"+tok.token+"_you_are_at_"+tok.youareat);

            } catch (Exception e) {
                System.out.println("exception in future.. in creating new token "+e.getMessage());
            }
            System.out.println("I'll run in a separate thread than the main thread.");
        });


            if(helper == true)
            {
                currentsmstokens.put(tok.token,contact);
            }

        System.out.println("created new token for contact "+contact+" . Token is "+tok.token+"  waiting at "+tok.youareat);
        return new Gson().toJson(tok);
    }





    public synchronized String sendMsgToNumber(String merchantId, String contact, String msg)
    {

        //   String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
        // Integer generatedNum =   MySQLAccess.dbObj.sendMsgToNumber( merchantId,  contact,msg);
        // String msgUrl = "http://cloud.fowiz.com/api/message_http_api.php?username=gopi.komanduri&phonenumber=+918686091898&message= "+merchantName+" "+msg+"&passcode=2013";



        if(Util.isNumeric(contact) == false)
            return "1";



        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            System.out.println(" exception in sendmsgtonumber thread "+e.getMessage());
            e.printStackTrace();
        }


        Integer success = 0;
        do {


            String smsid = smsobj.getnextsmsid(smsindex);
            ++smsindex;

            String myPasscode = "2013";
            String myUsername = smsid;
            String toPhoneNumber = contact;
            if(merDetails.merchantname.length() == 0)
            {
                String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
                String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
                merDetails.merchantname = merchantName;
                merDetails.merchanturl = dpimg;
            }
            String myMessage = merDetails.merchantname + "_" + msg;

            HttpClient client = new DefaultHttpClient();

            String connmsg = "http://cloud.fowiz.com/api/message_http_api.php?username=" + myUsername +
                    "&phonenumber=" + toPhoneNumber + "&message=" + myMessage + "&passcode=" + myPasscode;
            System.out.println("after waiting for 1 sec .. sending following message " + connmsg);

            HttpGet request = new HttpGet(connmsg);
            try {
                HttpResponse response = client.execute(request);


                BufferedReader rd = new BufferedReader
                        (new InputStreamReader(response.getEntity().getContent()));

                String line = "";
                //      StringBuffer myres = new StringBuffer();
                while ((line = rd.readLine()) != null) {

                    if (line.contains("\"success\":1") == true) {
                        success = 1;
                    }
                    //   myres.append(line);
                }


            } catch (Exception ex) {
                success = 0;
                System.out.println("Unable to send message " + ex.getMessage());
            }
        }while(success == 0);

        return "1";

    }




    public synchronized String sendMsgToNumber(String merchantId, String contact, String msg, String type, String receiptid)
    {

        String ret = "0";


        if(Util.isNumeric(contact) == false)
            return ret;



        //   String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
     // Integer generatedNum =   MySQLAccess.dbObj.sendMsgToNumber( merchantId,  contact,msg);
     // String msgUrl = "http://cloud.fowiz.com/api/message_http_api.php?username=gopi.komanduri&phonenumber=+918686091898&message= "+merchantName+" "+msg+"&passcode=2013";

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            System.out.println("IN sendmsgtoNumber second.. exception "+e.getMessage());
            e.printStackTrace();
        }

        Integer itype = Integer.valueOf(type);
        if(itype == 0)
        {
            sendMsgToNumber(merchantId, contact, msg);
        }
        else {


            MySQLAccess.dbObj.sendMsgToNumber(merchantId, contact, msg, receiptid);

            String myPasscode = "2013";
            String smsid = smsobj.getnextsmsid(smsindex);
            ++smsindex;
            String myUsername = smsid;
            String toPhoneNumber = contact;

            if(merDetails.merchantname.length() == 0)
            {
                String merchantName = MySQLAccess.dbObj.getMerchantNameForId(merchantId);
                String dpimg = MySQLAccess.dbObj.getMerchantDpForId(merchantId);
                merDetails.merchantname = merchantName;
                merDetails.merchanturl = dpimg;
            }
            String myMessage = merDetails.merchantname+"_"+msg;

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
              //  StringBuffer myres = new StringBuffer();
                while ((line = rd.readLine()) != null) {
                    if(line.contains("\"success\":1"))
                    {
                        ret = "1";
                    }
                  //  myres.append(line);
                }

                return ret;

            } catch (Exception ex) {
                System.out.println("Unable to send message " + ex.getMessage());
                return "0";
            }


        }

        return ret;


    }

    public void invokeFromGetTokenStatus(String merchantId, Integer token, String contact, String existingStatus, String tokenstatus, String status)
    {
        if (existingStatus.equalsIgnoreCase(status) == false) {

            CompletableFuture<Void> future1 = CompletableFuture.runAsync(() -> {
                // Simulate a long-running Job
                try {
                    if(currentsmstokens.containsKey(token) == true)
                    sendMsgToNumber(merchantId, contact, tokenstatus);

                } catch (Exception e) {
                    System.out.println("exception in future..in get topkemn status " + e.getMessage());
                }
                System.out.println("I'll run in a separate thread than the main thread.");
            });

        }
    }


    public synchronized String getTokenStatus(String merchantId, Integer token, String contact, String existingStatus, Integer counter)
    {

        String status = getTokenStatus(merchantId, token);

        Integer intStatus =  Integer.valueOf(status);
        String tokenstatus = "token_status=" + status;

        if(intStatus == 0)
        {
            tokenstatus = "Please_proceed_to_the_counter";
                    if(counter != -1)
                    {
                        tokenstatus += "_"+counter.toString();
                    }
            invokeFromGetTokenStatus(merchantId, token, contact, existingStatus, tokenstatus, status);
        }

        else if(intStatus < 6)
        {
            invokeFromGetTokenStatus(merchantId, token, contact, existingStatus, tokenstatus, status);
        }
        else if(intStatus < 13 && intStatus%2 ==0)
        {
            invokeFromGetTokenStatus(merchantId, token, contact, existingStatus, tokenstatus, status);
        }
        else if(intStatus < 26 && intStatus%5 == 0)
        {
            invokeFromGetTokenStatus(merchantId, token, contact, existingStatus, tokenstatus, status);
        }
        else if(intStatus%10 == 0)
        {
            invokeFromGetTokenStatus(merchantId, token, contact, existingStatus, tokenstatus, status);
        }

    //    if(((intStatus > 25 ) && (intStatus %10 == 0)) ||  ((intStatus > 12 ) && (intStatus %5 == 0)) || ((intStatus > 5 ) && (intStatus %2 == 0)) || (intStatus > 0)){
       // if((intStatus < 5 ) || (intStatus %2 != 0)) {




        System.out.println("for getTokenStatus . returning "+status);
        return status;
    }

    public synchronized String getTokenStatus(String merchantId, Integer token)
    {
        System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString());


        // hasNext() returns true if the queue has more elements

        System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString()+"  currentMinPendingToken: "+currentMinPendingToken.toString());


        if(renewlistmerchantwise.containsKey(token) == true)
        {
            System.out.println("getTokenStatus for merchantId : merchantId = "+merchantId.toString());

            System.out.println("getTokenStatus token is there for renew  = "+token.toString());


            renewlistmerchantwise.remove(token);
            System.out.println("getTokenStatus token is there for renew .. hence returning 5  = "+token.toString());

            return "-5";
        }



        Integer count = 1;


        Integer curPen = currentMinPendingToken.get();

        if(token < curPen) {
            System.out.println("current pending is "+curPen+" And received token is "+token);

            System.out.println("getTokenStatus token is already served r currently serving . hence returning -1 = "+token.toString()
                    +" .. current penidng one is "+currentMinPendingToken);

            return "-1";
        }

      //  Integer pos = token - curPen +1;
        Integer pos = 0;
        if(pendingTokens.size() > 0)
            pos = token - pendingTokens.element() +1;


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


    public synchronized String renewToken(String merchantId, Integer token)
    {

        System.out.println("renewToken  "+token+"  merchantId  = "+merchantId.toString());

        Iterator<Integer> itr = pendingTokens.iterator();
        while(itr.hasNext())
        {
            if(itr.next() == token)
            {
                itr.remove();
                break;
            }
        }


        Integer count = 1;


        renewlistmerchantwise.put(token,1);

        return "0";
    }

//    public String renewToken(String merchantId, String existigToken)F
//    {
//
//    }

    public synchronized String getNextToken(String merchantId, Integer counter, Integer existingtoken, Double timeserved, String starttime, String endTime)
    {

        LocalDateTime now1 = LocalDateTime.now();

        System.out.println("start time "+Util.getTimestamp(now1));
        System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" " +
                "existingtoken ="+existingtoken.toString()+" ");

        if(existingtoken != 0) {

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
            totalTime.getAndAdd(temp.timeServed);
            avgTime.set(totalTime.get()/doneTokens.size());

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


      System.out.println("The followoing are penidng tokens");

//        for(Integer u : pendingTokens){
//           System.out.println("token is :"+u.toString());
//        }
        System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" counter  "+counter+"pendingTokens size is  = "+pendingTokens.size());

        Integer tok = -1;

     //   do {

             tok = pendingTokens.element();

            pendingTokens.remove();
            if(pendingTokens.size() > 0)
                currentMinPendingToken.set(pendingTokens.element());

//        for(Map.Entry<Integer,String> entry : currentsmstokens.entrySet()) {
//            Integer key = entry.getKey();
//            String value = entry.getValue();
//
//            getTokenStatus(merchantId,key, value, "-1");
//
//            System.out.println(key + " => " + value);
//        }

        System.out.println("smstoken count is "+currentsmstokens.size());

            if(currentsmstokens.containsKey(tok) == true) {


                Integer finalTok = tok;
                CompletableFuture<Void> future1 = CompletableFuture.runAsync(() -> {
                    // Simulate a long-running Job
                    try {
                        String msg = "Please_proceed_to_counter_"+counter.toString();
                        sendMsgToNumber(merchantId, currentsmstokens.get(finalTok),msg);

                    } catch (Exception e) {
                        System.out.println("exception in future..in getnexttoken when number is matched "+e.getMessage());
                    }
                    currentsmstokens.remove(finalTok);

                    System.out.println("I'll run in a separate thread than the main thread.");
                });


          //      getTokenStatus(merchantId,tok, currentsmstokens.get(tok), "-1");

            }
    //    }while(deregisterset.contains(tok) == true);

   //     deregisterset.remove(tok);

        tokenserving obj = new tokenserving();
        obj.token = tok;
        System.out.println("getNextToken   merchantId  = "+merchantId.toString()+" counter  "+counter+" returning token  = "+tok);

//        for(Map.Entry<Integer,String> entry : currentsmstokens.entrySet()) {
//            Integer key = entry.getKey();
//            String value = entry.getValue();
//
//            getTokenStatus(merchantId,key, value, "-1");
//
//            System.out.println(key + " => " + value);
//        }

        // Using Lambda Expression
            // Simulate a long-running Job
            try {
        for(Map.Entry<Integer,String> entry : currentsmstokens.entrySet()) {
            Integer key = entry.getKey();
            String value = entry.getValue();

            CompletableFuture<Void> future = CompletableFuture.runAsync(() -> {
                try {


                    getTokenStatus(merchantId, key, value, "-1", counter);
                }
                catch(Exception ex)
                {
                    System.out.println("exception in future.."+ex.getMessage());
                }
                    });

            System.out.println(key + " => " + value);
        }
           } catch (Exception e) {
                System.out.println("exception in for loop.."+e.getMessage());
            }
            System.out.println("I'll run in a separate thread than the main thread.");

        LocalDateTime now2 = LocalDateTime.now();

        System.out.println("end time "+Util.getTimestamp(now2));


        runningTokens.put(counter,tok.toString());

        return tok.toString();

    }

    public synchronized String currentTokenForCounter(Integer counter)
    {

        System.out.println("In currentTokenForCounter "+counter);

        if(runningTokens.contains(counter))
            return runningTokens.get(counter);
            else
                return "-12";

    }

    public synchronized String currentTokenForCounters(String counter)
    {

        System.out.println("In currentTokenForCounters "+counter);

        Type type1 = new ArrayList<String>().getClass();
        List<CounterData> countertokens = new ArrayList<CounterData>();

        List<String> counters = new Gson().fromJson(counter, type1);


        for(int i=0;i<counters.size();++i)
        {
            Integer counteval = Integer.valueOf(counters.get(i));
            CounterData temp = new CounterData();
            temp.CounterId = counters.get(i);
            temp.tokenId = currentTokenForCounter(counteval);

            System.out.println("In currentTokenForCounter. for counter "+counteval+"  tokenId "+temp.tokenId);

            countertokens.add(temp);

        }
       String str = new Gson().toJson(countertokens);

        return str;

    }

    public synchronized String currentTokenForAllCounters()
    {

        System.out.println("In currentTokenForAllCounters ");


        String str = new Gson().toJson(runningTokens);

        return str;

    }

    public synchronized String anypendingtokens()
    {
       if(pendingTokens.size() > 0)
           return "1";
       return "0";

    }



    public String getBirthdayCount(String merchantId)
    {
        String geohash = MySQLAccess.dbObj.getMerchantGeohashForId(merchantId);
        String bdaycnt = MySQLAccess.dbObj.getBirthdayCount(geohash);
        return bdaycnt;

    }


}
