package main;

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
            receivedAd.tillmonth, receivedAd.tillyear, receivedAd.imgUrl, receivedAd.itemdesc, receivedAd.offercode, receivedAd.geo);

    MySQLAccess.dbObj.insertIntoNegotiateOffer(adId,receivedAd.geo,receivedAd.negotiate, receivedAd.minBusiness);

    return adId.toString();


    }
}
