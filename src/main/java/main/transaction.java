package main;

import com.google.gson.Gson;

public class transaction {
    public String
    addTransaction(String merchant, String user, String offer)
    {
        Gson gson = new Gson();
        String strmerchantId = gson.fromJson(merchant, String.class);
        String struser = gson.fromJson(user, String.class);
        String stroffer = gson.fromJson(offer, String.class);

     int pointsAdded =  MySQLAccess.dbObj.addTransaction(strmerchantId, struser, stroffer);
     PointsClass totalPoints = MySQLAccess.dbObj.getExistingPointsForCustomer(struser);
     String pointsJson = new Gson().toJson(totalPoints, PointsClass.class);
     return pointsJson;
    }

    public void updateAdViewedCount(String merchant, String user, String offer)
    {
        Gson gson = new Gson();
        String strmerchantId = gson.fromJson(merchant, String.class);
        String struser = gson.fromJson(user, String.class);
        String stroffer = gson.fromJson(offer, String.class);
        MySQLAccess.dbObj.updateOfferReach(merchant, offer , 0 , 1 , 0);
    }
}
