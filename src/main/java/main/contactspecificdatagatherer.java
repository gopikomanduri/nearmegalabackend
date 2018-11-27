package main;

import com.google.gson.Gson;

import java.util.List;

public class contactspecificdatagatherer {
    public String getContactSpecificData(String contact,String lastId)
    {
        System.out.println("invoking  contact specific info for contact "+contact+" lastid "+lastId);
        List<contactspecificinfo> temp = MySQLAccess.dbObj.getContactSpecificDetails(contact, lastId);
        String str = new Gson().toJson(temp);
        System.out.println("returning contact specific info for contact "+contact+" lastid "+lastId+" info is "+str);
        return str;

    }
}
