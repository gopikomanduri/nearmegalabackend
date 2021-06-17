package main;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

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
            adRes = removeDuplicates(adRes);
            System.out.println("fectched /ads .. ");
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
        try{
        for(int i = 0; i< lastReceivedAdDetails.length; i++)
        {
            LastReceivedAdStruct temp = lastReceivedAdDetails[i];
            for(int j=0; j<temp.geoHash.length; j++) {
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, merchantid, temp.Category));
                // Need to be removed later this is to push covid related ads to history
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, merchantid, 29));
            }
        }
        for(int i=0;i<tobeadded.size();i++)
        {
            LastReceivedAdStruct temp = tobeadded.get(i);
            for(int j=0;j<temp.geoHash.length;j++) {
                adRes.addAll(MySQLAccess.dbObj.fetchAd(temp.geoHash[j], temp.lastReceivedAdId, merchantid, temp.Category));
            }
        }
        }
        catch(Exception ex)
        {
            System.out.println(ex.getLocalizedMessage());
        }

        try
        {
            adRes = removeDuplicates(adRes);
            System.out.println("fectched /ads .. requestRegUser received ");
            str = gson.toJson(adRes.toArray(),AdPayLoadResponse[].class);
            System.out.println(str);
            return str;
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
            str = "";
            return str;
        }
    }

    public static <T> List<T> removeDuplicates(List<T> list)
    {

        // Create a new LinkedHashSet
        Set<T> set = new LinkedHashSet<>();

        // Add the elements to set
        set.addAll(list);

        // Clear the list
        list.clear();

        // add the elements of set
        // with no duplicates to the list
        list.addAll(set);

        // return the list
        return list;
    }
}
