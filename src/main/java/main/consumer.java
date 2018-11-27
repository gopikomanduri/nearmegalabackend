package main;

import com.google.gson.Gson;

public class consumer {
    public String regConsumer(String str)
    {
        consumerpayload obj = new Gson().fromJson(str, consumerpayload.class);
        return MySQLAccess.dbObj.insertIntoUser(obj);

    }
}
