package main;

import com.google.gson.Gson;

import java.util.List;

public class contactspecificdatagatherer {
    public String getContactSpecificData(String contact,String lastId)
    {
        System.out.println("invoking  contact specific info for contact "+contact+" lastid "+lastId);
//        if(contact.startsWith("+") == false)
//            contact = "+91"+contact;
            List<contactspecificinfo> temp = MySQLAccess.dbObj.getContactSpecificDetails(contact, lastId);
        String str = new Gson().toJson(temp);
        System.out.println("returning contact specific info for contact "+contact+" lastid "+lastId+" info is "+str);
        return str;

    }

    public String getnextreceiptid(String merchantid) {
        String num = MySQLAccess.dbObj.getNextReceiptId(merchantid);
        System.out.println("returning next receipt id  for merchant "+merchantid+" receipt id is  "+num);

        return num;
    }

    public String getMerchantreceiptsinfo(String merchantid, String lastid)
    {
        List<contactspecificinfo> temp = MySQLAccess.dbObj.getMerchantreceiptsinfo(merchantid, lastid);
        String str = new Gson().toJson(temp);

        System.out.println("returning next receipt id  for merchant "+merchantid+" last id is  "+lastid+"  returned str "+str);

        return str;
    }
}
