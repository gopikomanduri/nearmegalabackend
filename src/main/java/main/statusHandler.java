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

    public String updateStatusJoinee(String payload)
    {
//        Integer statusid, String contact, String geohash
        JoinCountPayLoad obj = new Gson().fromJson(payload,JoinCountPayLoad.class);
         MySQLAccess.dbObj.insertStatusJoinee(obj.statusId, obj.userid);
         return fetchalljoinees(obj.statusId, obj.userid);
    }

    public String fetchjoineecount(Integer statusid, Integer userID)
    {
        return MySQLAccess.dbObj.fetchjoineecount(statusid, userID);
    }

    public String fetchalljoinees(Integer statusid, Integer userid)
    {
        List<String> joineeslist = MySQLAccess.dbObj.fetchalljoinees(statusid, userid);
        String contactslist = new Gson().toJson(joineeslist);

        return contactslist;
    }

//    public String fetchallstatuses(String geohash)
//    {
//        List<statuspayload> statuses = MySQLAccess.dbObj.fetchallstatuses(geohash);
//        String str = new Gson().toJson(statuses);
//        return str;
//    }

    public String fetchallstatuses(String geohash, int laststatusid,int userID)
    {
        List<statuspayload> statuses = MySQLAccess.dbObj.fetchallstatuses(geohash, laststatusid);
        for (int i = 0; i < statuses.size(); i++) {
            if(Integer.valueOf(MySQLAccess.dbObj.fetchjoineecount(statuses.get(i).idstatus,userID) )>0)
            {
                statuses.get(i).isalreadyJoined=1;//joined
            }
            else
            {
                statuses.get(i).isalreadyJoined=0;//not joined
            }

//            if(Integer.valueOf(MySQLAccess.dbObj.fetchjoineecount(statuses.get(i).idstatus,-1) )>0)
//            {
            try{
                statuses.get(i).joinedcount=Integer.valueOf(MySQLAccess.dbObj.fetchjoineecount(statuses.get(i).idstatus,-1) );//joined
            }
            catch (Exception ex)
            {

            }
//            else
//            {
//                statuses.get(i).isalreadyJoined=0;//not joined
//            }
//            statuses.get(i).idstatus
        }
        String str = new Gson().toJson(statuses);
        return str;
    }


}
