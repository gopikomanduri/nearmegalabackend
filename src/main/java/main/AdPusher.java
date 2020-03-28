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


        for(int i=0;i<lastReceivedAdDetails.length;i++)
        {
            LastReceivedAdStruct temp = lastReceivedAdDetails[i];
            adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash, temp.lastReceivedAdId,merchantid));
        }
        for(int i=0;i<tobeadded.size();i++)
        {
            LastReceivedAdStruct temp = tobeadded.get(i);
            adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash, temp.lastReceivedAdId,merchantid));
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
}
