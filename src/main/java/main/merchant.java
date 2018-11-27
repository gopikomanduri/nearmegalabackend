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
        Gson gson = new Gson();
        merchantDetails obj = gson.fromJson(regDetails, merchantDetails.class);
      //  MySQLAccess.dbObj.createMerchantAreaTableIfNotExist(obj.city, obj.area, obj.landMark);
        String MId = MySQLAccess.dbObj.getMaxIdInMerchantTable("merchant");

        obj.merchantId = MId;


        LocalDateTime now = LocalDateTime.now();

        String receivedOn = Util.getTimestamp(now);
        Integer vad = Util.getCurrentDay(now);
        Integer vam = Util.getCurrentMonth(now);
        Integer vay = Util.getCurrentYear(now);
        obj.registeredOn = now.toString();
        obj.isActive = "1";


         MySQLAccess.dbObj.insertIntoMerchant(obj);
         String res= gson.toJson(obj,merchantDetails.class);
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
}
