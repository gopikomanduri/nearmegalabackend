package main;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class JobHandler implements Callable {
    JobPayLoad receivedJob;

    public  JobHandler()
    {

    }
    public JobHandler(JobPayLoad obj)
    {
        receivedJob = obj;
    }

    public String getJobsAround(String received)
    {

        lastReceivedJobStruct[] lastReceivedAdDetails = new Gson().fromJson(received,lastReceivedJobStruct[].class);
        List<JobPayLoad> adRes = new ArrayList<>();

        for(int i=0;i<lastReceivedAdDetails.length;i++)
        {
            lastReceivedJobStruct temp = lastReceivedAdDetails[i];
            adRes.addAll(MySQLAccess.dbObj.getJobsAround(temp.geoHash, String.valueOf(temp.jobId)));
        }

        String str = new Gson().toJson(adRes.toArray(),JobPayLoad[].class);
        return str;
    }
    public String getSupportedJobs()
    {
        String str = new Gson().toJson(MySQLAccess.dbObj.getSupportedJobs().toArray(),supportedjobs[].class);
        return str;
    }

    public void insertJob(JobPayLoad obj)
    {
        System.out.println("In inserjob method. lat is "+obj.lng+" lng is "+obj.lng);
        MySQLAccess.dbObj.insertJob(obj);
    }

    @Override
    public Object call() throws Exception {

        //       public boolean insertAd(String MerchantId, String cagory, String vd, String vm, String vy, String imgurl,String itemdesc)
//        String merchantId = receivedAd.merchantid;
//        String geoHash = MySQLAccess.dbObj.getGeoHashForMerchant(merchantId);
//        receivedAd.geo = geoHash;
//
//        MySQLAccess.dbObj.createAdsTableIfNotExist(receivedAd.geo);
//        MySQLAccess.dbObj.insertAd(receivedAd.merchantid, receivedAd.cat, receivedAd.tilldate,
//                receivedAd.tillmonth, receivedAd.tillyear, receivedAd.imgUrl, receivedAd.itemdesc, receivedAd.offercode);
        return null;


    }
}
