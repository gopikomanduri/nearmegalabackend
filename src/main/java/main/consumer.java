package main;

import com.google.gson.Gson;

public class consumer {
    public String regConsumer(String str)
    {
        consumerpayload obj = new Gson().fromJson(str, consumerpayload.class);
        return MySQLAccess.dbObj.insertIntoUser(obj);

    }
    public String getUserDetails(String str,String FirebaseReceiveddata)
    {
        consumerFirebasepayload obj =null;
        if(FirebaseReceiveddata!=null)
             obj = new Gson().fromJson(FirebaseReceiveddata, consumerFirebasepayload.class);

        return MySQLAccess.dbObj.getUserDetails(str,obj);
    }
    public String[] getUSerFireID(String contact)
    {
        String FireID[]=new String[3];
        consumerpayload cc =new Gson().fromJson(MySQLAccess.dbObj.getUserDetails(contact,null),consumerpayload.class);
        if(cc!=null) {
            FireID[0] = MySQLAccess.dbObj.getUserFireDetails(cc.idconsumers);
            FireID[1] = cc.consumername;
            FireID[2] = cc.idconsumers.toString();
        }
        return  FireID;
    }
}
