package main;

import com.google.gson.Gson;
import lombok.Data;

import java.util.List;

@Data
public class statusHandler {

    public String pushStatus(String str)
    {
        statuspayload obj = new Gson().fromJson(str,statuspayload.class);
       return MySQLAccess.dbObj.insertIntoStatus(obj);
    }

    public String updateStatusJoinee(Integer statusid, String contact, String geohash)
    {
         MySQLAccess.dbObj.insertStatusJoinee(statusid, contact, geohash);
         return fetchalljoinees(statusid, geohash);
    }

    public String fetchjoineecount(Integer statusid, String geohash)
    {
        return MySQLAccess.dbObj.fetchjoineecount(statusid, geohash);
    }

    public String fetchalljoinees(Integer statusid, String geohash)
    {
        List<String> joineeslist = MySQLAccess.dbObj.fetchalljoinees(statusid, geohash);
        String contactslist = new Gson().toJson(joineeslist);

        return contactslist;
    }

//    public String fetchallstatuses(String geohash)
//    {
//        List<statuspayload> statuses = MySQLAccess.dbObj.fetchallstatuses(geohash);
//        String str = new Gson().toJson(statuses);
//        return str;
//    }

    public String fetchallstatuses(String geohash, int laststatusid)
    {
        List<statuspayload> statuses = MySQLAccess.dbObj.fetchallstatuses(geohash, laststatusid);
        String str = new Gson().toJson(statuses);
        return str;
    }


}
