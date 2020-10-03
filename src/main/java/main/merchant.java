package main;

import com.google.gson.Gson;

import java.time.LocalDateTime;

public class merchant {
    String registrationDetails;
    public merchant()
    {

    }
    public merchant(String regDetails)
    {
        registrationDetails = regDetails;
    }
    public  String registerMerchant(String regDetails)
    {
        String res="";
        Gson gson = new Gson();
        merchantDetails obj = gson.fromJson(regDetails, merchantDetails.class);
        try {
            System.out.println("In registerMechant");

            String curMid = MySQLAccess.dbObj.getMerchantIdFromContact(obj.merchantPhn);
            if (curMid.equalsIgnoreCase("0") == false) {

                obj.merchantId = "-1";


                LocalDateTime now = LocalDateTime.now();

                String receivedOn = Util.getTimestamp(now);
                Integer vad = Util.getCurrentDay(now);
                Integer vam = Util.getCurrentMonth(now);
                Integer vay = Util.getCurrentYear(now);
                obj.registeredOn = now.toString();
                obj.isActive = "0";
                res = gson.toJson(obj, merchantDetails.class);
//            return MySQLAccess.dbObj.getMerchantDetails(obj.merchantPhn);
//            String res= gson.toJson(obj,merchantDetails.class);
                System.out.println("In registerMechant . Next Id is " + obj.merchantId );
                return res;
            }

            //  MySQLAccess.dbObj.createMerchantAreaTableIfNotExist(obj.city, obj.area, obj.landMark);
            String MId = MySQLAccess.dbObj.getMaxIdInMerchantTable("merchant");
            System.out.println("In registerMechant . Next Id is " + MId);


            obj.merchantId = MId;


            LocalDateTime now = LocalDateTime.now();

            String receivedOn = Util.getTimestamp(now);
            Integer vad = Util.getCurrentDay(now);
            Integer vam = Util.getCurrentMonth(now);
            Integer vay = Util.getCurrentYear(now);
            obj.registeredOn = now.toString();
            obj.isActive = "1";


            MySQLAccess.dbObj.insertIntoMerchant(obj);
            res= gson.toJson(obj, merchantDetails.class);
        }
        catch (Exception ex)
        {
            obj.merchantId = "-2";


            LocalDateTime now = LocalDateTime.now();

            String receivedOn = Util.getTimestamp(now);
            Integer vad = Util.getCurrentDay(now);
            Integer vam = Util.getCurrentMonth(now);
            Integer vay = Util.getCurrentYear(now);
            obj.registeredOn = now.toString();
            obj.isActive = "0";
            res = gson.toJson(obj, merchantDetails.class);
//            return MySQLAccess.dbObj.getMerchantDetails(obj.merchantPhn);
//            String res= gson.toJson(obj,merchantDetails.class);
            System.out.println("In registerMechant . Next Id is " + obj.merchantId );
            return res;
        }
         return res;
    }


    public String isValidMerchant(String merchantId, String password)
    {
        Integer MId = MySQLAccess.dbObj.isValidUser(merchantId, password);
        return MId.toString();
    }


    public String getMerchantDetails(String contact)
    {
        return MySQLAccess.dbObj.getMerchantDetails(contact);
    }

    public String registerMerchantCategory(String merchantID,String category)
    {
        return MySQLAccess.dbObj.registerMerchantCategory(merchantID,category);
    }

    public String getMerchantCategory(String merchantID)
    {
        return MySQLAccess.dbObj.getMerchantCategory(merchantID);
    }
}
