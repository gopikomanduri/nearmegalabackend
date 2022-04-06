package main;

import com.google.gson.Gson;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import static spark.Spark.*;

public class main {
//    private static final ExecutorService threadpool =  Executors.newCachedThreadPool();
    public static void main( String[] args) {


            port(5556);
            CorsFilter corsFilter =new CorsFilter();
            corsFilter.apply();
            options("/*",
                (request, response) -> {

                    String accessControlRequestHeaders = request
                            .headers("Access-Control-Request-Headers");
                    if (accessControlRequestHeaders != null) {
                        response.header("Access-Control-Allow-Headers",
                                accessControlRequestHeaders);
                    }

                    String accessControlRequestMethod = request
                            .headers("Access-Control-Request-Method");
                    if (accessControlRequestMethod != null) {
                        response.header("Access-Control-Allow-Methods",
                                accessControlRequestMethod);
                    }

                    return "OK";
                });
        final FirebaseMessagingClient client =new FirebaseMessagingClient();
        try {
//            client = new FirebaseMessagingClient();
            client.setAPIKey("AAAAJVsTN2U:APA91bFaQC_HMm4r6-oSXNXddODyjE89YbZmrCeZm7dRJ7hKMfDTh073GnUkjoLz2YfEMJRPxcFH8xaOJsyO5ILUmoHwSsXXiiHFHyUg5vDhSB18XK7pZSWT15PPE2SREr1yInn7bqF9");
//            // Data model for sending messages to specific entity(mobile devices,browser front-end apps)s
//            EntityMessage msg = new EntityMessage();
//
//            // Set registration token that can be retrieved
//            // from Android entity(mobile devices,browser front-end apps) when calling
//            // FirebaseInstanceId.getInstance().getToken();
//            msg.addRegistrationToken("eXo49MLuJGE:APA91bEE4zMCQ_lnNst9Fw-cBAfgiyYsdxHdQ7TW1w5JDOZya9holq1KQWC3-nZ_7SRpGqeqC_ZgtvaPjj9QTMCQqsmoUiH-jMdzU_F14b8Vcic20Vztk3RChoE66EzskArJzVKj1_wu");
//            msg.addRegistrationToken("fEXJFJ7kysc:APA91bEaEh-Dhtv9vQIueCPs7tjeJLMFV7_4cZUL2lDyMJPUlZdbRSqDkJULfLvMOP6nxIjw0RMCFEknPhFYqtsI66JJb3anuPW--QMpi5R8EekamYQSmMUluTGcndfGmF7SZsMJl_O7");
//            // Add key value pair into payload
//            msg.putStringData("title", "tetete");
//            msg.putStringData("body", "myValue2");
//
//            // push
//            FcmResponse res = client.pushToEntities(msg);

//            System.out.println(res);
        }catch (Exception ex){

        }

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
            String eventID = "-1";
            try {
                eventID = request.queryParams("eventID");
            }
            catch (Exception ex)
            {

            }
            System.out.println("pushing ad  : "+dataReceived);

            AdPayLoad adreceived = new Gson().fromJson(dataReceived, AdPayLoad.class);
            AdHandler adHandler = new AdHandler(adreceived);
         //   Future ft = threadpool.submit(aAdHandlerdHandler);
           String id = adHandler.call();
            AdPayLoad temp = new AdPayLoad();
            Gson test = new Gson();
            temp.geo=id;
            String str = test.toJson(temp);
            try {
                System.out.println("ad id is  : "+id);
                System.out.println(" event id is  : "+eventID);
                MySQLAccess.dbObj.insertMerchantAdEvent(Integer.parseInt(id), adreceived.merchantid, Integer.parseInt(eventID));
            }
            catch (Exception ex)
            {
                System.out.println("unable to register ad with event  : "+dataReceived);
            }
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
        post("/getjobsaroundbasedoncategory", (request, response) -> {
            //      System.out.println("pushing adzz  : "+request.toStringz());
            response.type("application/json");
            String geohashRecived = request.queryParams("geohash");
            String CatId= request.queryParams("categoryid");
            String SubCatId= request.queryParams("subcategoryid");
            String lastJobID= request.queryParams("lastjobid");
            System.out.println("fetching jobs around  : "+geohashRecived);
            JobHandler jobHandler = new JobHandler();
            //   Future ft = threadpool.submit(adHandler);
            String str = jobHandler.getJobsAroundBasedOnCategory(CatId,SubCatId,lastJobID,geohashRecived);

            return str;
        });
        post("/postjobsaroundbasedoncategory", (request, response) -> {
            //      System.out.println("pushing adzz  : "+request.toStringz());
            response.type("application/json");

//            JSONObject jsonObj = new JSONObject(request.body());

            String geohashRecived = request.queryParams("geohash");
            String CatId= request.queryParams("categoryid");
            String SubCatId= request.queryParams("subcategoryids");//make it array of ids
            //get job details
            System.out.println("fetching jobs around  : "+geohashRecived);
            JobHandler jobHandler = new JobHandler();
            //   Future ft = threadpool.submit(adHandler);
            String str = jobHandler.postJobsAroundBasedOnCategory(CatId,SubCatId,geohashRecived);

            return str;
        });
        post("/getadsaroundbasedoncategory", (request, response) -> {
            //      System.out.println("pushing adzz  : "+request.toStringz());
            response.type("application/json");

//            JSONObject jsonObj = new JSONObject(request.body());

            String geohashRecived = request.queryParams("geohash");
            String CatId= request.queryParams("categoryid");
            //get job details
            System.out.println("fetching jobs around  : "+geohashRecived);
            //AdPayLoad adreceived = new Gson().fromJson(dataReceived, AdPayLoad.class);
            AdHandler adHandler = new AdHandler(null);
            //   Future ft = threadpool.submit(adHandler);
            String str = adHandler.getAdsAroundBasedonCategory("-1",geohashRecived,CatId);

            return str;
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
        post("/getadsaround", (request, response) -> {
            //      System.out.println("pushing adzz  : "+request.toStringz());
            response.type("application/json");
            String geohash = request.queryParams("geohash");
            String lastAdID = request.queryParams("lastAdID");
            String merID = request.queryParams("merchantID");
            System.out.println("fetching ads around  geohash is: "+geohash+" merchant ID is : "+merID);
            AdHandler adHandler = new AdHandler(null);

            //   Future ft = threadpool.submit(adHandler);
            String str = adHandler.getAdsAround(lastAdID,geohash,merID);

            return str;
        });
        post("/notifyVaccineAvailablity", (request, response) -> {

            response.type("application/json");
            String userID = request.queryParams("userID");
            String pincode = request.queryParams("pincode");
            System.out.println("requested vaccineAvailablity for UserId: "+userID+ " at pincode:"+pincode);

            int uID=-1;
            try {
                uID =Integer.parseInt(userID);
            }
            catch (NumberFormatException nex)
            {
                return "-1";
            }
            String regval =MySQLAccess.dbObj.insertIntovaccineRegistartions(uID,pincode);

            if(!regval.equals("-1")) {
                System.out.println("registered successfully and notifying same");
                PushNotificationBasedonUserID(client, uID, regval, "Your registration is successful!");
            }
            return "";
        });
        post("/notifyVaccineAvailablitytoUser", (request, response) -> {

            response.type("application/json");
//            String userID = request.queryParams("userID");
//            String pincode = request.queryParams("pincode");
            System.out.println("requested vaccineAvailablity : "+request.toString());
//            int uID=-1;
//            try {
//                uID =Integer.parseInt(userID);
//            }
//            catch (NumberFormatException nex)
//            {
//                return "-1";
//            }
            String regval ="-1";
            List<VaccineRegistration> vaccineRegistartions =MySQLAccess.dbObj.getvaccineRegistartions();
//            VaccineRegistration vc = new VaccineRegistration();
//            vc.consumerID=105;
//            vc.pincode="500090";
//            vaccineRegistartions.add(vc);
            for(int i=0;i<=vaccineRegistartions.size();i++) {
                //vaccineRegistartions.get(i).pincode;
                System.out.println("checking for : "+vaccineRegistartions.get(i).consumerID);
                LocalDateTime now = LocalDateTime.now();

                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");
                LocalDateTime now1 = LocalDateTime.now();
                String  strDate = dtf.format(now1);
                String vaccineAPI = "https://cdn-api.co-vin.in/api/v2/appointment/sessions/calendarByPin?pincode="+vaccineRegistartions.
                get(i).pincode+"&date="+strDate;//+vad+"-"+vam+"-"+vay;// 01-06-2021
                URL url = new URL(vaccineAPI);
                System.out.println("Calling Vaccine API "+vaccineAPI);
// Open a connection(?) on the URL(??) and cast the response(???)
                try {
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                    connection.setRequestProperty("User-Agent", "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20100101 Firefox/10.0");
//                    connection.setRequestProperty("User-Agent", "Mozilla");
                    connection.setReadTimeout(5000);
                    connection.setConnectTimeout(5000);
// Now it's "open", we can set the request method, headers etc.
                    connection.setRequestProperty("accept", "application/json");

// This line makes the request
                    InputStream responseStream = connection.getInputStream();
                    System.out.println(responseStream.toString());
                    BufferedReader rd = new BufferedReader(new InputStreamReader(responseStream));
                    StringBuilder vaccresponse = new StringBuilder(); // or StringBuffer if Java version 5+
                    String line;
                    while ((line = rd.readLine()) != null) {
                        vaccresponse.append(line);
                        vaccresponse.append('\r');
                    }
                    rd.close();
                    System.out.println("recived Vaccine API response "+vaccresponse);
                    if (vaccresponse.toString().contains("1\":0") || vaccresponse.toString().contains("2\":0")) {
                        regval = "1";
                        System.out.println("found vaccine slot!");
                    }
                }
                catch (Exception ex)
                {
System.out.println(ex.getMessage());
                }

                if (!regval.equals("-1")) {
                    System.out.println("registered successfully and notifying same");
                    PushNotificationBasedonUserID(client, vaccineRegistartions.get(i).consumerID, regval, "We found vaccine slots available around your area!");
                }
            }
            return "-1";
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
            String dataReceived = request.body();//request.queryParams("geohash");

            System.out.println("for /ads .. requestRegUser received "+dataReceived);

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
        post("/recordPaymentTransaction", (request, response) -> {
            response.type("application/json");
            String adId = request.queryParams("adID");//statusID
            String merchantIdReceived = request.queryParams("merchantID_geohash");//userid of perosn who posted status
            String customerIdReceived = request.queryParams("customerID");//joinee userID
            String timestamp = request.queryParams("TimeStamp");
            System.out.println("recevd adid: "+ adId+ " mer: "+merchantIdReceived +" cusID : "+customerIdReceived );
            int advID=Integer.parseInt(adId);

            MySQLAccess.dbObj.insertTransaction(customerIdReceived,advID,merchantIdReceived, Timestamp.valueOf(timestamp),false);

            return 1;//recordID against transaction

            //  return "Gopi";
        });
        post("/getMyPaymentRecords", (request, response) -> {
            response.type("application/json");

            String customerIdReceived = request.queryParams("customerID");
            String records = MySQLAccess.dbObj.getTransactions(customerIdReceived);
            System.out.println(records);
            return records;
        });
        post("/PaymentTransactionStatus", (request, response) -> {
            response.type("application/json");
            String recordID = request.queryParams("recordID");
            String customerIdReceived =request.queryParams("customerID");
            int rcID= Integer.parseInt(recordID);
            boolean paymentstatus =MySQLAccess.dbObj.getTransactionStatus(customerIdReceived,rcID);
            if(paymentstatus) {
                PushNotificationBasedonUserID(client, Integer.valueOf(customerIdReceived), "Payment Update", "Your Payment is success!");
            }
            return paymentstatus;

            //return true;

        });
        post("/confirmPaymentandacceptdeal", (request, response) -> {
            response.type("application/json");
            String recordID = request.queryParams("recordID");
            String customerIdReceived =request.queryParams("customerID");
            int rcID= Integer.parseInt(recordID);
            boolean paymentstatus =MySQLAccess.dbObj.getTransactionStatus(customerIdReceived,rcID);
            if(paymentstatus) {
                PushNotificationBasedonUserID(client, Integer.valueOf(customerIdReceived), "Payment Update", "Your Payment is success!");
            }
            return paymentstatus;
            //return true;

        });
        post("/adswithevents", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.body();//request.queryParams("geohash");

            System.out.println("for /ads .. requestRegUser received "+dataReceived);

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

        class adshistoryPayload{
    String merchantid;
    LastReceivedAdStruct[] geohash;
}
        post("/adshistory", (request, response) -> {
            response.type("application/json");
//            request.body().
            responseJson[0]="";
            try {
                String merchantid = request.queryParams("merchantid");
                String dataReceived = request.queryParams("geohash");
                System.out.println("for /ads .. requestRegUser received "+dataReceived);


                //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
                AdPusher adPusher = new AdPusher();
//            Future ft = threadpool.submit(adPusher);
//            while(ft.isDone() == false);
                //   return ft.get().toString();
                responseJson[0] = adPusher.call(dataReceived, merchantid).toString();

//            String str = adPusher.call(responseJson[0]).toString();
//            System.out.println("for /ads .. response sent "+str);
//            return str;
            }
            catch (Exception ex)
            {

            }
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
        post("/getMyCategories", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");
            String merID = request.queryParams("merchantID");
            System.out.println("fetching cats  merchant ID is : "+merID);
            merchant reg = new merchant();
            String str =reg.getMerchantCategory(merID);
            return str;
        });

        post("/getMerchantEvents", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");
            String merID = request.queryParams("merchantID");
            System.out.println("fetching events  merchant ID is : "+merID);
            String str =MySQLAccess.dbObj.getMerchantEvents(merID);
            return str;
        });

        post("/getMerchantEventCriterias", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");

            String str =MySQLAccess.dbObj.getMerchantEventCriterias();
            return str;
        });
        post("/getMerchantEventOperations", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");

            String str =MySQLAccess.dbObj.getMerchantEventOperations();
            return str;
        });
        post("/registerMerchantEvent", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");
            String evnentCondition = request.queryParams("eventCondition");
            String merID = request.queryParams("merchantID");

            int eventID =MySQLAccess.dbObj.registerMerchantEvent(merID,evnentCondition);

            return eventID;
        });

        post("/registerUserEvent", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");
            String evnentCondition = request.queryParams("eventCondition");
            String userID = request.queryParams("userID");
            String geohash = request.queryParams("geohash");
            String landmark = request.queryParams("landmark");

            //int eventID =MySQLAccess.dbObj.registerMerchantEvent(merID,evnentCondition);

            return 1;
        });

        post("/registerMyCategories", (request, response) -> {
            // Create table Merchant_categories(MerchantID varchar(20), selectedCategories BigInt);
            response.type("application/json");
            String category = request.queryParams("selectedCatVal");
            String merID = request.queryParams("merchantID");
            System.out.println("fetching ads around  category is: "+category+" merchant ID is : "+merID);
            merchant reg = new merchant();
            String str =reg.registerMerchantCategory(merID,category);

            return str;
        });
        ConcurrentHashMap<String , tokenassigner> merchantstokens = new ConcurrentHashMap<String, tokenassigner>();
        ConcurrentHashMap<String , slotManager> merchantsSlotwiseTokens = new ConcurrentHashMap<String, slotManager>();
        ConcurrentHashMap<String , slotManager> userSlots = new ConcurrentHashMap<String, slotManager>();
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
            String FirebaseReceiveddata=null;
            try {
                FirebaseReceiveddata = request.queryParams("consumerFirebasepayload");
            }
            catch (Exception ex)
            {

            }
            System.out.println("for /LoginUser .. request received "+dataReceived+ " "+FirebaseReceiveddata);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            consumer reg = new consumer();
            String consumerId =  reg.getUserDetails(dataReceived,FirebaseReceiveddata);
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
        post("/joinad", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("joincountpayload");
            System.out.println("for /joinad .. request received "+dataReceived);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statusId =  obj.updateStatusJoinee(dataReceived);
            System.out.println("for /joinad .. response sent "+statusId);
            return statusId;

            //  return "Gopi";fetchalljoinees
        });

        post("/fetchstatuses", (request, response) -> {
            response.type("application/json");
            String dataReceived = request.queryParams("geohash");
            String lastreceivedstatusid = request.queryParams("lastreceivedstatusid");
            Integer userID=0;
            try {
                userID = Integer.parseInt(request.queryParams("userID"));
            }
            catch(Exception ex)
            {
                System.out.println(ex.getMessage());
            }
            System.out.println("for /fetchstatus .. request received "+dataReceived+" lastreceivedstatusid "+lastreceivedstatusid);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
            String statuses =  obj.fetchallstatuses(dataReceived,Integer.valueOf(lastreceivedstatusid),userID);
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
        post("/outForDelivery", (request, response) -> {
            String str = "";
            response.type("application/json");
            String statusId = request.queryParams("statusId");
            String deliveryStatus=request.queryParams("deliveryStatus");
            String userId=request.queryParams("userId");
            String customerContact=request.queryParams("customerContact");
            System.out.println("for /outForDelivery .. request received  statusId"+statusId +" userId: "+userId+" contact: "+customerContact);
            Integer value = MySQLAccess.dbObj.insertDeliveryStatus(Integer.valueOf(statusId),Integer.valueOf(deliveryStatus),Integer.valueOf(userId),customerContact);
            PushNotificationBasedonUserID(client,Integer.valueOf(userId),"Order Update","Your Order is Out For Delivery");
            return value.toString();
        });

        post("/getMyBalance", (request, response) -> {
            response.type("application/json");

            String userId=request.queryParams("userId");

            System.out.println("for /getMyBalance .. request received userId: "+userId);
            Integer value = 0
            return value.toString();
        });

        post("/orderRecivedUpdate", (request, response) -> {
            String str = "";
            response.type("application/json");
            String statusId = request.queryParams("statusId");
            String deliveryStatus=request.queryParams("deliveryStatus");
            String userId=request.queryParams("userId");
            String customerContact=request.queryParams("customerContact");
            String statusUserID=request.queryParams("statusUserID");
            System.out.println("for /orderRecivedUpdate .. request received  statusId"+statusId +" userId: "+userId+" contact: "+customerContact);
            Integer value = MySQLAccess.dbObj.updateDeliveryStatus(Integer.valueOf(statusId),Integer.valueOf(deliveryStatus),Integer.valueOf(userId),customerContact);
            PushNotificationBasedonUserID(client,Integer.valueOf(statusUserID),"Order Update","Order is Received");
            return value.toString();
        });

        post("/orderstatus", (request, response) -> {
            String str = "";
            response.type("application/json");
            String statusId = request.queryParams("statusId");
            String userId=request.queryParams("userId");
            String customerContact=request.queryParams("customerContact");

            System.out.println("for /orderstatus .. request received  statusId"+statusId +" userId: "+userId+" contact: "+customerContact);

            str= MySQLAccess.dbObj.getDeliveryStatus(Integer.valueOf(statusId),Integer.valueOf(userId));
            System.out.println("for /orderstatus returning "+str);
            return str;

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
            String GeneratedToken=emptystr;
            System.out.println("for /getnexttoken .. request received merchantid "+merchantid+" counter  =  "+counter
            +"existingtoken  = "+existingtoken+" timeserved ="+timeserved+" starttime = "+starttime
            +"endtime = "+endTime);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
//            body
            tokenassigner tkobj = null;

            if(merchantstokens.containsKey(merchantid) == true)
            {
                tkobj = merchantstokens.get(merchantid);
                GeneratedToken =  tkobj.getNextToken(merchantid,Integer.valueOf(counter), Integer.valueOf(existingtoken),
                        Double.valueOf(timeserved), starttime, endTime);
            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");
            }
            try {
                if (Integer.parseInt(GeneratedToken)  > 0) {
                    List<token> tokens = tkobj.getNextTokensinwait(merchantid, Integer.parseInt(GeneratedToken) - 1, 1000, 4);
                    if (tokens != null) {
                        for (token _curtoken : tokens) {
                            EntityMessage msg = new EntityMessage();
                            System.out.println("reached to obtain fire details ");
                            System.out.println("obtained fire details and sending to  " + _curtoken.FirebaseID);
                            msg.addRegistrationToken(_curtoken.FirebaseID);
                            msg.putStringData("title", "Hello ");
                            tokenstatus tok = new tokenstatus();
                            tok.token = _curtoken.token_id;
                            tok.youareat = _curtoken.position - 1;
                            if(tok.youareat == 0)
                            {
                                msg.putStringMess("Hello Please proceed to counter your token arrived"+" for "+merchantid);
                            }else {
                                msg.putStringMess("Hello Your Token current position is " + tok.youareat+" for "+merchantid);
                            }
                            msg.putStringData("body", new Gson().toJson(tok));
                            System.out.println("created FCM message");
                            // push
                            try {
                                if (client != null) {
                                    System.out.println(" achived client connection. message is being pushed ");
                                    FcmResponse res = client.pushToEntities(msg);
                                    System.out.println(res);
                                    System.out.println("message pushed ");
                                } else {
                                    FirebaseMessagingClient clients = new FirebaseMessagingClient();
                                    clients.setAPIKey("AAAAJVsTN2U:APA91bFaQC_HMm4r6-oSXNXddODyjE89YbZmrCeZm7dRJ7hKMfDTh073GnUkjoLz2YfEMJRPxcFH8xaOJsyO5ILUmoHwSsXXiiHFHyUg5vDhSB18XK7pZSWT15PPE2SREr1yInn7bqF9");
                                    System.out.println(" achived client connection. message is being pushed ");
                                    FcmResponse res = clients.pushToEntities(msg);
                                    System.out.println(res);
                                    System.out.println("message pushed from else");

                                }
                            } catch (Exception ex) {
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return  GeneratedToken;
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
            if(obj.helperslist.size()==0 && obj.counterslist.size()==0)
            {
                merchantstokens.remove(contact);
            }
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
            String GeneratedToken = "-2";
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
                GeneratedToken =  str;
            }
            else
            {
//                tkobj = new tokenassigner();
//                merchantstokens.put(merchantid,tkobj);

                System.out.println("for gettokenstatus for merchatid "+merchantid+", returning -2 ");


                GeneratedToken =  "-2";
            }

            EntityMessage msg = new EntityMessage();
            consumer reg = new consumer();
            System.out.println("reached to obtain fire details ");
            String[] fireID = reg.getUSerFireID(contact);
            System.out.println("obtained fire details and sending to  " + fireID[0] );
            if(fireID[0]!=null) {
                msg.addRegistrationToken(fireID[0].toString());

                msg.putStringData("title", "Hello " + fireID[1].toString());
                msg.putStringData("body",  GeneratedToken);
                System.out.println("created FCM message");
                // push
                try {
                    if (client != null) {
                        System.out.println(" achived client connection. message is being pushed ");
                        FcmResponse res = client.pushToEntities(msg);
                        System.out.println(res);
                        System.out.println("message pushed ");
                    }
                    else
                        {
                        FirebaseMessagingClient clients =new FirebaseMessagingClient();
                        try {//
                            clients.setAPIKey("AAAAJVsTN2U:APA91bFaQC_HMm4r6-oSXNXddODyjE89YbZmrCeZm7dRJ7hKMfDTh073GnUkjoLz2YfEMJRPxcFH8xaOJsyO5ILUmoHwSsXXiiHFHyUg5vDhSB18XK7pZSWT15PPE2SREr1yInn7bqF9");
//            // Data model for sending messages to specific entity(mobile devices,browser front-end apps)s
//            EntityMessage msg = new EntityMessage();
//
//            // Set registration token that can be retrieved
//            // from Android entity(mobile devices,browser front-end apps) when calling
//            // FirebaseInstanceId.getInstance().getToken();
//            msg.addRegistrationToken("eXo49MLuJGE:APA91bEE4zMCQ_lnNst9Fw-cBAfgiyYsdxHdQ7TW1w5JDOZya9holq1KQWC3-nZ_7SRpGqeqC_ZgtvaPjj9QTMCQqsmoUiH-jMdzU_F14b8Vcic20Vztk3RChoE66EzskArJzVKj1_wu");
//            msg.addRegistrationToken("fEXJFJ7kysc:APA91bEaEh-Dhtv9vQIueCPs7tjeJLMFV7_4cZUL2lDyMJPUlZdbRSqDkJULfLvMOP6nxIjw0RMCFEknPhFYqtsI66JJb3anuPW--QMpi5R8EekamYQSmMUluTGcndfGmF7SZsMJl_O7");
//            // Add key value pair into payload
//            msg.putStringData("title", "tetete");
//            msg.putStringData("body", "myValue2");
//
//            // push
//            FcmResponse res = client.pushToEntities(msg);

//            System.out.println(res);
                            System.out.println(" achived client connection. message is being pushed ");
                            FcmResponse res = clients.pushToEntities(msg);
                            System.out.println(res);
                            System.out.println("message pushed from else");
                        }catch (Exception ex){

                        }
                    }
                } catch (Exception ex) {
                }
            }
            return GeneratedToken;


            //  return "Gopi";
        });
        post("/getalltokenstatus", (request, response) -> {

            /*
            \
            \
            String merchantId, String counter, Integer existingtoken, Double timeserved, String starttime, String endTime
             */
            response.type("application/json");
            System.out.println("Just recived package");
            String _tokenstatuspayload = request.queryParams("tokenstatuspayload");
            tokenstatuspayload[] obj = new Gson().fromJson(_tokenstatuspayload,tokenstatuspayload[].class);
            System.out.println("recived payload " +_tokenstatuspayload);
            for (int i = 0; i < obj.length; i++) {
                System.out.println("Just entered into loop");
//                tokenstatuspayload
                String merchantid = obj[i].merchantid; //request.queryParams("merchantid");
                String token = obj[i].token; //request.queryParams("token");
                obj[i].GeneratedToken = "-2";
                String contact = obj[i].contact; //request.queryParams("contact");
                String existingStatus = obj[i].existingStatus; //request.queryParams("existingStatus");

                System.out.println("for /gettokenstatus .. request received merchantid " + merchantid + "" +
                        " token  =  " + token + "  contact = " + contact + "  existingstatus = " + existingStatus);
                tokenassigner tkobj = null;

                if (merchantstokens.containsKey(merchantid) == true) {
                    tkobj = merchantstokens.get(merchantid);
                    String str = tkobj.getTokenStatus(merchantid, Integer.valueOf(token), contact, existingStatus, -1);

                    System.out.println("for gettokenstatus , returning " + str);
                    obj[i].GeneratedToken = str;
                } else {
                    System.out.println("for gettokenstatus for merchatid " + merchantid + ", returning -2 ");
                    obj[i].GeneratedToken = "-2";
                }
            }
            _tokenstatuspayload = new Gson().toJson(obj);
            return _tokenstatuspayload;
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
            String firebaseID = request.queryParams("firebaseID");
            String existingtoken = request.queryParams("existingtoken");


            System.out.println("for /deregister .. request received merchantid "+merchantid+"' contact  = '"+contact+"'  existingtoken = '"+existingtoken+"'");

            tokenassigner tkobj = null;


            if(merchantstokens.containsKey(merchantid) == false)
            {
                return "-1";
            }
            tkobj = merchantstokens.get(merchantid);

            return tkobj.deregistercustomer(contact, existingtoken,firebaseID,merchantid);

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
            String str =  new contactspecificdatagatherer().getnextreceiptid(merchantid);
            return str;
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
            String consumerFireID = "";
            consumer con=new consumer();
            String[] UserFireDetails = con.getUSerFireID(consumercontact);
            if(UserFireDetails!=null){
                consumerFireID = UserFireDetails[0];
            }
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
                return tkobj.createnewtokenWithContact(merchantid, consumercontact, consumerFireID,true);
            }
            else
            {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   "+merchantid+"  returning empty details");
                return "-10";
            }

            //   return tkobj.createnewtoken(merchantid);


            //  return "Gopi";
        });
        post("/registerMerchantSlots", (request, response) -> {
            String dataReceived= request.queryParams("slotDetails");

            System.out.println("for /registerMerchantSlots .. request received "+ dataReceived);
            slotPayload slotRecived = new Gson().fromJson(dataReceived, slotPayload.class);
            slotManager curSlotManager;
            if (!merchantsSlotwiseTokens.containsKey(slotRecived.MerchantID)) {
                curSlotManager = new slotManager();
            }
            else
            {
                curSlotManager = merchantsSlotwiseTokens.get(slotRecived.MerchantID);
            }
            merchantsSlotwiseTokens.putIfAbsent(slotRecived.MerchantID,curSlotManager);
            if(merchantsSlotwiseTokens.containsKey(slotRecived.MerchantID)){
                merchantsSlotwiseTokens.replace(slotRecived.MerchantID,curSlotManager);
            }
            else
            {
                merchantsSlotwiseTokens.put(slotRecived.MerchantID,curSlotManager);
            }

            if(curSlotManager!=null) {
                System.out.println("registartion started ");
                if(curSlotManager.countersDoneDetails.containsKey(slotRecived.MerchantID)){
                    curSlotManager.countersDoneDetails.replace(slotRecived.MerchantID,slotRecived);
                }
                else
                {
                    curSlotManager.countersDoneDetails.put(slotRecived.MerchantID,slotRecived);
                }
                System.out.println("Inserted Slot Details ");
                return new Gson().toJson(curSlotManager.CompleteRegistration(slotRecived.MerchantID));
            }
            return  "-1";
            //return curSlotManager.CompleteRegistration(slotRecived.MerchantID);
        });
        post("/getMerchantsAround", (request, response) -> {
            String geohashes = request.queryParams("geohashes");
            System.out.println("call recived for getMerchantsAround with param "+geohashes);
            return MySQLAccess.dbObj.getMerchantsAround(new Gson().fromJson(geohashes, ArrayList.class));
        });
        post("/getMerchantSlots", (request, response) -> {
            String MID= request.queryParams("MerchantID");
            String fDate= request.queryParams("FromTime");
            String tDate= request.queryParams("toTime");

            slotManager curSlotManager;
            if (!merchantsSlotwiseTokens.containsKey(MID)) {
                slotPayload slotRecived =new slotPayload();
                slotRecived.MerchantID=MID;
                curSlotManager = new slotManager();
                merchantsSlotwiseTokens.put(MID,curSlotManager);
            }
            else
            {
                curSlotManager = merchantsSlotwiseTokens.get(MID);
            }
            if(curSlotManager!=null) {
                return curSlotManager.getSlots(MID,fDate,tDate);
            }
            return  new Gson().toJson("-1");
        });
        post("/getUserSlots", (request, response) -> {
            String UserContact= request.queryParams("UserContact");
            String fDate= request.queryParams("FromTime");
            String tDate= request.queryParams("toTime");

            consumer reg = new consumer();
            String resUID = reg.getUSerFireID(UserContact)[2];
            //redundant to create objects here
            // TODO: replace with single instance for user
            if(userSlots.containsKey(resUID)) {
                return userSlots.get(resUID).getUserSlots(resUID,fDate,tDate,UserContact);
            }
            else
            {
                userSlots.put(resUID,new slotManager());
                return userSlots.get(resUID).getUserSlots(resUID,fDate,tDate,UserContact);
            }
            //return  "-1";
        });
        post("/registerTokenforSlot", (request, response) -> {

//            response.type("application/json");
            String merchantid = request.queryParams("merchantid");
            String consumercontact = request.queryParams("consumercontact");
            String epochID = request.queryParams("epochID");
            String EpochStarttime = request.queryParams("EpochStarttime");
            String tokensrequested= request.queryParams("tokensrequested");
            String GeneratedToken = "-10";
            System.out.println("for /registerfortoken .. request received merchantid " + merchantid + " consumercontact  =" +
                    "  " + consumercontact);
            slotManager tkobj = null;
            consumer reg = new consumer();
            String[] fireID = reg.getUSerFireID(consumercontact);

            if (merchantsSlotwiseTokens.containsKey(merchantid)) {
                tkobj =merchantsSlotwiseTokens.get(merchantid);
                GeneratedToken = tkobj.RegisterUsertoSlot(merchantid,Integer.parseInt(epochID),EpochStarttime,Integer.parseInt(tokensrequested),fireID[2]);

            } else {
                tkobj=new slotManager();
                merchantsSlotwiseTokens.put(merchantid, tkobj);
                GeneratedToken = tkobj.RegisterUsertoSlot(merchantid,Integer.parseInt(epochID),EpochStarttime,Integer.parseInt(tokensrequested),fireID[2]);
            }
            //region-- FCM Push
            try {
                if(GeneratedToken.equals("Success")) {
                    EntityMessage msg = new EntityMessage();

                    System.out.println("reached to obtain fire details ");

                    System.out.println("obtained fire details and sending to  " + fireID[0]);
                    if (fireID[0] != null) {
                        msg.addRegistrationToken(fireID[0]);
                        // Add key value pair into payload
                        msg.putStringData("title", "Hello " + fireID[1]);
                        msg.putStringData("body", GeneratedToken);
                        msg.putStringMess("Your Token is registered successfully");
                        System.out.println("created FCM message");
                        // push
                        try {
                            if (client != null) {
                                System.out.println(" achived client connection. message is being pushed ");
                                FcmResponse res = client.pushToEntities(msg);
                                System.out.println(res);
                                System.out.println("message pushed ");
                            }
                        } catch (Exception ex) {
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                System.out.println("message not being pushed ");
            }
            //FCM Push End
            return GeneratedToken;
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
            String consumerFirebaseID = request.queryParams("consumerFireID");
            String GeneratedToken = "-10";
            System.out.println("for /registerfortoken .. request received merchantid " + merchantid + " consumercontact  =  " + consumercontact);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            tokenassigner tkobj = null;
            tokenstatus GenTokenObject =null;
            boolean tokenupdated=false;
            if ((tkobj = merchantstokens.get(merchantid)) != null) {
                // tkobj = new tokenassigner();

                merchantstokens.put(merchantid, tkobj);
                GeneratedToken = tkobj.createnewtokenWithContact(merchantid, consumercontact,consumerFirebaseID, false);
                GenTokenObject = new Gson().fromJson(GeneratedToken,tokenstatus.class);
                tokenupdated=true;
            } else {
                System.out.println("for /getmerchanttokendetails ..counters not yet opened   " + merchantid + "  returning empty details");
//                return "-10";
            }
            System.out.println("Gene Token is"+GeneratedToken);

            if(tokenupdated && GenTokenObject!=null && GenTokenObject.token>0) {
                System.out.println("Gene Token from object is"+GenTokenObject.token);
                EntityMessage msg = new EntityMessage();
                consumer reg = new consumer();
                System.out.println("reached to obtain fire details ");
                String[] fireID = reg.getUSerFireID(consumercontact);
                System.out.println("obtained fire details and sending to  " + fireID[0]);
                if (fireID[0] != null) {
                    msg.addRegistrationToken(fireID[0]);
//            msg.addRegistrationToken("eXo49MLuJGE:APA91bEE4zMCQ_lnNst9Fw-cBAfgiyYsdxHdQ7TW1w5JDOZya9holq1KQWC3-nZ_7SRpGqeqC_ZgtvaPjj9QTMCQqsmoUiH-jMdzU_F14b8Vcic20Vztk3RChoE66EzskArJzVKj1_wu");
//            msg.addRegistrationToken("fEXJFJ7kysc:APA91bEaEh-Dhtv9vQIueCPs7tjeJLMFV7_4cZUL2lDyMJPUlZdbRSqDkJULfLvMOP6nxIjw0RMCFEknPhFYqtsI66JJb3anuPW--QMpi5R8EekamYQSmMUluTGcndfGmF7SZsMJl_O7");
                    // Add key value pair into payload
                    msg.putStringData("title", "Hello " + fireID[1]);
                    msg.putStringData("body", GeneratedToken);
                    msg.putStringMess("Your Token is registered successfully");
                    System.out.println("created FCM message");
                    // push
                    try {
                        if (client != null) {
                            System.out.println(" achived client connection. message is being pushed ");
                            FcmResponse res = client.pushToEntities(msg);
                            System.out.println(res);
                            System.out.println("message pushed ");
                        }
                    } catch (Exception ex) {
                    }
                }
            }
            return GeneratedToken;
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
//            String statuses =  obj.updateStatusJoinee(Integer.valueOf(statusId),contact,geohash);
            String statuses ="commented API";
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
            String statuses =  obj.fetchjoineecount(Integer.valueOf(statusId),0);
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
            String userId =  request.queryParams("userId");

            System.out.println("for /respondtostatus .. request received "+statusId+"  : "+geohash);

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            statusHandler obj = new statusHandler();
           String statuses =  obj.fetchalljoinees(Integer.valueOf(statusId),Integer.valueOf(userId));
            //String statuses ="Commented API";
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
        post("/fetchconsumernegotiations", (request, response) -> {
            response.type("application/json");
            String customerContact = request.queryParams("contact");
            String lastId = request.queryParams("lastid");
            //String geoHash = request.queryParams("geohashlist");
            System.out.println("for /Negotiate .. request received "+customerContact+"  geohash is all");

            //      LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(lat,LastReceivedAdStruct[].class);

//            String lng = request.queryParams("lng");
//            String lastId = request.queryParams("lastId");
            NegotiationHandler obj = new NegotiationHandler();
            String res =  obj.fetchconsumerNegotiations(customerContact, Integer.valueOf(lastId));
            //String res1 =  obj.fetchNegotiationResponses(customerContact,lastId, geoHash);
            //String finalresponse="["+res+","+res1+"]";
            //System.out.println("for /fetchnegotiations .. response sent "+finalresponse);
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

        });
        post("/getsupportedjobs", (request, response) -> {
            response.type("application/json");



           String res = new JobHandler().getSupportedJobs();
            System.out.println("for /fetchnegotiationresponse .. response sent "+res);
            return res;

        });
        post("/postlogs", (request, response) -> {
            response.type("application/json");
            String logs = request.queryParams("logs");
            System.out.println("Logs received ++++++++++");
            System.out.println(logs);
            System.out.println("Logs received  ended __________");


            String res = new String("");
            return res;

        });
        /* MySQLAccess dao = new MySQLAccess();
        try {
            dao.readDataBase();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    }

    private static void PushNotificationBasedonUserID(FirebaseMessagingClient client, int uID, String body, String message) {
        try {
            EntityMessage msg = new EntityMessage();
            consumer reg = new consumer();
            System.out.println("reached to obtain fire details ");
            String[] fireID = reg.getUSerFireIDbyconsumerID(uID);
            System.out.println("obtained fire details and sending to  " + fireID[0]);
            if (fireID[0] != null) {
                msg.addRegistrationToken(fireID[0]);// Add key value pair into payload
                msg.putStringData("title", "Hello " + fireID[1]);
                msg.putStringData("body", body);
                msg.putStringMess(message);


                System.out.println("created FCM message");
                // push
                try {
                    if (client != null) {
                        System.out.println(" achived client connection. message is being pushed ");
                        FcmResponse res = client.pushToEntities(msg);
                        System.out.println(res);
                        System.out.println("message pushed ");
                    }
                } catch (Exception ex) {
                }
            }
        }
        catch (Exception ex)
        {
            System.out.println("Push Notify Failed! ");
        }
    }
}
