package main;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.FileReader;
import java.time.LocalDateTime;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static spark.Spark.port;
import static spark.Spark.post;

public class main {

//    private static final ExecutorService threadpool =  Executors.newCachedThreadPool();
    public static void main( String[] args) {




        port(5556);
        final String[] responseJson = new String[1];
        tokenregistrationpayload emptyone = new tokenregistrationpayload();

        emptyone.merchantname = "";
        emptyone.merchanturl = "";
        emptyone.currentRunningToken = -1;
        emptyone.currentMaxToken = -1;
        String emptystr = new Gson().toJson(emptyone);
        post("/pushad", (request, response) -> {
      //      System.out.println("pushing ad  : "+request.toString());
            response.type("application/json");
            String dataReceived = request.queryParams("ad");
            System.out.println("pushing ad  : "+dataReceived);

            AdPayLoad adreceived = new Gson().fromJson(dataReceived, AdPayLoad.class);
            AdHandler adHandler = new AdHandler(adreceived);
         //   Future ft = threadpool.submit(adHandler);
           String id = adHandler.call();

            AdPayLoad temp = new AdPayLoad();

            Gson test = new Gson();
            temp.geo=id;

//            return temp;
            String str = test.toJson(temp);
//
//
          return str;
        });


        post("/pushjob", (request, response) -> {
            //      System.out.println("pushing ad  : "+request.toString());
            response.type("application/json");
            String dataReceived = request.queryParams("job");
            System.out.println("pushing job  : "+dataReceived);

            JobPayLoad jobreceived = new Gson().fromJson(dataReceived, JobPayLoad.class);
            JobHandler jobHandler = new JobHandler(jobreceived);

            System.out.println("In pushjob method. lat is "+jobreceived.lng+" lng is "+jobreceived.lng);

            //   Future ft = threadpool.submit(adHandler);
            jobHandler.insertJob(jobreceived);

            return new Gson()
                    .toJson(new adpostresponse(StatusResponse.SUCCESS));
        });





        post("/getjobsaround", (request, response) -> {
            //      System.out.println("pushing adzz  : "+request.toStringz());
            response.type("application/json");
            String dataReceived = request.queryParams("geohash");
            System.out.println("fetching jobs around  : "+dataReceived);
            JobHandler jobHandler = new JobHandler();
            //   Future ft = threadpool.submit(adHandler);
           String str = jobHandler.getJobsAround(dataReceived);

            return str;
        });


        post("/pushgroup", (request, response) -> {
            //      System.out.println("pushing ad  : "+request.toString());
            response.type("application/json");
            String dataReceived = request.queryParams("groupcreate");
            System.out.println("pushing group  : "+dataReceived);

            GroupPayLoad grpreceived = new Gson().fromJson(dataReceived, GroupPayLoad.class);
            GroupsHandler grpHandler = new GroupsHandler();
            grpHandler.CreateGroup(grpreceived);
            //   Future ft = threadpool.submit(adHandler);
            return "";
        });

        post("/getgroups", (request, response) -> {
            //      System.out.println("pushing ad  : "+request.toString());
            response.type("application/json");
            String dataReceived = request.queryParams("geohash");
            System.out.println("fetching groups  : "+dataReceived);

            GroupsHandler grpHandler = new GroupsHandler();
           String str = grpHandler.GetGroupsList(dataReceived);

            //   Future ft = threadpool.submit(adHandler);
            return str;
        });

        post("/addmsgtogroup", (request, response) -> {
            //      System.out.println("pushing ad  : "+request.toString());
            response.type("application/json");
            String dataReceived = request.queryParams("addtogroup");
            System.out.println("Add to group  : "+dataReceived);

            GroupsHandler grpHandler = new GroupsHandler();
            GroupMsgPayLoad grpreceived = new Gson().fromJson(dataReceived, GroupMsgPayLoad.class);

            String str = grpHandler.AddMsgToGroup(grpreceived);

            //   Future ft = threadpool.submit(adHandler);
            return str;
        });








        post("/ads", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("geohash");
            System.out.println("for /ads .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            AdPusher adPusher = new AdPusher();
//            Future ft = threadpool.submit(adPusher);
//            while(ft.isDone() == false);
            //   return ft.get().toString();
            responseJson[0] = adPusher.call(dataReceived).toString();

//            String str = adPusher.call(responseJson[0]).toString();
//            System.out.println("for /ads .. response sent "+str);
//            return str;
            return responseJson[0];

            //  return "Gopi";
        });

        post("/latestversionconsumer", (request, response) -> {
          System.out.println("in latestversionconsumer");
	      	response.type("application/json");

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            BufferedReader br = new BufferedReader(
                    new FileReader("src/main/java/main/latestversion.json"));

            versionclass ver = new Gson().fromJson(br, versionclass.class);

            String str = new Gson().toJson(ver);

            LocalDateTime now = LocalDateTime.now();

            String receivedOn = Util.getTimestamp(now);

            System.out.println("Time : "+receivedOn+" responded with consumer version "+str);
            return str;

        });

        post("/latestversionmerchant", (request, response) -> {
        
		System.out.println("in latestversionmerchant");
	    	response.type("application/json");

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            BufferedReader br = new BufferedReader(
                    new FileReader("src/main/java/main/latestversionmerchant.json"));

            versionclass temp = MySQLAccess.dbObj.getMerchantLatest();

            String str = new Gson().toJson(temp);

            LocalDateTime now = LocalDateTime.now();

            String receivedOn = Util.getTimestamp(now);

            System.out.println("Time : "+receivedOn+" responded with merchant version "+str);

            return str;
        });

        post("/transaction", (request, response) -> {
            response.type("application/json");
            String merchantIdReceived = request.queryParams("merchant");
            String customerIdReceived = request.queryParams("customer");
            String offer = request.queryParams("offer");

            transaction transactionObj = new transaction();
            String resVal = transactionObj.addTransaction(merchantIdReceived,customerIdReceived,offer);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
//            merchant reg = new merchant();
//            String merchantId =  reg.registerMerchant(reg);
       //     System.out.println("for /RegMerchant .. response sent "+merchantId);
            return resVal;

            //  return "Gopi";
        });

        post("/adviewed", (request, response) -> {
            response.type("application/json");
            String merchantIdReceived = request.queryParams("merchant");
            String customerIdReceived = request.queryParams("customer");
            String offer = request.queryParams("offer");

            transaction transactionObj = new transaction();
             transactionObj.updateAdViewedCount(merchantIdReceived,customerIdReceived,offer);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
//            merchant reg = new merchant();
//            String merchantId =  reg.registerMerchant(reg);
            //     System.out.println("for /RegMerchant .. response sent "+merchantId);
            return "";

            //  return "Gopi";
        });


        post("/MerchantChangePwd", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String password = request.queryParams("password");
            System.out.println("for /MerchantChangePwd .. request received  merchantid = "+merchantid+" password ="+password);


            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            return MySQLAccess.dbObj.changeMerchantPwd(merchantid, password);

            //  return "Gopi";
        });

        post("/RegMerchant", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("merchant");
            System.out.println("for /RegMerchant .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            merchant reg = new merchant();
           String merchantId =  reg.registerMerchant(dataReceived);
           System.out.println("for /RegMerchant .. response sent "+merchantId);
           return merchantId;

            //  return "Gopi";
        });

       ConcurrentHashMap<String , tokenassigner> merchantstokens = new ConcurrentHashMap<String, tokenassigner>();


        post("/login", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String password = request.queryParams("password");

            System.out.println("Time : "+Util.getCurrentDate()+" for /login .. request received merchantid "+merchantid+"  password "+password);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            merchant reg = new merchant();

            String str = reg.isValidMerchant(merchantid,password);
//            if(Integer.valueOf(str) == 1)
//            {
//                // the next code can be removed .. kept for testing..
//                String mid = merchantid.substring(0,merchantid.lastIndexOf("_"));
//
//                System.out.println("for /login ..mid is  "+mid);
//
//                tokenassigner tkobj = null;
//
//                if(merchantstokens.containsKey(mid) == true)
//                {
//                    tkobj = merchantstokens.get(mid);
//                }
//                else
//                {
//                    tkobj = new tokenassigner(mid);
//                    merchantstokens.put(mid, tkobj);
//                }
//            }

            String mid = "";

            if(Integer.valueOf(str) == 1) {
                // the next code can be removed .. kept for testing..
                 mid = merchantid.substring(0, merchantid.lastIndexOf("_"));
            }
            else if(Integer.valueOf(str) == 0) {
                mid = merchantid;
            }
            else
            {
                return str;
            }

                System.out.println("for /login ..mid is  "+mid);

                tokenassigner tkobj = null;

                if(merchantstokens.containsKey(mid) == true)
                {
                    tkobj = merchantstokens.get(mid);
                }
                else
                {
                    tkobj = new tokenassigner(mid);
                    if(Integer.valueOf(str) == 1)
                        merchantstokens.put(mid, tkobj);
                }

                System.out.println("for login "+merchantid+"  .. returning str "+str);

              return str;
        });

        post("/RegUser", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("consumerpayload");
            System.out.println("for /RegUser .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            consumer reg = new consumer();
            String consumerId =  reg.regConsumer(dataReceived);
            System.out.println("for /RegUser .. response sent "+consumerId);
            return consumerId;

            //  return "Gopi";
        });

        post("/LoginUser", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("consumerpayload");
            System.out.println("for /LoginUser .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            consumer reg = new consumer();
            String consumerId =  reg.getUserDetails(dataReceived);
            System.out.println("for /RegUser .. response sent "+consumerId);
            return consumerId;

            //  return "Gopi";
        });



        post("/pushstatus", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("status");
            System.out.println("for /pushstatus .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statusId =  obj.pushStatus(dataReceived);
            System.out.println("for /pushstatus .. response sent "+statusId);
            return statusId;

            //  return "Gopi";
        });

        post("/fetchstatuses", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("geohash");
            String lastreceivedstatusid = request.queryParams("lastreceivedstatusid");

            System.out.println("for /fetchstatus .. request received "+dataReceived+" lastreceivedstatusid "+lastreceivedstatusid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statuses =  obj.fetchallstatuses(dataReceived,Integer.valueOf(lastreceivedstatusid));
            System.out.println("for /fetchstatus .. response sent "+statuses);
            return statuses;

            //  return "Gopi";
        });

        post("/createcounters", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String count = request.queryParams("count");
            String helpers = request.queryParams("helpers");


            System.out.println("for /createcounters .. request received merchantid "+merchantid+" counters count =  "+count);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                 tkobj = merchantstokens.get(merchantid);
            }
            else
            {
                 tkobj = new tokenassigner();
                merchantstokens.put(merchantid, tkobj);
            }

            return tkobj.createcountersandhelpers(merchantid, Integer.valueOf(count), Integer.valueOf(helpers));


            //  return "Gopi";
        });


        post("/getmerchanttokendetails", (request, response) -> {

            String str = "";
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");


            System.out.println("for /getmerchanttokendetails .. request received merchantid "+merchantid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                System.out.println("for /getmerchanttokendetails ..inside if  "+merchantid);

                tkobj = merchantstokens.get(merchantid);
                str =  tkobj.getMerchantTokenDetails(merchantid);

            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");

                return emptystr;

            }

            System.out.println("getmerchanttokendetails . returning  "+str);
            return str;




            //  return "Gopi";
        });


        post("/getnexttoken", (request, response) -> {

            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String counter = request.queryParams("counter");
            String existingtoken = request.queryParams("existingtoken");
            String timeserved = request.queryParams("timeserved");
            String starttime = request.queryParams("starttime");
                    String endTime = request.queryParams("endTime");

            System.out.println("for /getnexttoken .. request received merchantid "+merchantid+" counter  =  "+counter
            +"existingtoken  = "+existingtoken+" timeserved ="+timeserved+" starttime = "+starttime
            +"endtime = "+endTime);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
                return tkobj.getNextToken(merchantid,Integer.valueOf(counter), Integer.valueOf(existingtoken),
                        Double.valueOf(timeserved), starttime, endTime);
            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");

                return emptystr;

            }
//            else
//            {
//                tkobj = new tokenassigner();
//                merchantstokens.put(merchantid,tkobj);
//            }

          //  tkobj.createTestData();



            //  return "Gopi";
        });

        post("/getmerchantdetails", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String contact = request.queryParams("merchantcontact");

            System.out.println("for /getmerchantdetails .. request received merchantcontact "+contact);



            return MySQLAccess.dbObj.getMerchantDetails(contact);


            //  return "Gopi";
        });


        post("/getmerchantcounterdetails", (request, response) -> {


            response.type("application/json");
            String contact = request.queryParams("merchantcontact");

            System.out.println("for /getmerchantcounterdetails .. request received merchantcontact "+contact);


            counterandhelper obj = new counterandhelper();

             obj.counterslist =  MySQLAccess.dbObj.getmerchantcounterdetails(contact,"counters");
            obj.helperslist =  MySQLAccess.dbObj.getmerchantcounterdetails(contact,"helpers");

           return  new Gson().toJson(obj);


            //  return "Gopi";
        });

        post("/closecounters", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            System.out.println("for /closecounters .. request received merchantid "+merchantid);

            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                merchantstokens.remove(merchantid);
            }

            return 0;
        });

        post("/pendingtokens", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            System.out.println("for /pendingtokens .. request received merchantid "+merchantid);

            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
               tkobj = merchantstokens.get(merchantid);
              return tkobj.getPendingTokens();
            }

            return 0;
        });

        post("/gettokenstatus", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String token = request.queryParams("token");

            String contact  = request.queryParams("contact");
            String existingStatus = request.queryParams("existingStatus");

            System.out.println("for /gettokenstatus .. request received merchantid "+merchantid+"" +
                    " token  =  "+token+"  contact = "+contact+"  existingstatus = "+existingStatus);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
                String str = tkobj.getTokenStatus(merchantid,Integer.valueOf(token), contact, existingStatus,-1);

                System.out.println("for gettokenstatus , returning "+str);
                return str;
            }
            else
            {
//                tkobj = new tokenassigner();
//                merchantstokens.put(merchantid,tkobj);

                System.out.println("for gettokenstatus for merchatid "+merchantid+", returning -2 ");


                return "-2";
            }




            //  return "Gopi";
        });

        post("/renewtoken", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String token = request.queryParams("token");

            System.out.println("for /renewtoken .. request received merchantid "+merchantid+" token  =  "+token);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
               // return "5";
                tkobj = merchantstokens.get(merchantid);
                return tkobj.renewToken(merchantid,Integer.valueOf(token));
            }

            return "-1";



            //  return "Gopi";
        });





        post("/getbdaycount", (request, response) -> {

            response.type("application/json");
            String merchantid = request.queryParams("merchantid");


            System.out.println("for /getbdaycount .. request received merchantid "+merchantid);


            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
                return tkobj.getBirthdayCount(merchantid);
            }


           return "-1";


            //  return "Gopi";
        });

        post("/getreceipthistory", (request, response) -> {

            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String lastid = request.queryParams("lastreceiptid");


            System.out.println("for /getreceipthistory .. request received merchantid "+merchantid+"' lastid  = '"+lastid+"'");


          //  if(merchantstokens.containsKey(merchantid) == true)
          //  {
                String str =  new contactspecificdatagatherer().getMerchantreceiptsinfo(merchantid, lastid);
           // }


            return str;


            //  return "Gopi";
        });

        post("/deregister", (request, response) -> {

            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String contact = request.queryParams("contact");
            String existingtoken = request.queryParams("existingtoken");


            System.out.println("for /deregister .. request received merchantid "+merchantid+"' contact  = '"+contact+"'  existingtoken = '"+existingtoken+"'");

            tokenassigner tkobj = null;


            if(merchantstokens.containsKey(merchantid) == false)
            {
                return "-1";
            }
            tkobj = merchantstokens.get(merchantid);

            return tkobj.deregistercustomer(contact, existingtoken);

            //  return "Gopi";
        });



        post("/", (request, response) -> {


            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String contact = request.queryParams("contact");
            String img = request.queryParams("msgurl");
            String type = request.queryParams("type");
            String billamount = request.queryParams("billamount");

            String receiptid = "";
            if(type != "0")
            {
                receiptid = request.queryParams("receiptid");
            }


            System.out.println("for /sendbilltospecificcontact .. request received merchantid "+merchantid+" " +
                    "counterid  =  "+contact+"  for type "+type+" imgurl is "+img+" bill id is "+receiptid
                    +" merchant id ="+merchantid+" bill amount ="+billamount);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
            }
            else
            {
                tkobj = new tokenassigner(merchantid);
                merchantstokens.put(merchantid, tkobj);
            }
            String str =   tkobj.sendBillToNumber(merchantid, contact,  img,  type,  receiptid, billamount);


            System.out.println("for sendbilltospecificcontact returning "+str);

            return str;


            //  return "Gopi";
        });



        post("/postoffertospecificcontact", (request, response) -> {


            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String contact = request.queryParams("contact");
            String ladtReceivedId = request.queryParams("lastid");
            String img = request.queryParams("msgurl");


            System.out.println("for /postoffertospecificcontact .. request received merchantid "+merchantid+" " +
                    "counterid  =  "+contact+"  for ladtReceivedId "+ladtReceivedId+" imgurl is "+img);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
            }
            else
            {
                tkobj = new tokenassigner(merchantid);
                merchantstokens.put(merchantid, tkobj);
            }
        //    String str =   tkobj.sendMsgToNumber(merchantid, contact,  img,  type,  receiptid, billamount);


         //   System.out.println("for posttospecificcontact returning "+str);

          //  return str;
            return null;


            //  return "Gopi";
        });


        post("/posttospecificcontact", (request, response) -> {


            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String contact = request.queryParams("contact");
            String img = request.queryParams("msgurl");
            String type = request.queryParams("type");
            String receiptid = "";
            String billamount = "0";
            if(type != "0")
            {
                receiptid = request.queryParams("receiptid");
                billamount = request.queryParams("billamount");
                System.out.println("for /posttospecificcontact .. request received merchantid "+merchantid+" " +
                        "counterid  =  "+contact+"  for type "+type+" imgurl is "+img+" receiptid is "+receiptid
                +" bill amount ="+billamount);


            }


            System.out.println("for /posttospecificcontact .. request received merchantid "+merchantid+" " +
                    "counterid  =  "+contact+"  for type "+type+" imgurl is "+img);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
            }
            else
            {
                tkobj = new tokenassigner(merchantid);
                merchantstokens.put(merchantid, tkobj);
            }
          String str =   tkobj.sendMsgToNumber(merchantid, contact,  img,  type,  receiptid, billamount);


            System.out.println("for posttospecificcontact returning "+str);

        return str;


            //  return "Gopi";
        });


        post("/getnextreceiptid", (request, response) -> {


            response.type("application/json");
            String merchantid = request.queryParams("merchantid");




            System.out.println("for /getnextreceiptid .. request received contact "+merchantid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            String str =  new contactspecificdatagatherer().getnextreceiptid(merchantid);
            return str;





            //  return "Gopi";
        });

        post("/getforspecificcontact", (request, response) -> {


            response.type("application/json");
            String contact = request.queryParams("contact");
            String id = request.queryParams("lastid");



            System.out.println("for /getforspecificcontact .. request received contact "+contact+" " +
                    "counterid  =  "+contact+"  last id is "+id+" ");

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
           String str =  new contactspecificdatagatherer().getContactSpecificData(contact, id);
           return str;





            //  return "Gopi";
        });




        post("/gettokenlogforcounter", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String counterid = request.queryParams("counterid");

            System.out.println("for /gettokenlogforcounter .. request received merchantid "+merchantid+" counterid  =  "+counterid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
                return tkobj.getTokenLogForCounter(merchantid, counterid);

            }


            return null;


            //  return "Gopi";
        });


        post("/registerfortokenthruhelper", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String consumercontact = request.queryParams("consumercontact");

            System.out.println("for /registerfortokenthruhelper .. request received merchantid "+merchantid+" consumercontact  =  "+consumercontact);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;

            if((tkobj = merchantstokens.get(merchantid)) != null)
            {
                // tkobj = new tokenassigner();
                //Gopi.. commented on 24th dec
            //    merchantstokens.put(merchantid,tkobj);
                return tkobj.createnewtokenWithContact(merchantid, consumercontact, true);
            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");
                return "-10";
            }

            //   return tkobj.createnewtoken(merchantid);


            //  return "Gopi";
        });


        post("/registerfortoken", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String consumercontact = request.queryParams("consumercontact");

            System.out.println("for /registerfortoken .. request received merchantid "+merchantid+" consumercontact  =  "+consumercontact);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
           tokenassigner tkobj = null;

            if((tkobj = merchantstokens.get(merchantid)) != null)
            {
               // tkobj = new tokenassigner();
                merchantstokens.put(merchantid,tkobj);
                return tkobj.createnewtokenWithContact(merchantid, consumercontact, false);
            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");
                return "-10";
            }

            //   return tkobj.createnewtoken(merchantid);


            //  return "Gopi";
        });




        post("/respondtostatus", (request, response) -> {

            /*
             public String updateStatusJoinee(Integer statusid, String contact, String geohash)
             */
            response.type("application/json");
            String statusId = request.queryParams("statusid");
            String contact =  request.queryParams("contact");
            String geohash =  request.queryParams("geohash");


            System.out.println("for /respondtostatus .. request received "+statusId+" :"+contact+" : "+geohash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statuses =  obj.updateStatusJoinee(Integer.valueOf(statusId),contact,geohash);
            System.out.println("for /respondtostatus .. response sent "+statuses);
            return statuses;

            //  return "Gopi";
        });



        post("/fetchjoineescount", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");
            String statusId = request.queryParams("statusid");
            String geohash =  request.queryParams("geohash");


            System.out.println("for /respondtostatus .. request received "+statusId+"  : "+geohash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statuses =  obj.fetchjoineecount(Integer.valueOf(statusId),geohash);
            System.out.println("for /respondtostatus .. response sent "+statuses);
            return statuses;

            //  return "Gopi";
        });

        post("/fetchalljoinees", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");
            String statusId = request.queryParams("statusid");
            String geohash =  request.queryParams("geohash");


            System.out.println("for /respondtostatus .. request received "+statusId+"  : "+geohash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statuses =  obj.fetchalljoinees(Integer.valueOf(statusId),geohash);
            System.out.println("for /respondtostatus .. response sent "+statuses);
            return statuses;

            //  return "Gopi";
        });









        post("/fetchacategories", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");



            System.out.println("for /fetchacategories .. request received ");

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");

                List<CategoryPayLoad> temp =  MySQLAccess.dbObj.getSupportedCategories();
                String str = new Gson().toJson(temp);

          //  System.out.println("for /fetchacategories .. response sent "+str);
            return str;

            //  return "Gopi";
        });


        post("/addsmsid", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");

            String smsid = request.queryParams("id");

            String password = request.queryParams("password");


            System.out.println("for /addsmsid .. request received . smsid "+smsid+" password "+password);

            smshandlerclass.smsids.add(smsid);

             MySQLAccess.dbObj.insertIntosmsids(smsid,password);

            return "0";

            //  return "Gopi";
        });


        post("/deactivatesmsid", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");

            String smsid = request.queryParams("id");



            System.out.println("for /deactivatesmsid .. request received . smsid "+smsid);

            smshandlerclass.deactivatesmsid(smsid);

            MySQLAccess.dbObj.deactivatesmsid(smsid);

            return "0";

            //  return "Gopi";
        });




        post("/deletesmsid", (request, response) -> {

            /*
    public String fetchjoineecount(Integer statusid, String geohash) {
             */
            response.type("application/json");

            String smsid = request.queryParams("id");


            System.out.println("for /deletesmsid .. request received . smsid "+smsid+" ");



            MySQLAccess.dbObj.deletefromsmsids(smsid);

            return "0";

            //  return "Gopi";
        });



        post("/StartNegotiate", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("negotiate");
            System.out.println("for /StartNegotiate .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
        NegotiationHandler obj = new NegotiationHandler();
        String merchantId =  obj.addNegotiation(dataReceived);
            System.out.println("for /StartNegotiate .. response sent "+merchantId);
            return merchantId;

            //  return "Gopi";
        });

        post("/fetchnegotiations", (request, response) -> {
            response.type("application/json");
            String merchantId = request.queryParams("merchantid");
            String geoHash =  request.queryParams("geohash");
            String lastId = request.queryParams("lastid");

            System.out.println("for /Negotiate .. request received "+merchantId+"  geohash is "+geoHash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            NegotiationHandler obj = new NegotiationHandler();
            String res =  obj.fetchNegotiations(merchantId, geoHash, Integer.valueOf(lastId));
            System.out.println("for /fetchnegotiations .. response sent "+res);
            return res;

            //  return "Gopi";
        });

        post("/negotiationresponse", (request, response) -> {
            response.type("application/json");
            String merchantId = request.queryParams("merchantid");
            String geoHash =  request.queryParams("geohash");
            String negotiationid = request.queryParams("negotiationid");
            String payload = request.queryParams("negotiationresponsepayload");

            System.out.println("for /negotiationresponse .. request received "+merchantId+"  geohash is "+geoHash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            NegotiationHandler obj = new NegotiationHandler();
            String res =  obj.NegotiationsResponse(merchantId, geoHash, Integer.valueOf(negotiationid), payload);
            System.out.println("for /negotiationresponse .. response sent "+res);
            return res;

            //  return "Gopi";
        });

        post("/anypendingtokens", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");



            System.out.println("for /anypendingtokens .. request received "+merchantid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            String res = "-0";
            tokenassigner tkobj = null;

            if((tkobj = merchantstokens.get(merchantid)) != null)
            {
                // tkobj = new tokenassigner();
                res = tkobj.anypendingtokens();
            }
            System.out.println("for  /anypendingtokens .. response sent "+res);
            return res;

            //  return "Gopi";
        });



        post("/currenttokenforallcounterswithmerchantid", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");



            System.out.println("for /currenttokenforcounterswithmerchantid .. request received "+merchantid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            String res = "-12";
            tokenassigner tkobj = null;

            if((tkobj = merchantstokens.get(merchantid)) != null)
            {
                // tkobj = new tokenassigner();
                res = tkobj.currentTokenForAllCounters();
            }
            System.out.println("for  /currenttokenforcounterswithmerchantid .. response sent "+res);
            return res;

            //  return "Gopi";
        });

        post("/currenttokenforcounterswithmerchantid", (request, response) -> {
            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String counter = request.queryParams("counters");




            System.out.println("for /currenttokenforcounterswithmerchantid .. request received "+merchantid+"  counter is "+counter);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            String res = "-12";
            tokenassigner tkobj = null;

            if((tkobj = merchantstokens.get(merchantid)) != null)
            {
                // tkobj = new tokenassigner();
                res = tkobj.currentTokenForCounters(counter);
            }
            System.out.println("for  /currenttokenforcounterswithmerchantid .. response sent "+res);
            return res;

            //  return "Gopi";
        });

        post("/fetchnegotiationresponse", (request, response) -> {
            response.type("application/json");
            String merchantId = request.queryParams("customercontact");
            String geoHash =  request.queryParams("geohashlist");
            String lastId = request.queryParams("lastidlist");

            System.out.println("for /fetchnegotiationresponse .. request received "+merchantId+"  geohash is "+geoHash+" ids "+lastId);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            NegotiationHandler obj = new NegotiationHandler();
            String res =  obj.fetchNegotiationResponses(merchantId,lastId, geoHash);
            System.out.println("for /fetchnegotiationresponse .. response sent "+res);
            return res;

            //  return "Gopi";
        });










       /* MySQLAccess dao = new MySQLAccess();
        try {
            dao.readDataBase();
        } catch (Exception e) {
            e.printStackTrace();
        }*/

    }
}
