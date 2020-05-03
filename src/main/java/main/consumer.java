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
        consumerFirebasepayload obj = new Gson().fromJson(FirebaseReceiveddata, consumerFirebasepayload.class);

        return MySQLAccess.dbObj.getUserDetails(str,obj);
    }
}
