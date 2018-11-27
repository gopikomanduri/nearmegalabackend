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
            adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash, temp.lastReceivedAdId));
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
