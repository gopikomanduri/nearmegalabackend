package main;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

public class AdPusher  {
    String geoHash = "";
    String lastId = "";
    String lat = "";
    String lng = "";
    public AdPusher(String geo, String Id)
    {
        geoHash = geo;
        lastId = Id;
    }

    public AdPusher(String lat, String lng, String lastId) {
    }

    public AdPusher()
    {

    }
    public Object call(String received) throws Exception {

        String str = "";
        Gson gson = new Gson();

        LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(received,LastReceivedAdStruct[].class);
        List<AdPayLoadResponse> adRes = new ArrayList<>();


        for(int i=0;i<lastReceivedAdDetails.length;i++)
        {
            LastReceivedAdStruct temp = lastReceivedAdDetails[i];
            for(int j=0;j<temp.geoHash.length;j++) {
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, null, temp.Category));
            }
        }
        try
        {
            str = gson.toJson(adRes.toArray(),AdPayLoadResponse[].class);

            System.out.println(str);
            return str;
        }
        catch(Exception ex)
        {
            str = "";
            return str;
        }
    }

    public Object call(String received,String merchantid) throws Exception {

        String str = "";
        Gson gson = new Gson();

        LastReceivedAdStruct[] lastReceivedAdDetails = new Gson().fromJson(received,LastReceivedAdStruct[].class);

        List<LastReceivedAdStruct> ExistingReceivedAdDetails = MySQLAccess.dbObj.fetchMerchantGeoHashes(merchantid);

        List<LastReceivedAdStruct> tobeadded = new ArrayList<LastReceivedAdStruct>();
        for (LastReceivedAdStruct exisitngDeatil : ExistingReceivedAdDetails) {
            boolean exist = false;
            for (LastReceivedAdStruct lastDeatil : lastReceivedAdDetails) {
                if (lastDeatil.geoHash.equals(exisitngDeatil.geoHash)) {
                    exist = true;
                    break;
                }
            }
            if (!exist) {
                tobeadded.add(exisitngDeatil);
            }
        }

        List<AdPayLoadResponse> adRes = new ArrayList<>();

        if (merchantid==null)
        {
            merchantid ="";
        }
        for(int i=0;i<lastReceivedAdDetails.length;i++)
        {
            LastReceivedAdStruct temp = lastReceivedAdDetails[i];
            for(int j=0;j<temp.geoHash.length;j++) {
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, merchantid, temp.Category));
            }
        }
        for(int i=0;i<tobeadded.size();i++)
        {
            LastReceivedAdStruct temp = tobeadded.get(i);
            for(int j=0;j<temp.geoHash.length;j++) {
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, merchantid, temp.Category));
            }
        }
        try
        {
            System.out.println("fectched /ads .. requestRegUser received ");
            str = gson.toJson(adRes.toArray(),AdPayLoadResponse[].class);
            System.out.println(str);
            return str;
        }
        catch(Exception ex)
        {
            str = "";
            return str;
        }
    }
}
