package main;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class AdHandler implements Callable {
    AdPayLoad receivedAd;
    public AdHandler(AdPayLoad obj)
    {
        receivedAd = obj;
    }
    @Override
    public String call() throws Exception {

        //       public boolean insertAd(String MerchantId, String category, String vd, String vm, String vy, String imgurl,String itemdesc)
        String merchantId = receivedAd.merchantid;
        String geoHash = "";
        if(receivedAd.geo.length() == 0) {
            geoHash = MySQLAccess.dbObj.getGeoHashForMerchant(merchantId);
            receivedAd.geo = geoHash;
        }

    MySQLAccess.dbObj.createAdsTableIfNotExist(receivedAd.geo);
    Integer adId = MySQLAccess.dbObj.insertAd(receivedAd.merchantid, receivedAd.cat, receivedAd.tilldate,
            receivedAd.tillmonth, receivedAd.tillyear, receivedAd.imgUrl, receivedAd.itemdesc, receivedAd.offercode, receivedAd.geo,
            receivedAd.mindiscount,receivedAd.maxdiscount,receivedAd.discdesc, receivedAd.lat, receivedAd.lng
            );

    MySQLAccess.dbObj.insertIntoNegotiateOffer(adId,receivedAd.geo,receivedAd.negotiate, receivedAd.minBusiness);
    MySQLAccess.dbObj.insertIntomerchantGeohashesStore(receivedAd.merchantid,receivedAd.geo);
    return adId.toString();


    }
    public String getAdsAround(String lastAdID,String geohash,String MerchantID)
    {

//        lastReceivedJobStruct[] lastReceivedAdDetails = new Gson().fromJson(lastAdID,lastReceivedJobStruct[].class);
        List<AdPayLoadResponse> adRes = new ArrayList<>();

//        for(int i=0;i<lastReceivedAdDetails.length;i++)
//        {
//            lastReceivedJobStruct temp = lastReceivedAdDetails[i];
            adRes.addAll(MySQLAccess.dbObj.getAdsAround(geohash, MerchantID,String.valueOf(lastAdID)));
//        }

        String str = new Gson().toJson(adRes.toArray(),AdPayLoadResponse[].class);
        return str;
    }
}
