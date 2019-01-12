package main;

import java.util.ArrayList;
import java.util.List;

public class smshandlerclass {

    public static List<String> smsids = new ArrayList<>();
    public smshandlerclass()
    {
       smsids.addAll(MySQLAccess.dbObj.fetchsmsids());
    }
    public static synchronized  void addintoset(String id)
    {
    smsids.add(id);

    }
    public static synchronized   void deletefromset(String id)
    {
        smsids.remove(id);
    }

    public static synchronized void deactivatesmsid(String id)
    {
        if(smsids.contains(id) == true)
        {
            smsids.remove(id);
        }
    }

    public synchronized String getnextsmsid(Integer index)
    {
        Integer current = 0;

        current = index % smsids.size();
        return smsids.get(current);
    }
}
