package main;

import com.google.gson.Gson;

import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
class LatLng
{
    public Double lat;
    public Double lng;
}

public class MySQLAccess {
    private Connection connect = null;
    private Statement statement = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;
    public static MySQLAccess dbObj = new MySQLAccess();
    public static HashMap<String,LatLng> merchantLatLngs = new HashMap<>();
    public static HashMap<String,String> merchantDp = new HashMap<>();
    private final static String REDIS_FAIL_VALUE = "FAIL";
    public Connection getConnection()
    {
        return connect;
    }
//    private RedisManager redisManager;
    public MySQLAccess()
    {
        initConnection();
    }

    public Connection initConnection()
    {
        try {


 System.out.println("in initConnection");

 if((connect == null) || (connect.isClosed() == true)) {
	 System.out.println("connect is NULL, so establishing connection");
                Class.forName("com.mysql.jdbc.Driver");
                // Setup the connection with the DB
                connect = DriverManager
                        .getConnection("jdbc:mysql://localhost/nearmegala?"
                                + "user=nearme&password=nearme&autoReconnect=true&useSSL=false");
            }
            System.out.println("returning connect");
//            redisManager= new RedisManager();
//            redisManager.StartServer();
            return connect;
        }
        catch (Exception ex)
        {
		 System.out.println("In exception of initConnection "+ex.getMessage());
            return null;
        }

    }
    public void createMerchantAreaTableIfNotExist(String cityName, String areaName, String landMark)
    {
        try {

            String tableName = cityName+"_"+areaName+"_"+landMark;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE merchant;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        }
        catch (Exception ex)
        {

        }
    }

    public void createAdsTableIfNotExist(String geohash)
    {
        try {
            if((connect == null) || (connect.isClosed() == true))

                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, "ad_"+geohash, null);
            if (tables.next()) {
                // Table exists
            }
            else {

                // Table does not exist

                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE ad_"+geohash+"  LIKE ads;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public String getGeoHashForMerchant(String MerchantId)
    {
        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String geoHash = "";
        try {
            preparedStatement = connect
                    .prepareStatement("SELECT geohash  from merchant where MerchantId like '"+MerchantId+"'");
            resultSet = preparedStatement.executeQuery();

            while(resultSet.next())
            {
                 geoHash = resultSet.getString("geohash");
            }
            return geoHash;

        } catch (SQLException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getMerchantsAround(ArrayList<?> geohashes)
    {
        List<merchantDetailsWithCategory> _merchants=new ArrayList<>();
        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        String merchantID = "";
        try {
            for(int i=0;i<geohashes.size();i++) {
                preparedStatement = connect
                        .prepareStatement("SELECT *  from merchant where geohash like '" + geohashes.get(i)+ "'");
                resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    merchantDetailsWithCategory merchantDet=new merchantDetailsWithCategory();
                    merchantDet.merchantId =    resultSet.getString("MerchantId");
                    merchantDet.geoHash =       resultSet.getString("geohash");
                    merchantDet.latitude =      resultSet.getDouble("latitude");
                    merchantDet.longitude =     resultSet.getDouble("longitude");
                    merchantDet.merchantName =  resultSet.getString("MerchantName");
                    merchantDet.merchantPhn =   resultSet.getString("MerchantContact");
                    _merchants.add(merchantDet);
//                    _merchants.add(merchantID);
                }
            }
            for(int j=0;j<_merchants.size();j++)
            {
                _merchants.get(j).category  = getMerchantCategory(_merchants.get(j).merchantId);
            }
            String output = new Gson().toJson(_merchants);
            System.out.println(output);
            return output;

        } catch (SQLException e) {
            e.printStackTrace();
            return "";
        }
    }

    public LatLng getLatLatForMerchant(String MerchantId, String geoHash)
    {

        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT latitude, longitude  from merchant where MerchantId like '"+MerchantId+"' AND geohash like '"+geoHash+"'");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            while(resultSet.next())
            {
                obj.lat = resultSet.getDouble("latitude");
                obj.lng = resultSet.getDouble("longitude");
            }
            return obj;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getMerchantGeohashForId(String MerchantId)
    {
        String geohash = "";

        try {
            if((connect == null ) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT geohash  from merchant where MerchantId like '"+MerchantId+"'");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            //  while(resultSet.next())
            {
                resultSet.next();
                geohash = resultSet.getString("geohash");
            }
            return geohash;

        } catch (SQLException e) {
            e.printStackTrace();
            return geohash;
        }
    }

    public String getMerchantShopNoForId(String MerchantId, String geoHash)
    {
        String merchantName = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT shopNo  from merchant where MerchantId like '"+MerchantId+"' AND geohash like '"+geoHash+"'");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            //  while(resultSet.next())
            {
                resultSet.next();
                merchantName = resultSet.getString("shopNo");
            }
            return merchantName;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantName;
        }
    }

    public String getMerchantMobileNumberForId(String MerchantId, String geoHash)
    {
        String merchantName = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT MerchantContact from merchant where MerchantId like '"+MerchantId+"' AND geohash like '"+geoHash+"'");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            //  while(resultSet.next())
            {
                resultSet.next();
                merchantName = resultSet.getString("MerchantContact");
            }
            return merchantName;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantName;
        }
    }


    public String getMerchantDpForId(String MerchantId)
    {
        String merchantUrl = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT imgurl  from merchant where MerchantId like '"+MerchantId+"' order by Id desc");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            //  while(resultSet.next())
            while(resultSet.next())
            {
                merchantUrl = resultSet.getString("imgurl");
                break;
            }
            return merchantUrl;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantUrl;
        }
    }

    public String getMerchantDpForId(String MerchantId, String geoHash)
    {
        String merchantUrl = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT imgurl  from merchant where MerchantId like '"+MerchantId+"' AND geohash like '"+geoHash+"' order by Id desc");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
              while(resultSet.next())
            {
                merchantUrl = resultSet.getString("imgurl");
                break;
            }
            return merchantUrl;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantUrl;
        }
    }


    public String getMerchantNameForId(String MerchantId)
    {
        String merchantName = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT MerchantName  from merchant where MerchantId like '"+MerchantId+"' order by Id desc");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
              while(resultSet.next())
            {
                merchantName = resultSet.getString("MerchantName");
                break;
            }
            return merchantName;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantName;
        }
    }

    public String getMerchantNameForId(String MerchantId, String geoHash)
    {
        String merchantName = "";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("SELECT MerchantName  from merchant where MerchantId like '"+MerchantId+"' AND geohash like '"+geoHash+"' order by Id desc");
            resultSet = preparedStatement.executeQuery();

            LatLng obj = new LatLng();
            while(resultSet.next())
            {
                merchantName = resultSet.getString("MerchantName");
                break;
            }
            return merchantName;

        } catch (SQLException e) {
            e.printStackTrace();
            return merchantName;
        }
    }









    public String getMaxIdInMerchantTable(String merchantTable)
    {


        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        int Id = 1;
        try {
            statement = connect.createStatement();

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, merchantTable, null);
            if (tables.next()) {
                // Table exists

                statement = connect.createStatement();
                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery("select max(Id) Id from "+merchantTable);


                while (resultSet.next()) {
                    Id = resultSet.getInt("Id");
                }
                Id = Id+1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String Mid = merchantTable+"_"+Integer.toString(Id);
        return Mid;
    }
    public String getMaxIdInMerchantTable(String cityName, String areaName, String landMark)
    {

        String merchantTable = cityName+"_"+areaName+"_"+landMark;

        int Id = 0;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            statement = connect.createStatement();

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, merchantTable, null);
            if (tables.next()) {
                // Table exists

                statement = connect.createStatement();
                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery("select max(Id) from "+merchantTable);


                while (resultSet.next()) {
                    Id = resultSet.getInt("Id");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String Mid = merchantTable+"_"+Integer.toString(Id);
        return Mid;
    }

    public List<JobPayLoad> postJobsAroundBasedOnCategory(String CatId,String SubCatId,String geohashRecived)
    {

        List<JobPayLoad> jobs = new ArrayList<JobPayLoad>();
        String CatName ="-1";
        String SubCatName ="-1";
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
            String sqlgetCatName = "Select jobname from supportedjobs where jobtypeid="+CatId+"";
            PreparedStatement stmnt1 = connect.prepareStatement(sqlgetCatName);
            stmnt1.executeQuery();

            System.out.println("cmd executed is : " + sqlgetCatName);


            try {
                CatName = statement
                        .executeQuery(sqlgetCatName).getNString(0);
            }
            catch(Exception ex){

            }
            //retrive subcatname
            if(CatName!="-1") {
                String sqlgetSubCatName = "Select subjobname from " + CatName + "_subtype where subjobtypeid =" + SubCatId + "";

                PreparedStatement stmnt2 = connect.prepareStatement(sqlgetSubCatName);
                stmnt2.executeQuery();

                System.out.println("cmd executed is : " + sqlgetSubCatName);


                try {
                    SubCatName = statement
                            .executeQuery(sqlgetSubCatName).getNString(0);
                } catch (Exception ex) {

                }
            }

            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

//            String sqlcmd = "select * from job_" + geohashRecived+"_"+CatName+"_"+SubCatName+" where idjobs > "+maxJobIdReceived+"  AND postedon >= '"+Util.getCurrentDate()+"' ";
            String sqlcmd = "CREATE TABLE job_"+ geohashRecived+"_"+CatName+"_"+SubCatName+"  LIKE jobs;";



            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            //   stmnt.setInt(1, maxJobIdReceived);
            //  stmnt.setDate(2, Util.getCurrentDate());
            stmnt.executeQuery();



            System.out.println("cmd executed is : " + sqlcmd);


            resultSet = statement
                    .executeQuery(sqlcmd);

            return resultSetToJobPayLoad(resultSet, geohashRecived);
        }
        catch(Exception ex)
        {
            return jobs;
        }
    }

    public List<JobPayLoad> getJobsAroundBasedOnCategory(String CatId,String SubCatId,String lastJobID,String geohashRecived)
    {

        List<JobPayLoad> jobs = new ArrayList<JobPayLoad>();
        String CatName ="-1";
        String SubCatName ="-1";
        try {

            Integer maxJobIdReceived = Integer.valueOf(lastJobID);

            if(connect.isClosed() == true)
                connect = initConnection();
            //retrive jobname based on catid
            String sqlgetCatName = "Select jobname from supportedjobs where jobtypeid="+CatId+"";

            PreparedStatement stmnt1 = connect.prepareStatement(sqlgetCatName);
            stmnt1.executeQuery();

            System.out.println("cmd executed is : " + sqlgetCatName);


            try {
                CatName = statement
                        .executeQuery(sqlgetCatName).getNString(0);
            }
            catch(Exception ex){

            }
            //retrive subcatname
            if(CatName!="-1") {
                String sqlgetSubCatName = "Select subjobname from " + CatName + "_subtype where subjobtypeid =" + SubCatId + "";

                PreparedStatement stmnt2 = connect.prepareStatement(sqlgetSubCatName);
                stmnt2.executeQuery();

                System.out.println("cmd executed is : " + sqlgetSubCatName);


                try {
                    SubCatName = statement
                            .executeQuery(sqlgetSubCatName).getNString(0);
                } catch (Exception ex) {

                }
            }

            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select * from job_" + geohashRecived+"_"+CatName+"_"+SubCatName+" where idjobs > "+maxJobIdReceived+"  AND postedon >= '"+Util.getCurrentDate()+"' ";




            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            //   stmnt.setInt(1, maxJobIdReceived);
            //  stmnt.setDate(2, Util.getCurrentDate());
            stmnt.executeQuery();



            System.out.println("cmd executed is : " + sqlcmd);


            resultSet = statement
                    .executeQuery(sqlcmd);

            return resultSetToJobPayLoad(resultSet, geohashRecived);
        }
        catch(Exception ex)
        {
            return jobs;
        }
    }
    public List<JobPayLoad> getJobsAround(String geohash, String lastJobId)
    {
        List<JobPayLoad> jobs = new ArrayList<JobPayLoad>();
        try {
                Integer maxJobIdReceived = Integer.valueOf(lastJobId);
                String sqlcmd = "select * from job_" + geohash+" where idjobs > "+maxJobIdReceived+"  AND postedon >= '"+Util.getCurrentDate()+"' ";
                if(connect.isClosed())
                    connect = initConnection();
                PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
                stmnt.executeQuery();
                System.out.println("cmd executed is : " + sqlcmd);
                resultSet = statement
                    .executeQuery(sqlcmd);
            return resultSetToJobPayLoad(resultSet, geohash);
        }
        catch(Exception ex)
        {
            return jobs;
        }
    }
    public List<AdPayLoadResponse> getAdsAroundBasedOnCategory(String geohash, String Category,String lastAdId )
    {
        List<AdPayLoadResponse> jobs = new ArrayList<AdPayLoadResponse>();
        try {
            Integer maxAdIdReceived = Integer.valueOf(lastAdId);
            String sqlcmd = "select * from ad_" + geohash+" where Id > "+maxAdIdReceived+"  AND Category = '"+Category+"' ";
            if(connect.isClosed())
                connect = initConnection();
            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            stmnt.executeQuery();
            System.out.println("cmd executed is : " + sqlcmd);
            resultSet = statement
                    .executeQuery(sqlcmd);
            return resultSetToAdPayLoad(resultSet, geohash);
        }
        catch(Exception ex)
        {
            return jobs;
        }
    }

    public List<AdPayLoadResponse> getAdsAround(String geohash, String MerchantID,String lastAdId )
    {
        List<AdPayLoadResponse> jobs = new ArrayList<AdPayLoadResponse>();
        try {
             Integer maxAdIdReceived = Integer.valueOf(lastAdId);
             String sqlcmd = "select * from ad_" + geohash+" where Id > "+maxAdIdReceived+"  AND MerchantId = '"+MerchantID+"' ";
             if(connect.isClosed())
                connect = initConnection();
             PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            stmnt.executeQuery();
            System.out.println("cmd executed is : " + sqlcmd);
            resultSet = statement
                    .executeQuery(sqlcmd);
            return resultSetToAdPayLoad(resultSet, geohash);
        }
        catch(Exception ex)
        {
            return jobs;
        }
    }

    public String insertJob(JobPayLoad obj)
    {

        Integer generatedKey = -1;

        createjobtable(obj.geoHash);

        String jobTable = "job_"+obj.geoHash;

        String tableName = jobTable;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*

employername varchar(512)
employerlocationurl varchar(256)
jobDescription varchar(256)
locationLandmark varchar(128)
offeringpost varchar(64)
educationQualification varchar(64)
experienceReq varchar(26)
sex varchar(10)
ageLimitation varchar(10)
contact varchar(16)
emailId varchar(128)
interviewDate varchar(45)
shiftTimings varchar(45)
salary varchar(45)
postedon DATE
lat VARCHAR(10)
LNG VARCHAR(10)
         */

        System.out.println("the lat received for job is "+obj.lat+" \n the lng received for job is "+obj.lng);

        try {
            String sql = "INSERT INTO "+tableName+" (employername, employerlocationurl, jobDescription, locationLandmark, offeringpost," +
                    "educationQualification, experienceReq, sex, ageLimitation, contact, emailId, interviewDate,shiftTimings, salary,  lat, lng, postedon)" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, obj.employername);
            preparedStatement.setString(2, obj.employerlocationurl);
            preparedStatement.setString(3, obj.jobDescription);
            preparedStatement.setString(4, obj.locationLandmark);
            preparedStatement.setString(5, obj.offeringpost);
            preparedStatement.setString(6, obj.educationQualification);
            preparedStatement.setString(7, obj.experienceReq);
            preparedStatement.setString(8, obj.sex);
            preparedStatement.setString(9, obj.ageLimitation);
            preparedStatement.setString(10, obj.contact);
            preparedStatement.setString(11, obj.emailId);
            preparedStatement.setString(12, obj.interviewDate);
            preparedStatement.setString(13, obj.shiftTimings);
            preparedStatement.setString(14, obj.salary);
            preparedStatement.setString(15, obj.lat);
            preparedStatement.setString(16, obj.lng);
            preparedStatement.setDate(17, Util.getCurrentDate());



            preparedStatement.executeUpdate();

            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                 generatedKey = rs.getInt(1);
            }            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }

    private void createjobtable(String geoHash) {

        try {

            String tableName = "job_"+geoHash;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE jobs;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        }
        catch (Exception ex)
        {

        }

    }

    public Integer insertMerchantSlot(Merchantslot obj)
    {

        Integer generatedKey = -1;

        int isCreated = createMerchantSlotTable(obj.MerchantId,true);

        String slotTable = obj.MerchantId+"_slots";

        String tableName = slotTable;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for merchant is "+obj.MerchantId+" \n is "+obj.FromTime);
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + tableName + " (FromEpoHash, ToEpoHash, CURTOKEN, MAXTOKEN)" +
                        "VALUES (?, ?, ?, ?)";
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setString(1, obj.FromTime);
                preparedStatement.setString(2, obj.ToTime);
                preparedStatement.setInt(3, obj.MaxToken);
                preparedStatement.setInt(4, obj.MaxToken);
                preparedStatement.executeUpdate();

                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    generatedKey = rs.getInt(1);
                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }



    public boolean CheckIfSlotMatches(Merchantslot obj)
    {
        boolean slotExist = false;
        Integer generatedKey = -1;

        int isCreated = createMerchantSlotTable(obj.MerchantId,false);

        String slotTable = obj.MerchantId+"_slots";

        try {
            if(connect.isClosed())
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for merchant is "+obj.MerchantId+" \n is "+obj.FromTime);
        if(isCreated!=-1) {
            try {
                //EXTRACT(DATE FROM TIMESTAMP_MILLIS(ToEpoHash))

                //String sql = "SELECT count(*) as count FROM " + slotTable + " where FROM_UNIXTIME(FromEpoHash) >= FROM_UNIXTIME(" + obj.FromTime+ ") and FROM_UNIXTIME(ToEpoHash)< FROM_UNIXTIME(" + obj.FromTime+ ")";
                String sql = "SELECT count(*) as count FROM " + slotTable + " where FromEpoHash >= " + obj.FromTime+ " and ToEpoHash< " + obj.FromTime;
                System.out.println("query executing is " + sql);
                statement = connect.createStatement();
                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery(sql);

                if (resultSet.next()) {
                    if(resultSet.getInt("count")>0)
                    {
                        slotExist=true;
                    }
                }
                statement.close();
                return slotExist;

            } catch (SQLException e) {
                e.printStackTrace();
                return slotExist;
            }
        }
        return slotExist;
    }

    public boolean CheckIfUserExistInSlot(String MerchantID, String UserID,String Epoch)
    {

        boolean userExist = false;

        int isCreated = createUserSlotTable(UserID,false);

        String slotTable = "User_"+UserID+"_Slots";

        try {
            if(connect.isClosed())
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for user verification is");
        if(isCreated!=-1) {
            try {
                String sql = "SELECT count(*) as count FROM " + slotTable + " where Merchant_id  = '" + MerchantID+ "' and selectedSlotEpochHash = " +Epoch;
                System.out.println("query executing is " + sql);
                statement = connect.createStatement();
                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery(sql);

                if (resultSet.next()) {
                    if(resultSet.getInt("count")>0)
                    {
                        userExist=true;
                    }
                }
                statement.close();
                return userExist;

            } catch (SQLException e) {
                e.printStackTrace();
                return userExist;
            }
        }
        return userExist;
    }

    public Integer insertUserSlot(String userID,String Merchant_id,String selectedSlotEpochHash,int NoofTokens)
    {
        System.out.println("registering user into slot in userslot_table"+userID);
        Integer generatedKey = -1;

        int isCreated = createUserSlotTable(userID,true);

        String slotTable = "User_"+userID+"_Slots";

        String tableName = slotTable;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for user is "+userID);
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + tableName + " (Merchant_id, selectedSlotEpochHash, NoofTokens)" +
                        "VALUES (?, ?, ?)";
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setString(1, Merchant_id);
                preparedStatement.setString(2, selectedSlotEpochHash);
                preparedStatement.setInt(3, NoofTokens);
                preparedStatement.executeUpdate();

                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    generatedKey = rs.getInt(1);
                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }

    public Integer insertMerchantAdEvent(int adId,String Merchant_id,int event)
    {
        System.out.println("Entered adding Ad event with id : "+event);
        Integer generatedKey = -1;

        int isCreated = createMerchantEventAdRegisterTable(Merchant_id,true);

        String slotTable = Merchant_id+"_ad_events";

        String tableName = slotTable;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Added table! ");
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + tableName + " (EventID, adID)" +
                        "VALUES (?, ?)";
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setInt(1, event);
                preparedStatement.setInt(2, adId);
                preparedStatement.executeUpdate();
                generatedKey=1;
                //ResultSet rs = preparedStatement.getGeneratedKeys();
//                if (rs.next()) {
//                    generatedKey = rs.getInt(1);
//                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }


    public String updateMerchantSlot(String MerchantID,int epochID,int TokensRequested,String UserID,String selectedSlotEpochHash)
    {

        Integer generatedKey = -1;
        boolean isMerchantOpen=false;
        String tableName = MerchantID+"_slots";
        boolean isRedisAvailable=false;
//        if(redisManager.PingRedis())
//        {
//            isRedisAvailable =true;
//            System.out.println("redis started");
//        }
//        else
//        {
//            System.out.println("redis not started");
//            redisManager.StartServer();
//            if(redisManager.PingRedis())
//            {
//                System.out.println("redis started now");
//            }
//        }
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
            DatabaseMetaData dmd = connect.getMetaData();

            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                isMerchantOpen=true;
            } ;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        int curMaxToken=-1;
        if(isMerchantOpen && !CheckIfUserExistInSlot(MerchantID,UserID,selectedSlotEpochHash)) {
            try {
//                String cachedValue =  redisManager.getCachedValue(MerchantID+"_"+epochID+"_"+selectedSlotEpochHash).toString();
                String sql;
//                if(!cachedValue.equals(REDIS_FAIL_VALUE)) {
                    sql = "Select MAXTOKEN from " + tableName + " where EPOCHID=" + epochID + " and FromEpoHash=" + selectedSlotEpochHash;
                    System.out.println("query executing is " + sql);
                    statement = connect.createStatement();
                    // Result set get the result of the SQL query
                    resultSet = statement
                            .executeQuery(sql);

                    if (resultSet.next()) {
                        curMaxToken = resultSet.getInt("MAXTOKEN");
//                        redisManager.insertStringToCache(MerchantID+"_"+epochID+"_"+selectedSlotEpochHash,String.valueOf(curMaxToken));
                    }
//                }
//                else
//                {
//                    //Take Cached Value
//                    curMaxToken=Integer.parseInt(cachedValue);
//                }
                System.out.println("the curMax Token received for merchant is "+MerchantID+" \n is "+curMaxToken);
//                redisManager.insertStringToCache(MerchantID+"_"+epochID+"_"+selectedSlotEpochHash,String.valueOf(curMaxToken-TokensRequested));
                if(curMaxToken>0 && (curMaxToken-TokensRequested)>=0) {
                    sql = "UPDATE " + tableName + " SET MAXTOKEN = " +
                            (curMaxToken-TokensRequested) + " Where EPOCHID  = " + epochID;

                    PreparedStatement preparedStatement = connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
                    preparedStatement.executeUpdate();

                    ResultSet rs = preparedStatement.getGeneratedKeys();
                    if (rs.next()) {
                        generatedKey = rs.getInt(1);
                    }
                    preparedStatement.close();
                    //if(generatedKey!=-1){
                    generatedKey = insertUserSlot(UserID,MerchantID,selectedSlotEpochHash,TokensRequested);

                    System.out.println("the slot received for user is genreated key is "+generatedKey.toString());
                    //}
                    return "Success";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey.toString();
            }
        }
        else
        {
            generatedKey=-2;
        }
        return generatedKey.toString();
    }

    public String getUserSlots(String userID,String FromTime,String toTime,String contact) {
        List<UserSlot> objList = new ArrayList<UserSlot>();
        String merchantjson="";
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
            String slotTable = "User_"+userID + "_Slots";

            String merchantQuery = "SELECT * FROM " + slotTable + " where  selectedSlotEpochHash  >=" + FromTime + " AND selectedSlotEpochHash  <=" + toTime + " order by id DESC";


            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            ResultSet _resultSet = statement
                    .executeQuery(merchantQuery);

            while (_resultSet.next()) {
                UserSlot uSlot = new UserSlot();
                uSlot.id = _resultSet.getInt("id");
                uSlot.MerchantId = _resultSet.getString("Merchant_id");
                String epoch = _resultSet.getString("selectedSlotEpochHash");
                uSlot.tokensRequested = _resultSet.getInt("NoofTokens");
                try {
                    Merchantslot mslot = getMerchantSlotDetails(uSlot.MerchantId, epoch);//Move this by maintaing in FreqUsed collection
                    System.out.println("failed extacting slot details ");
                    uSlot.selectedSlotEndHash = mslot.ToTime;
                    uSlot.selectedSlotStartHash = mslot.FromTime;

                    String mDet = getMerchantDetails(uSlot.MerchantId);//Move this by maintaing in FreqUsed collection
                    merchantDetails merObj = new Gson().fromJson(mDet, merchantDetails.class);
                    System.out.println("failed extacting merch details ");
                    uSlot.MerchantName = merObj.merchantId;
                    uSlot.MerchantLat = merObj.latitude.toString();
                    uSlot.MerchantLng = merObj.longitude.toString();
                }
                catch (Exception ex)
                {
                    System.out.println("failed extacting user details ");
                }
                objList.add(uSlot);
            }

            merchantjson = new Gson().toJson(objList);
            System.out.println("returning user details  " + merchantjson.toString());
            return merchantjson;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return merchantjson;
    }

    public String getMerchantSlots(String MerchantID,String FromTime,String toTime) {
        List<Merchantslot> objList = new ArrayList<Merchantslot>();
        String merchantjson="";
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
            String slotTable = MerchantID + "_slots";

            String merchantQuery = "SELECT * FROM " + slotTable + " where  FromEpoHash >=" + FromTime + " AND ToEpoHash <=" + toTime + " order by EPOCHID DESC";


            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);

            while (resultSet.next()) {
                Merchantslot mSlot = new Merchantslot();

                mSlot.Slot_ID = resultSet.getInt("EPOCHID");
                mSlot.MaxToken = resultSet.getInt("MAXTOKEN");
                mSlot.FromTime = resultSet.getString("FromEpoHash");
                mSlot.ToTime = resultSet.getString("ToEpoHash");
                mSlot.MerchantId = MerchantID;
                mSlot.CurToken = resultSet.getInt("CURTOKEN");

                objList.add(mSlot);
            }

            merchantjson = new Gson().toJson(objList);
            System.out.println("returning user details  " + merchantjson.toString());
            return merchantjson;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return merchantjson;
    }

    public Merchantslot getMerchantSlotDetails(String MerchantID,String EpochID) {
        Merchantslot obj= null;
        String merchantjson="";
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
            String slotTable = MerchantID + "_slots";

            String merchantQuery = "SELECT * FROM " + slotTable + " where  FromEpoHash =" + EpochID ;


            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);

            while (resultSet.next()) {
                Merchantslot mSlot = new Merchantslot();

                mSlot.Slot_ID = resultSet.getInt("EPOCHID");
                mSlot.MaxToken = resultSet.getInt("MAXTOKEN");
                mSlot.FromTime = resultSet.getString("FromEpoHash");
                mSlot.ToTime = resultSet.getString("ToEpoHash");
                mSlot.MerchantId = MerchantID;
                mSlot.CurToken = resultSet.getInt("CURTOKEN");
                System.out.println("recived details ");
                if(obj==null)
                    obj=mSlot;
            }


            return obj;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return obj;
    }

    public int createMerchantSlotTable(String merchantID,boolean create) {
        int out=-1;
        try {

            String tableName = merchantID+"_slots";
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
                out=1;
            } else if (create){
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE Merchant_slots;";
                statement.executeUpdate(createStatement);
                statement.close();
                out=0;
            }
        }
        catch (Exception ex)
        {

        }
        return  out;
    }

    public int createMerchantEventTable(String merchantID,boolean create) {
        int out=-1;
        try {

            String tableName = merchantID+"_events";
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
                out=1;
            } else if (create){
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE Merchant_events;";
                statement.executeUpdate(createStatement);
                statement.close();
                out=0;
            }
        }
        catch (Exception ex)
        {

        }
        return  out;
    }

    public int createMerchantEventAdRegisterTable(String merchantID,boolean create) {
        int out=-1;
        try {

            String tableName = merchantID+"_ad_events";
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
                out=1;
            } else if (create){
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE Merchant_ad_events;";
                System.out.println(createStatement);
                statement.executeUpdate(createStatement);
                statement.close();
                System.out.println("Added table! ");
                out=0;
            }
        }
        catch (Exception ex)
        {
            System.out.println(ex.getMessage().toString());
        }
        return  out;
    }

    public int createUserSlotTable(String userID,boolean create) {
        int out=-1;
        try {

            String tableName = "User_"+userID+"_Slots";
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
                out=1;
            } else if(create){
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE user_Slots;";
                statement.executeUpdate(createStatement);
                statement.close();
                out=0;
            }
        }
        catch (Exception ex)
        {

        }
        return  out;
    }

    public String getUserDetails(String number,consumerFirebasepayload _firePayload)
    {
        consumerpayload temp = new consumerpayload();
        try {
            if(connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM consumers where  contact like '%"+number+"%' order by idconsumers DESC";


            System.out.println("query executing is "+merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
                    /*
consumername varchar(128)
contact varchar(15)
DOB date
dpurl varchar(256)
registeredon datetime
status int(11)
sex int(11)
         */
            if(resultSet.next()) {
                temp.idconsumers=resultSet.getInt("idconsumers");
                temp.consumername = resultSet.getString("consumername");
                temp.contact = resultSet.getString("contact");
                temp.dob = resultSet.getDate("DOB").toString();
                temp.dpurl = resultSet.getString("dpurl");
                temp.sex = resultSet.getInt("sex");
            }
            if(temp.idconsumers!=null ) {
                try {
//                    if (_firePayload != null) {
                        insertIntoFirebaseDetails(temp.idconsumers, _firePayload, true);
//                    } else {
//                        insertIntoFirebaseDetails(temp.idconsumers, _firePayload, false);
//                    }
                }
                catch (Exception ex) {

                }
            }
            String merchantjson = new Gson().toJson(temp);
            System.out.println("returning user details  "+merchantjson.toString());
            return merchantjson;
        }
         catch (SQLException e) {
            e.printStackTrace();
        }
        String merchantjson = new Gson().toJson(temp);

        return merchantjson;
    }

    public String getUserDetailsbyID(int id,consumerFirebasepayload _firePayload)
    {
        consumerpayload temp = new consumerpayload();
        try {
            if(connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM consumers where  idconsumers  ="+id+" ;";


            System.out.println("query executing is "+merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
                    /*
consumername varchar(128)
contact varchar(15)
DOB date
dpurl varchar(256)
registeredon datetime
status int(11)
sex int(11)
         */
            if(resultSet.next()) {
                temp.idconsumers=resultSet.getInt("idconsumers");
                temp.consumername = resultSet.getString("consumername");
                temp.contact = resultSet.getString("contact");
                temp.dob = resultSet.getDate("DOB").toString();
                temp.dpurl = resultSet.getString("dpurl");
                temp.sex = resultSet.getInt("sex");
            }
            if(temp.idconsumers!=null ) {
                try {
//                    if (_firePayload != null) {
                    insertIntoFirebaseDetails(temp.idconsumers, _firePayload, true);
//                    } else {
//                        insertIntoFirebaseDetails(temp.idconsumers, _firePayload, false);
//                    }
                }
                catch (Exception ex) {

                }
            }
            String merchantjson = new Gson().toJson(temp);
            System.out.println("returning user details  "+merchantjson.toString());
            return merchantjson;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        String merchantjson = new Gson().toJson(temp);

        return merchantjson;
    }

    public String getUserFireDetails(int consumerID)
    {
        consumerFirebasepayload temp = new consumerFirebasepayload();
        try {
            if(connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM consumerFireIDs where  consumerID ="+consumerID;


            System.out.println("query executing is "+merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
                    /*
consumername varchar(128)
contact varchar(15)
DOB date
dpurl varchar(256)
registeredon datetime
status int(11)
sex int(11)
         */
            if(resultSet.next()) {
                temp.FirebaseInstanceID=resultSet.getString("FirebaseInstanceID");
            }

            String merchantjson = temp.FirebaseInstanceID;
            System.out.println("returning user details  "+merchantjson.toString());
            return merchantjson;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        String merchantjson = temp.FirebaseInstanceID;

        return merchantjson;
    }

    public String getTokenContact(String merchantID,int token){
        String token_contact=null;
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            String sql = "Select contact from "+merchantID+"_token_log where TokenID = "+token;;

            statement = connect.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                token_contact = resultSet.getString("contact");
            }
            System.out.println("command executed is " + sql);
            return token_contact;

        } catch (SQLException e) {
            e.printStackTrace();
            return token_contact;
        }
    }
    public String crudMerchantsTokens(token obj,String merchantID,Util.CRUD crudOperation) {
        Integer generatedKey = -1;
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            String sql = "";
            if (crudOperation == Util.CRUD.INSERT) {
                sql = "INSERT INTO " + merchantID + "_token_log" + " (TokenID , Position ,  FirebaseID ,contact) " +
                        "VALUES (?, ?, ?,?)";
            } else if (crudOperation == Util.CRUD.UPDATE) {
                sql = "UPDATE " + merchantID + "_token_log" + " SET Position = " + obj.position + " Where TokenID  = " + obj.token_id;

            } else if (crudOperation == Util.CRUD.DELETE) {
                sql = "DELETE from  " + merchantID + "_token_log" + " Where TokenID  = " + obj.token_id;

            }
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            if (crudOperation == Util.CRUD.INSERT) {
                preparedStatement.setInt(1, obj.token_id);
                preparedStatement.setInt(2, obj.position);
                preparedStatement.setString(3, obj.FirebaseID);
                preparedStatement.setString(4, obj.contact);
            }
            preparedStatement.executeUpdate();
            preparedStatement.close();
            generatedKey = obj.token_id;
            System.out.println("command executed is " + sql);
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }
    public int getTokenCompletedCustomersCount(String merchantID){

    int count=-1;
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            String sql = "SELECT COUNT(*) as count from " + merchantID + "_token_log where Position < 0 ";

            statement = connect.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                count = resultSet.getInt("count");
            }
            System.out.println("command executed is " + sql);
            System.out.println("Count received  is " + count);
        }
        catch (Exception ex)
        {

        }
        return count;
    }
    public List<token> getNextTokensinwait(String merchantID,int FromToken,int upto, int limitto) {
        List<token> fireIds = null;
        try {
            if (connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            int currentTokenPosition =getTokenCompletedCustomersCount(merchantID);
            String sql = "Select * from "+merchantID+"_token_log where TokenID > "+FromToken+" LIMIT "+upto;;

            statement = connect.createStatement();
            resultSet = statement.executeQuery(sql);
            int index=0;
            while (resultSet.next()) {
                index++;
                token tkObj=new token();
                tkObj.token_id= resultSet.getInt("TokenID");
                tkObj.position= tkObj.token_id -currentTokenPosition; //resultSet.getInt("Position");
                tkObj.FirebaseID= resultSet.getString("FirebaseID");
                tkObj.contact= resultSet.getString("contact");
                if(fireIds==null){
                    fireIds=new ArrayList<token>();
                }
                boolean isSatisfactoryCondition=false;
                if(index<=10) { //first ten tokens
                    isSatisfactoryCondition=true;
                }
                else if (index<=50 && index%2==0) //for next 50 tokens it is %2 all even
                {
                    isSatisfactoryCondition=true;
                }
                else if (index<=100 && index%5==0) //for next 50 tokens it is %5 all even
                {
                    isSatisfactoryCondition=true;
                }
                else if (index<=1000 && index%10==0) //for next 1000 tokens it is %10 all even
                {
                    isSatisfactoryCondition=true;
                }
                if(isSatisfactoryCondition)
                {
                    fireIds.add(tkObj);
                }
//                if(fireIds.size() == limitto){
//                    break;
//                }
            }
            System.out.println("command executed is " + sql);
            return fireIds;

        } catch (SQLException e) {
            e.printStackTrace();
            return fireIds;
        }
    }
    public String insertIntoUser(consumerpayload obj)
    {
        LocalDateTime now = LocalDateTime.now();
        String tableName = "consumers";
        Integer generatedKey = -1;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        /*
consumername varchar(128)
contact varchar(15)
DOB date
dpurl varchar(256)
registeredon datetime
status int(11)
sex int(11)
         */



        try {

            Date dateval = Util.stringToDate(obj.dob,null);
            String sql = "INSERT INTO consumers (consumername, contact,  DOB, dpurl, sex)" +
                    "VALUES (?, ?, ? ,? ,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, obj.consumername);
            preparedStatement.setString(2, obj.contact);
            preparedStatement.setDate(3, dateval);
            preparedStatement.setString(4, obj.dpurl);
            preparedStatement.setInt(5, obj.sex);



            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();

            try{insertIntoFirebaseDetails(generatedKey,obj.FirebaseDetails,false);}
            catch (Exception ex) {

            }
            System.out.println("command executed is "+sql);
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }
    public String insertIntoFirebaseDetails(int consumerID,consumerFirebasepayload FirebaseInstanceID,boolean isUpdate)
    {

        String sql = "INSERT INTO consumerFireIDs (consumerID,FirebaseInstanceID)" +
                "VALUES (?,?)";
        if(isUpdate){
            sql = "UPDATE consumerFireIDs SET FirebaseInstanceID = '"+FirebaseInstanceID.FirebaseInstanceID +"' Where consumerID = "+consumerID;

//            String nego_sql =  "UPDATE negotiationsresponse_"+obj.geohashes +" SET canPostToStatus = 0 WHERE notificationid="+obj.idnotification;

        }
        Integer retVal = -1;
        try {
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            if(isUpdate){
                preparedStatement = connect
                        .prepareStatement(sql);
                preparedStatement.executeUpdate();
                retVal = consumerID;
            }else {
                preparedStatement.setInt(1, consumerID);
                preparedStatement.setString(2, FirebaseInstanceID.FirebaseInstanceID);
                preparedStatement.executeUpdate();


                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    retVal = rs.getInt(1);
                }
                preparedStatement.close();

            }
            preparedStatement.close();
            System.out.println("command executed is "+sql);
            return retVal.toString();
        }
        catch(Exception ex)
        {
            return retVal.toString();
        }

    }

    public String insertIntovaccineRegistartions(int consumerID,String pincode)
    {

        String sql = "INSERT INTO VaccineRegistrations (ConsumerID ,pincode)" +
                "VALUES (?,?)";
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("executing  "+sql);
        Integer retVal = -1;
        try {
            PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setInt(1, consumerID);
                preparedStatement.setString(2, pincode);
                preparedStatement.executeUpdate();


                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    retVal = rs.getInt(1);
                }
                preparedStatement.close();


//            preparedStatement.close();
            System.out.println("command executed is "+sql);
            return retVal.toString();
        }
        catch(Exception ex)
        {
            return retVal.toString();
        }

    }

    public List<VaccineRegistration> getvaccineRegistartions()
    {

        String sql = "Select * from VaccineRegistrations;";
        List<VaccineRegistration> vaccineRegistrations =new ArrayList<VaccineRegistration>();
        Integer retVal = -1;
        try {
            PreparedStatement tstmnt = connect.prepareStatement(sql);
            if(connect.isClosed() == true)
                connect = initConnection();
            tstmnt.executeQuery();
            Statement statement1 = connect.createStatement();
            ResultSet resultSet1 = statement1
                    .executeQuery(sql);
//            VaccineRegistration obj=new VaccineRegistration;
            while (resultSet1.next()) {
                VaccineRegistration obj= new VaccineRegistration();
                obj. consumerID= resultSet1.getInt("consumerID");
                obj. pincode= resultSet1.getString("pincode");
                vaccineRegistrations.add(obj);
            }
//            preparedStatement.close();
            System.out.println("command executed is "+sql);
            return vaccineRegistrations;
        }
        catch(Exception ex)
        {
            return vaccineRegistrations;
        }

    }
    public String insertIntoBirthdays(String contact)
    {
        String sql = "INSERT INTO birthdays (contact)" +
                "VALUES (?)";
        Integer retVal = -1;
        try {
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, contact);

            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                retVal = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();


            System.out.println("command executed is "+sql);
            return retVal.toString();
        }
        catch(Exception ex)
        {
            return retVal.toString();
        }

    }

    public String insertIntoStatus(statuspayload obj)
    {
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        createTableIfNotExistGeneric("status",obj.geohashes);

        String table = "status_"+obj.geohashes;

/*

idnotification int(11)
validfrom date
validto date
contact varchar(15)
canjoin int(11)
bringcharges int(11)
registeredcontactnumber varchar(15)
finaldiscount int(11)
geohash varchar(45)
places varchar(45)
joinedcount int(11)
shoppingdate date
offerdesc varchar(128)
value int(11)
flat int(11)
ispercentage int(11)
 */

Integer generatedKey = -1;
        try {

            Date validFrom = Util.stringToDate(obj.validfrom,"dd-mm-yyyy");
            Date validTo = Util.stringToDate(obj.validto,"dd-mm-yyyy");
            Date shoppingdate = Util.stringToDate(obj.shoppingdate,"dd-mm-yyyy");

            String sql = "INSERT INTO "+table+" (idnotification, validfrom,  validto, contact, canjoin, " +
                    "bringcharges, registeredcontactnumber, finaldiscount, geohash, shoppingdate, offerdesc, value, flat, ispercentage," +
                    "imgurl)" +
                    " VALUES (?, ?, ? ,? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, obj.idnotification);
            preparedStatement.setDate(2, validFrom);
            preparedStatement.setDate(3, validTo);
            preparedStatement.setString(4, obj.contactOn);
            preparedStatement.setInt(5, obj.join);
            preparedStatement.setInt(6, obj.extraforbringing);
            preparedStatement.setString(7, obj.registeredcontactnumber);
            preparedStatement.setInt(8, obj.finaldiscount);
            preparedStatement.setString(9, obj.geohashes);
            preparedStatement.setDate(10, shoppingdate);
            preparedStatement.setString(11, obj.offerdesc);
            preparedStatement.setInt(12, obj.value);
            preparedStatement.setInt(13, obj.flat);
            preparedStatement.setInt(14, obj.ispercentage);
            preparedStatement.setString(15, obj.imgurl);


            System.out.println(preparedStatement.toString());


            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();


            System.out.println("command executed is "+sql);
            System.out.println("Update Status Visibility in negotiationsresponse");
//

           String nego_sql =  "UPDATE negotiationsresponse_"+obj.geohashes +" SET canPostToStatus = 0 WHERE notificationid="+obj.idnotification;
            System.out.println("negotiationsresponse is "+nego_sql);
            preparedStatement = connect
                    .prepareStatement(nego_sql);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }


    }


    public Integer deletefromsmsids(String id)
    {

        /*

idsmsid int(11) AI PK
userid varchar(45)
password varchar(45)
         */
        String tableName = "smsids";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            preparedStatement = connect
                    .prepareStatement("delete from smsids where userid like ? ; ");
            preparedStatement.setString(1, "id");
            preparedStatement.executeUpdate();
            preparedStatement.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public Integer deactivatesmsid(String id)
    {

        /*

idsmsid int(11) AI PK
userid varchar(45)
password varchar(45)
         */
        String tableName = "smsids";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {

            PreparedStatement update = connect.prepareStatement
                    ("UPDATE smsids SET active = 0 WHERE userid = ?");


            update.setString(1, id);

            update.executeUpdate();

            update.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public Integer insertIntosmsids(String id, String password)
    {

        /*

idsmsid int(11) AI PK
userid varchar(45)
password varchar(45)
         */
        String tableName = "smsids";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            String sql = "INSERT INTO "+tableName+" (userid, password)" +
                    "VALUES (?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1,id);
            preparedStatement.setString(2, password);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }



    public List<String> fetchsmsids()
    {
        List<String> ids = new LinkedList<>();
        try
        {
             if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();



            String pointsQuery = "SELECT userid FROM smsids where active=1";

            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(pointsQuery);



            String smsid;
            while (resultSet.next()) {
                smsid= resultSet.getString("userid");
                ids.add(smsid);
            }

            return ids;
        }
        catch(Exception ex)
        {
            System.out.println("exception while fetching smsids . exception is "+ex.getMessage());
            return ids;
        }
    }

    public Integer insertIntoMerchantAsEmp(String id, String password, String merchantId, String tableName)
    {

        /*


        idcounters int(11) AI PK
counterid varchar(45) PK
password varchar(45)
merchantid varchar(45)
createdon datetime
closedon datetime
         */
        //String tableName = "counters";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {


            String sql = "INSERT INTO "+tableName+" (counterid, password,merchantid)" +
                    "VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1,id);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, merchantId);



            preparedStatement.executeUpdate();
            preparedStatement.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String changeMerchantPwd(String merchantContact, String pwd)
    {

        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            PreparedStatement update = connect.prepareStatement
                    ("UPDATE merchant SET password = ? WHERE MerchantContact = ? ");

            update.setString(1, pwd);
            update.setString(2, merchantContact);

            update.executeUpdate();
            return "1";

        }
        catch (Exception ex)
        {
            return "0";
        }
        }
    public String registerMerchantCategory(String merchantID,String category){
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {//ON DUPLICATE KEY UPDATE
            String sql = "INSERT INTO Merchant_categories (MerchantID, selectedCategories)" +
                    "VALUES (?, ?) ON DUPLICATE KEY UPDATE selectedCategories = "+category;
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1,merchantID);
            preparedStatement.setString(2, category);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            return category;

        } catch (SQLException e) {
            e.printStackTrace();
            return "-1";
        }
    }

    public Integer registerMerchantEvent(String merchantID,String eventCondition)
    {

        Integer generatedKey = -1;

        int isCreated = createMerchantEventTable(merchantID,true);

        String eventTable = merchantID+"_events";

        String tableName = eventTable;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for merchant is "+merchantID);
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + tableName + " (eventCondition)" +
                        "VALUES (?)";
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setString(1, eventCondition);
                preparedStatement.executeUpdate();

                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    generatedKey = rs.getInt(1);
                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }

    public String getMerchantEvents(String merchantID) {
        try {
            List<EventPayload> events =new ArrayList<EventPayload>();
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM "+ merchantID+"_events";

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            String eventConditions = "";

            while (resultSet.next()) {
                EventPayload eventPayload =new EventPayload();
                eventPayload.EventCondition=resultSet.getString("eventCondition");
                eventPayload.EventID = resultSet.getInt("EventID");
                events.add(eventPayload);
            }

            String merchantjson = new Gson().toJson(events.toArray());
            System.out.println("returning merchant details  " + merchantjson.toString());
            return merchantjson;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant event details ");
            String merchantjson ="";

            return new Gson().toJson(merchantjson);
        }
    }

    public EventPayload getMerchantEvent(String merchantID,int eventID) {
        EventPayload event =new EventPayload();
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM "+ merchantID+"_events where EventID="+eventID;

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            String eventConditions = "";

            if (resultSet.next()) {
                event.EventCondition=resultSet.getString("eventCondition");
                event.EventID = resultSet.getInt("EventID");
            }

            //String merchantjson = new Gson().toJson(events.toArray());
            //System.out.println("returning merchant details  " + merchantjson.toString());
            return event;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant event details ");
            //String merchantjson ="";

            return event;
        }
    }

    public List<Integer> getEventsforAd(String merchantID,int adId)
    {
        List<Integer> EventIds =new ArrayList<Integer>();
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT EventID FROM "+ merchantID+"_ad_events where adID="+adId;

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            while (resultSet.next()) {

                EventIds.add(resultSet.getInt("EventID"));
            }
            return EventIds;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant event details ");
            //String merchantjson ="";
            return EventIds;
        }
    }

    public boolean CheckIfAdValidForUser(Integer UserID,String condition)
    {
        boolean isValid=false;
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM consumers where idconsumers="+UserID +" and "+condition;

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            if (resultSet.next()) {
                isValid=true;
            }
            return isValid;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant event details ");
            //String merchantjson ="";
            return isValid;
        }
    }

    public String getMerchantEventCriterias() {
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM merchantEvent_criterias";

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);

            List<EventCriteriaPayload> criterias= new ArrayList<>();
            while (resultSet.next()) {
                EventCriteriaPayload eventcriterias = new EventCriteriaPayload();
                eventcriterias.EventCriteria = resultSet.getString("criteria");
                eventcriterias.criteriaID = resultSet.getInt("criteriaID");
                eventcriterias.CriteriaDataType = resultSet.getString("CriteriaDataType");
                criterias.add(eventcriterias);
            }

            String merchantjson = new Gson().toJson(criterias.toArray());
            System.out.println("returning merchant details  " + merchantjson.toString());
            return merchantjson;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant details ");
            String merchantjson ="";

            return new Gson().toJson(merchantjson);
        }
    }
    public String getMerchantEventOperations() {
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT * FROM merchantEvent_operations";

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            String eventoperations = "";
            List<String> operations = new ArrayList<>();
            while (resultSet.next()) {

                eventoperations = resultSet.getString("operation");
                operations.add(eventoperations);
            }

            String merchantjson = new Gson().toJson(operations.toArray());
            System.out.println("returning merchant eventoperations  " + merchantjson.toString());
            return merchantjson;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant details ");
            String merchantjson ="";

            return new Gson().toJson(merchantjson);
        }
    }
    public String getMerchantCategory(String merchantID) {
        try {
            if (connect.isClosed() == true)
                connect = initConnection();

            String merchantQuery = "SELECT selectedCategories FROM Merchant_categories where  MerchantID='" + merchantID + "'";

            System.out.println("query executing is " + merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);
            String selectedCategory = "";
            if (resultSet.next()) {

                selectedCategory = resultSet.getString("selectedCategories");
            }

            String merchantjson = new Gson().toJson(selectedCategory);
            System.out.println("returning merchant details  " + merchantjson.toString());
            return merchantjson;
        } catch (Exception ex) {
            System.out.println("exception while returning merchant details ");
            String merchantjson ="";

            return new Gson().toJson(merchantjson);
        }
    }
    public String getMerchantDetails(String merchantContact)
    {
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();



            String merchantQuery = "SELECT * FROM merchant where  MerchantContact='"+merchantContact+"' OR MerchantId='"+merchantContact+"' order by Id DESC";


            System.out.println("query executing is "+merchantQuery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(merchantQuery);


/*

+-----------------+--------------+------+-----+-------------------+----------------+
| Field           | Type         | Null | Key | Default           | Extra          |
+-----------------+--------------+------+-----+-------------------+----------------+
| Id              | int(11)      | NO   | PRI | NULL              | auto_increment |
| MerchantId      | varchar(128) | NO   |     | NULL              |                |
| geohash         | varchar(12)  | NO   |     | NULL              |                |
| latitude        | double       | NO   |     | 0                 |                |
| longitude       | double       | NO   |     | 0                 |                |
| imgurl          | varchar(100) | YES  |     | NULL              |                |
| MerchantName    | varchar(32)  | NO   |     | NULL              |                |
| state           | varchar(128) | YES  |     | Karnataka         |                |
| country         | varchar(128) | NO   |     | INDIA             |                |
| registeredon    | varchar(128) | NO   |     | CURRENT_TIMESTAMP |                |
| isactive        | varchar(2)   | NO   |     | 1                 |                |
| shopNo          | varchar(45)  | YES  |     | NULL              |                |
| MerchantContact | varchar(45)  | NO   |     | 0000000000        |                |
| MerchantType    | int(3)       | NO   |     | 0                 |                |
| password        | varchar(15)  | NO   |     | 0000              |                |
| role            | int(11)      | NO   |     | 0                 |                |
| govtid          | varchar(128) | YES  |     | NULL              |                |
| govtidimgurl    | varchar(256) | YES  |     | NULL              |                |
+-----------------+--------------+------+-----+-------------------+----------------+

public class merchantDetails {
 public String merchantName;
    public String merchantPhn;
    public String merchantId;
    public String locality;
    public String landMark;
    public String shopNo;
    public Double latitude;
    public Double longitude;
    public String geoHash;
    public String registeredOn;
    public String isActive;
    public String imgurl;
    public String area;
    public String state;
    public String country;
    public String city;
    public String password;
    public Integer role;
    }
 */

/*


Id int(11) AI PK
MerchantId varchar(128)
geohash varchar(12)
latitude double
longitude double
imgurl varchar(100)
MerchantName varchar(32)
state varchar(128)
country varchar(128)
registeredon varchar(128)
isactive varchar(2)
shopNo varchar(45)
MerchantContact varchar(45)
MerchantType int(3)
password varchar(15)
role int(11)

+-----------------+--------------+------+-----+-------------------+----------------+
| Field           | Type         | Null | Key | Default           | Extra          |
+-----------------+--------------+------+-----+-------------------+----------------+
| Id              | int(11)      | NO   | PRI | NULL              | auto_increment |
| MerchantId      | varchar(128) | NO   |     | NULL              |                |
| geohash         | varchar(12)  | NO   |     | NULL              |                |
| latitude        | double       | NO   |     | 0                 |                |
| longitude       | double       | NO   |     | 0                 |                |
| imgurl          | varchar(100) | YES  |     | NULL              |                |
| MerchantName    | varchar(32)  | NO   |     | NULL              |                |
| state           | varchar(128) | YES  |     | Karnataka         |                |
| country         | varchar(128) | NO   |     | INDIA             |                |
| registeredon    | varchar(128) | NO   |     | CURRENT_TIMESTAMP |                |
| isactive        | varchar(2)   | NO   |     | 1                 |                |
| shopNo          | varchar(45)  | YES  |     | NULL              |                |
| MerchantContact | varchar(45)  | NO   |     | 0000000000        |                |
| MerchantType    | int(3)       | NO   |     | 0                 |                |
| password        | varchar(15)  | NO   |     | 0000              |                |
| role            | int(11)      | NO   |     | 0                 |                |
| govtid          | varchar(128) | YES  |     | NULL              |                |
| govtidimgurl    | varchar(256) | YES  |     | NULL              |                |
+-----------------+--------------+------+-----+-------------------+----------------+
 */


merchantDetails temp = new merchantDetails();

            if(resultSet.next()) {

                temp.merchantId = resultSet.getString("MerchantId");
                temp.merchantName = resultSet.getString("MerchantName");
                temp.imgurl = resultSet.getString("imgurl");
                temp.merchantPhn = resultSet.getString("MerchantContact");
                temp.latitude= resultSet.getDouble("latitude");
                temp.longitude = resultSet.getDouble("longitude");
//                temp.landMark = resultSet.getString("landMark");
//                temp.locality = resultSet.getString("locality");
//                temp.area = resultSet.getString("area");
//                temp.city=resultSet.getString("city");
//                temp.state = resultSet.getString("state");
                temp.geoHash = resultSet.getString("geohash");
                temp.country = resultSet.getString("country");
                temp.role =  resultSet.getInt("role");
                temp.merchantIdProof = resultSet.getString("govtid");
                temp.merchantIdProofUri = resultSet.getString("govtidimgurl");

            }

            String merchantjson = new Gson().toJson(temp);
            System.out.println("returning merchant details  "+merchantjson.toString());
            return merchantjson;
        }
        catch(Exception ex)
        {
            System.out.println("exception while returning merchant details ");
            merchantDetails temp = new merchantDetails();

            return new Gson().toJson(temp);
        }
    }

    public merchantDetails fetchMerchantDetails(String  contact)
    {
        /*

mysql> describe merchant;
+-----------------+--------------+------+-----+-------------------+----------------+
| Field           | Type         | Null | Key | Default           | Extra          |
+-----------------+--------------+------+-----+-------------------+----------------+
| Id              | int(11)      | NO   | PRI | NULL              | auto_increment |
| MerchantId      | varchar(128) | NO   |     | NULL              |                |
| geohash         | varchar(12)  | NO   |     | NULL              |                |
| latitude        | double       | NO   |     | 0                 |                |
| longitude       | double       | NO   |     | 0                 |                |
| imgurl          | varchar(100) | YES  |     | NULL              |                |
| MerchantName    | varchar(32)  | NO   |     | NULL              |                |
| state           | varchar(128) | YES  |     | Karnataka         |                |
| country         | varchar(128) | NO   |     | INDIA             |                |
| registeredon    | varchar(128) | NO   |     | CURRENT_TIMESTAMP |                |
| isactive        | varchar(2)   | NO   |     | 1                 |                |
| shopNo          | varchar(45)  | YES  |     | NULL              |                |
| MerchantContact | varchar(45)  | NO   |     | 0000000000        |                |
| MerchantType    | int(3)       | NO   |     | 0                 |                |
| password        | varchar(15)  | NO   |     | 0000              |                |
| role            | int(11)      | NO   |     | 0                 |                |
| govtid          | varchar(128) | YES  |     | NULL              |                |
| govtidimgurl    | varchar(256) | YES  |     | NULL              |                |
+-----------------+--------------+------+-----+-------------------+----------------+

         */
        String tableName = "merchant";
        String mId = "0";
        String sqlcmd = "select MerchantId from "+tableName+" where MerchantContact='"+contact+"' order by Id desc";
        merchantDetails obj = new merchantDetails();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);

            if(resultSet.next())
            {
                obj.merchantId = resultSet.getString("MerchantId");
                obj.geoHash = resultSet.getString("geohash");
                obj.latitude = resultSet.getDouble("latitude");
                obj.longitude = resultSet.getDouble("longitude");
                obj.imgurl = resultSet.getString("imgurl");
                obj.merchantName = resultSet.getString("MerchantName");
                obj.state = resultSet.getString("state");
                obj.country = resultSet.getString("country");
                obj.registeredOn = resultSet.getString("registeredon");
                obj.isActive = resultSet.getString("isactive");
                obj.shopNo = resultSet.getString("shopNo");
                obj.merchantPhn = resultSet.getString("MerchantContact");
                obj.merchantIdProof = resultSet.getString("govtid");
                obj.merchantIdProofUri= resultSet.getString("govtidimgurl");
                return obj;

            }
            return obj;
        }
        catch(Exception ex)
        {
            return obj;
        }
    }

    public String insertIntoMerchant(merchantDetails obj)
    {
        LocalDateTime now = LocalDateTime.now();

        String receivedOn = Util.getTimestamp(now);
        Integer vad = Util.getCurrentDay(now);
        Integer vam = Util.getCurrentMonth(now);
        Integer vay = Util.getCurrentYear(now);
//        int vtd =  Integer.parseInt(vd);
//        int vtm = Integer.parseInt(vm);
//        int vty = Integer.parseInt(vy);
     //   String tableName = obj.city+"_"+obj.area+"_"+obj.landMark;
        String tableName = "merchant";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*

        `Id`,
        `MerchantId`,
         `geohash`,
          `latitude`,
           `longitude`,
            `imgurl`,
             `MerchantName`,
              `state`,
               `country`, `registeredon`, `isactive`, `shopNo`

               | Id | MerchantId  | geohash | latitude           | longitude         | imgurl
 | MerchantName | state | country | registeredon               | isactive | shopNo   | MerchantContact | MerchantType | password | role | govtid | govtidimgurl |
         */

        try {
            String sql = "INSERT INTO "+tableName+" (MerchantId, geohash, latitude, longitude, imgurl," +
                    "MerchantName, state, country, registeredon, isactive, shopNo, MerchantContact, password,role, govtid, govtidimgurl)" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);

         //   PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);

            preparedStatement.setString(1, obj.merchantId);
            preparedStatement.setString(2, obj.geoHash);
            preparedStatement.setDouble(3, obj.latitude);
            preparedStatement.setDouble(4, obj.longitude);
            preparedStatement.setString(5, obj.imgurl);
            preparedStatement.setString(6, obj.merchantName);
            preparedStatement.setString(7, obj.state);
            preparedStatement.setString(8, "INDIA");
            preparedStatement.setString(9, obj.registeredOn);
            preparedStatement.setString(10, obj.isActive);
            preparedStatement.setString(11, obj.shopNo);
            preparedStatement.setString(12, obj.merchantPhn);
            preparedStatement.setString(13, obj.password);
            preparedStatement.setInt(14, obj.role);
            preparedStatement.setString(15, obj.merchantIdProof);
            preparedStatement.setString(16, obj.merchantIdProofUri);

            preparedStatement.executeUpdate();
            preparedStatement.close();
            System.out.println("In regMerchant .. command executing is "+preparedStatement.toString()+" .. and returning "+obj.merchantId);

            return obj.merchantId;

        } catch (SQLException e) {
            e.printStackTrace();
            return "";
        }
    }

    public  Integer isValidUser(String merchantId, String password)
    {
        Integer role = -1;
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();



            String loginquery = "SELECT role FROM nearmegala.merchant where ( merchantId = '"+merchantId+"' OR MerchantContact like '%"+merchantId+"%')" +
                    "  AND password = '"+password+"'";


            System.out.println("query executing is "+loginquery);
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(loginquery);


           if(resultSet.next()) {
               role = resultSet.getInt("role");
           }
           else
           {





               loginquery = "SELECT role FROM nearmegala.counters where ( counterId = '"+merchantId+"')" +
                       "  AND password = '"+password+"'";


               System.out.println("query executing is "+loginquery);
               statement = connect.createStatement();

               // Result set get the result of the SQL query
               resultSet = statement
                       .executeQuery(loginquery);


               if(resultSet.next()) {
                   role = resultSet.getInt("role");
               }
               else
               {
                   loginquery = "SELECT role FROM nearmegala.helpers where ( counterId = '"+merchantId+"')" +
                           "  AND password = '"+password+"'";


                   System.out.println("query executing is "+loginquery);
                   statement = connect.createStatement();

                   // Result set get the result of the SQL query
                   resultSet = statement
                           .executeQuery(loginquery);


                   if(resultSet.next()) {
                       role = resultSet.getInt("role");
                   }
                   else
                   {
                       loginquery = "SELECT role FROM nearmegala.viewers where ( counterId = '"+merchantId+"')" +
                               "  AND password = '"+password+"'";


                       System.out.println("query executing is "+loginquery);
                       statement = connect.createStatement();

                       // Result set get the result of the SQL query
                       resultSet = statement
                               .executeQuery(loginquery);


                       if(resultSet.next()) {
                           role = resultSet.getInt("role");
                       }
                   }
               }


           }

System.out.println("returning role is "+role.toString());
            return role;
        }
        catch(Exception ex)
        {
            System.out.println("exception while fetching reach details "+merchantId+" ");
            return role;
        }
    }

    public offerclass getExistingOfferReachDetails(String merchantId, String offer)
    {
        offerclass obj = new offerclass();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();



            String pointsQuery = "SELECT * FROM nearmegala.offerreach where merchantId = '"+merchantId+"' AND offercode = '"+offer+"'";

                statement = connect.createStatement();

                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery(pointsQuery);

                obj.merchantId = merchantId;
                obj.offerCode = offer;
                obj.reached=0;
                obj.utilized=0;
                obj.viewed=0;

                while (resultSet.next()) {
                    obj.reached += resultSet.getInt("reached");
                    obj.viewed += resultSet.getInt("viewed");
                    obj.utilized += resultSet.getInt("utilized");
                }

                return obj;
        }
        catch(Exception ex)
        {
            System.out.println("exception while fetching reach details "+merchantId+"  offer"+offer);
            return obj;
        }
    }


    /*


    Table: offerreach
Columns:
idofferreach int(11) AI PK
merchantId varchar(128)
offercode varchar(6)
reached int(6)
viewed int(6)
utilized int(6)
     */
    public void updateOfferReach(String merchantId, String offer, int reached, int viewed, int utilized)
    {
        try {

            if(connect.isClosed() == true)
                connect = initConnection();

            offerclass temp = getExistingOfferReachDetails(merchantId, offer);

        PreparedStatement update = connect.prepareStatement
                ("UPDATE offerreach SET reached = ?, viewed = ?, utilized = ? WHERE merchantId = ? && offercode = ?");

            update.setInt(1, reached + temp.reached);
            update.setInt(2, viewed + temp.viewed);
            update.setInt(3, utilized + temp.utilized);
        update.setString(4, merchantId);
        update.setString(5, offer);

            update.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void insertIntoOfferReach(String merchantId, String offer)
    {
        try {
            if(connect.isClosed() == true)
                connect = initConnection();


        String sql = "INSERT INTO offerreach (MerchantId, offercode )" +
                "VALUES (?, ?)";
        PreparedStatement preparedStatement = connect.prepareStatement(sql);
        preparedStatement.setString(1, merchantId);
        preparedStatement.setString(2, offer);
            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Integer insertAd(String MerchantId, String category, String vd, String vm, String vy, String imgurl,String itemdesc,String offercode, String geohash
    , String mindiscount, String maxdiscount, String discdesc,
                            double latitude, double longitude, int price,int unit)
    {

        /*


        +----------------+--------------+------+-----+-----------+----------------+
| Field          | Type         | Null | Key | Default   | Extra          |
+----------------+--------------+------+-----+-----------+----------------+
| Id             | int(11)      | NO   | PRI | NULL      | auto_increment |
| MerchantId     | varchar(45)  | NO   |     | NULL      |                |
| Category       | int(10)      | YES  |     | NULL      |                |
| ValidTillDate  | int(2)       | YES  |     | NULL      |                |
| ValidTillMonth | int(2)       | YES  |     | NULL      |                |
| ValidTillYear  | int(4)       | YES  |     | NULL      |                |
| ValidFromDate  | int(2)       | YES  |     | NULL      |                |
| ValidFromMonth | int(2)       | YES  |     | NULL      |                |
| ValidFromYear  | int(4)       | YES  |     | NULL      |                |
| adimgurl       | varchar(128) | YES  |     | NULL      |                |
| itemdesc       | varchar(512) | YES  |     | NULL      |                |
| receivedOn     | varchar(45)  | YES  |     | NULL      |                |
| offercode      | varchar(6)   | YES  |     | NULL      |                |
| shopname       | varchar(45)  | YES  |     | shop name |                |
| mindiscount    | varchar(10)  | YES  |     | 0         |                |
| maxdiscount    | varchar(10)  | YES  |     | 0         |                |
| discdesc       | varchar(512) | YES  |     | 0         |                |
+----------------+--------------+------+-----+-----------+----------------+

         */

        Integer generatedKey = -1;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        LocalDateTime now = LocalDateTime.now();

        String merchantGeoHash = getGeoHashForMerchant(MerchantId);
        String receivedOn = Util.getTimestamp(now);
        Integer vad = Util.getCurrentDay(now);
        Integer vam = Util.getCurrentMonth(now);
        Integer vay = Util.getCurrentYear(now);
//        int vtd =  Integer.parseInt(vd);
//        int vtm = Integer.parseInt(vm);
//        int vty = Integer.parseInt(vy);


        if(merchantGeoHash.length() < 5)
            return -1;

        try {
            String sql = "INSERT INTO ad_"+geohash+" (MerchantId, category, validtilldate, validtillmonth, validtillyear," +
                    "validfromdate, validfrommonth, validfromyear, adimgurl, itemdesc, receivedon, offercode, mindiscount,maxdiscount,discdesc," +
                    "latitude, longitude,Price,Unit)" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, MerchantId);
            preparedStatement.setString(2, category);
            preparedStatement.setString(3, vd);
            preparedStatement.setString(4, vm);
            preparedStatement.setString(5, vy);
            preparedStatement.setString(6, vad.toString());
            preparedStatement.setString(7, vam.toString());
            preparedStatement.setString(8, vay.toString());
            preparedStatement.setString(9, imgurl);
            preparedStatement.setString(10, itemdesc);
            preparedStatement.setString(11, receivedOn);
            preparedStatement.setString(12, offercode);
            preparedStatement.setString(13, mindiscount);
            preparedStatement.setString(14, maxdiscount);
            preparedStatement.setString(15, discdesc);
            preparedStatement.setDouble(16, latitude);
            preparedStatement.setDouble(17, longitude);
            preparedStatement.setInt(18, price);
            preparedStatement.setInt(19, unit);
            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();


            System.out.println("command executed is "+sql);
            insertIntoOfferReach(MerchantId,offercode);
            return generatedKey;

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey;
        }
    }

    /*

     {"name":"Id", "type":"varchar(12)"},
      {"name":"MarchantId", "type":"varchar(12)"},
      {"name":"category", "type":"INT(6)"},
      {"name":"validtilldate", "type":"INT(2)"},
      {"name":"validtillmonth", "type":"INT(2)"},
      {"name":"validtillyear", "type":"INT(2)"},
      {"name":"validfromdate", "type":"INT(2)"},
      {"name":"validfrommonth", "type":"INT(2)"},
      {"name":"validfromyear", "type":"INT(2)"},
      {"name":"adimgurl", "type":"varchar(100)"},
      {"name":"itemdesc", "type":"varchar(512)"},
      {"name":"receivedon", "type":"varchar(24)"}

     */

    public Integer insertAd(String MerchantId, String category, String vd, String vm, String vy, String imgurl,String itemdesc,String offercode, String geohash)
    {

        Integer generatedKey = -1;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        LocalDateTime now = LocalDateTime.now();

        String merchantGeoHash = getGeoHashForMerchant(MerchantId);
        String receivedOn = Util.getTimestamp(now);
        Integer vad = Util.getCurrentDay(now);
        Integer vam = Util.getCurrentMonth(now);
        Integer vay = Util.getCurrentYear(now);
//        int vtd =  Integer.parseInt(vd);
//        int vtm = Integer.parseInt(vm);
//        int vty = Integer.parseInt(vy);


        if(merchantGeoHash.length() < 5)
            return -1;

        try {
            String sql = "INSERT INTO ad_"+geohash+" (MerchantId, category, validtilldate, validtillmonth, validtillyear," +
                    "validfromdate, validfrommonth, validfromyear, adimgurl, itemdesc, receivedon, offercode )" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql,  Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, MerchantId);
            preparedStatement.setString(2, category);
            preparedStatement.setString(3, vd);
            preparedStatement.setString(4, vm);
            preparedStatement.setString(5, vy);
            preparedStatement.setString(6, vad.toString());
            preparedStatement.setString(7, vam.toString());
            preparedStatement.setString(8, vay.toString());
            preparedStatement.setString(9, imgurl);
            preparedStatement.setString(10, itemdesc);
            preparedStatement.setString(11, receivedOn);
            preparedStatement.setString(12, offercode);


            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();


            System.out.println("command executed is "+sql);
            insertIntoOfferReach(MerchantId,offercode);
            return generatedKey;

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey;
        }
    }



    public void readDataBase() throws Exception {
        try {
            // This will load the MySQL driver, each DB has its own driver
            // Setup the connection with the DB
            if((connect == null) || (connect.isClosed() == true))
            connect = initConnection();

            // Statements allow to issue SQL queries to the database
            statement = connect.createStatement();
            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery("select * from comments");
            writeResultSet(resultSet);

            // PreparedStatements can use variables and are more efficient
            preparedStatement = connect
                    .prepareStatement("insert into  comments values (default, ?, ?, ?, ? , ?, ?)");
            // "myuser, webpage, datum, summary, COMMENTS from feedback.comments");
            // Parameters start with 1
            preparedStatement.setString(1, "Test");
            preparedStatement.setString(2, "TestEmail");
            preparedStatement.setString(3, "TestWebpage");
            preparedStatement.setDate(4, new java.sql.Date(2009, 12, 11));
            preparedStatement.setString(5, "TestSummary");
            preparedStatement.setString(6, "TestComment");
            preparedStatement.executeUpdate();

            preparedStatement = connect
                    .prepareStatement("SELECT myuser, webpage, datum, summary, COMMENTS from comments");
            resultSet = preparedStatement.executeQuery();
            writeResultSet(resultSet);

            // Remove again the insert comment
            preparedStatement = connect
                    .prepareStatement("delete from comments where myuser= ? ; ");
            preparedStatement.setString(1, "Test");
            preparedStatement.executeUpdate();

            resultSet = statement
                    .executeQuery("select * from comments");
            writeMetaData(resultSet);

        } catch (Exception e) {
            throw e;
        } finally {
            close();
        }

    }
    public void updateCustomerPoints(String customerId, int pointsToAdd)
    {
        PointsClass obj = getExistingPointsForCustomer(customerId);

        /*


        Table: userpoints
Columns:
iduserpoints int(11) AI PK
usercontact varchar(45)
totalpoints int(10)
existingpoints int(10)
lastaddedpointson varchar(45)

         */

        LocalDateTime dt = LocalDateTime.now();
        String currTimeStamp = Util.getTimestamp(dt);

        try {
            if (obj.iduserpoints == -1) {


                String sql = "INSERT INTO userpoints (usercontact, totalpoints, existingpoints, lastaddedpointson) " +
                        "VALUES ( ?, ?, ?, ?)";
                PreparedStatement preparedStatement = connect.prepareStatement(sql);
                preparedStatement.setString(1, customerId);
                preparedStatement.setInt(2, pointsToAdd);
                preparedStatement.setInt(3, pointsToAdd);
                preparedStatement.setString(4, currTimeStamp);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                return;
            } else {

                PreparedStatement update = connect.prepareStatement
                        ("UPDATE userpoints SET totalpoints = ?, existingpoints = ?, lastaddedpointson = ? WHERE iduserpoints = ?");

                update.setInt(1, obj.totalPoints+pointsToAdd);
                update.setInt(2, pointsToAdd);
                update.setString(3, currTimeStamp);
                update.setInt(4, obj.iduserpoints);
                update.executeUpdate();
            }
        }
        catch(Exception ex)
        {
            System.out.println("error in updating customer points . error is "+ex.getMessage());
            int x= 40;
            ++x;
        }


    }



    public PointsClass getExistingPointsForCustomer(String customerId)
    {
        PointsClass obj = new PointsClass();
        obj.iduserpoints = -1;
        String pointsQuery = "SELECT * FROM nearmegala.userpoints where usercontact = '"+customerId+"'";

        try {
            statement = connect.createStatement();

            // Result set get the result of the SQL query
            resultSet = statement
                    .executeQuery(pointsQuery);


            while (resultSet.next()) {
                obj.existingpoints = resultSet.getInt("existingpoints");
                obj.totalPoints = resultSet.getInt("totalpoints");
                obj.lastAddedOn = resultSet.getString("lastaddedpointson");
                obj.iduserpoints = resultSet.getInt("iduserpoints");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return obj;

    }

    public AdPayLoad getAdDetails(int ID,String GeoHash)
    {
        AdPayLoad obj = new AdPayLoad();
        try {
            String sql = "Select * from ad_"+GeoHash+" Where Id="+String.valueOf(ID);
            System.out.println(sql);
            PreparedStatement tstmnt = connect.prepareStatement(sql);
            if(connect.isClosed() == true)
                connect = initConnection();

            tstmnt.executeQuery();
            Statement statement1 = connect.createStatement();
            ResultSet resultSet1 = statement1
                    .executeQuery(sql);

//            if(connect.isClosed() == true)
//                connect = initConnection();
//            statement = connect.createStatement();
//            System.out.println("reached here");
//            // Result set get the result of the SQL query
//            resultSet = statement
//                    .executeQuery(sql);


            while (resultSet1.next()) {
 /*


        +----------------+--------------+------+-----+-----------+----------------+
| Field          | Type         | Null | Key | Default   | Extra          |
+----------------+--------------+------+-----+-----------+----------------+
| Id             | int(11)      | NO   | PRI | NULL      | auto_increment |
| MerchantId     | varchar(45)  | NO   |     | NULL      |                |
| Category       | int(10)      | YES  |     | NULL      |                |
| ValidTillDate  | int(2)       | YES  |     | NULL      |                |
| ValidTillMonth | int(2)       | YES  |     | NULL      |                |
| ValidTillYear  | int(4)       | YES  |     | NULL      |                |
| ValidFromDate  | int(2)       | YES  |     | NULL      |                |
| ValidFromMonth | int(2)       | YES  |     | NULL      |                |
| ValidFromYear  | int(4)       | YES  |     | NULL      |                |
| adimgurl       | varchar(128) | YES  |     | NULL      |                |
| itemdesc       | varchar(512) | YES  |     | NULL      |                |
| receivedOn     | varchar(45)  | YES  |     | NULL      |                |
| offercode      | varchar(6)   | YES  |     | NULL      |                |
| shopname       | varchar(45)  | YES  |     | shop name |                |
| mindiscount    | varchar(10)  | YES  |     | 0         |                |
| maxdiscount    | varchar(10)  | YES  |     | 0         |                |
| discdesc       | varchar(512) | YES  |     | 0         |                |
+----------------+--------------+------+-----+-----------+----------------+

         */
                obj.geo = GeoHash;

                obj.merchantid = resultSet1.getString("MerchantId");
                obj.cat= resultSet1.getString("Category");
                obj. tilldate= resultSet1.getString("ValidTillDate");
                obj.tillmonth= resultSet1.getString("ValidTillMonth");
                obj.tillyear= resultSet1.getString("ValidTillYear");
                obj. fromdate= resultSet1.getString("ValidFromDate");
                obj. frommonth= resultSet1.getString("ValidFromMonth");
                obj. fromyear= resultSet1.getString("ValidFromYear");
                obj. offercode= resultSet1.getString("offercode");
                obj. itemdesc= resultSet1.getString("itemdesc");
                obj. imgUrl= resultSet1.getString("adimgurl");
//                obj.shopDp= resultSet.getString("totalpoints");
                obj.shopname= resultSet1.getString("shopname");

            }
            return obj;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return obj;
        }
    }
    private void writeMetaData(ResultSet resultSet) throws SQLException {
        //  Now get some metadata from the database
        // Result set get the result of the SQL query

        System.out.println("The columns in the table are: ");

        System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
        for  (int i = 1; i<= resultSet.getMetaData().getColumnCount(); i++){
            System.out.println("Column " +i  + " "+ resultSet.getMetaData().getColumnName(i));
        }
    }

    private void writeResultSet(ResultSet resultSet) throws SQLException {
        // ResultSet is initially before the first data set
        while (resultSet.next()) {
            // It is possible to get the columns via name
            // also possible to get the columns via the column number
            // which starts at 1
            // e.g. resultSet.getSTring(2);
            String user = resultSet.getString("myuser");
            String website = resultSet.getString("webpage");
            String summary = resultSet.getString("summary");
            Date date = resultSet.getDate("datum");
            String comment = resultSet.getString("comments");
            System.out.println("User: " + user);
            System.out.println("Website: " + website);
            System.out.println("summary: " + summary);
            System.out.println("Date: " + date);
            System.out.println("Comment: " + comment);
        }
    }




    private List<JobPayLoad> resultSetToJobPayLoad(ResultSet resultSet, String geoHash)
    {
        Gson gson = new Gson();
        List<JobPayLoad> response = new ArrayList<JobPayLoad>();

        /*

employername varchar(512)
employerlocationurl varchar(256)
jobDescription varchar(256)
locationLandmark varchar(128)
offeringpost varchar(64)
educationQualification varchar(64)
experienceReq varchar(26)
sex varchar(10)
ageLimitation varchar(10)
contact varchar(16)
emailId varchar(128)
interviewDate varchar(45)
shiftTimings varchar(45)
salary varchar(45)
postedon datetime
lat varchar(10)
lng varchar(10)

         */
        try
        {

            while(resultSet.next()) {
                JobPayLoad obj = new JobPayLoad();
                obj.idjobs = resultSet.getInt("idjobs");
                obj.employername = resultSet.getString("employername");
                obj.employerlocationurl = resultSet.getString("employerlocationurl");
                obj.jobDescription = resultSet.getString("jobDescription");
                obj.geoHash = geoHash;
                obj.locationLandmark = resultSet.getString("locationLandmark");
                obj.offeringpost = resultSet.getString("offeringpost");
                obj.educationQualification = resultSet.getString("educationQualification");
                obj.experienceReq = resultSet.getString("experienceReq");
                obj.sex = resultSet.getString("sex");

                obj.ageLimitation = resultSet.getString("ageLimitation");
                obj.contact = resultSet.getString("contact");
                obj.emailId = resultSet.getString("emailId");
                obj.interviewDate = resultSet.getString("interviewDate");
                obj.shiftTimings = resultSet.getString("shiftTimings");

                obj.salary = resultSet.getString("salary");
                obj.postedon = resultSet.getString("postedon");
                 obj.lat = resultSet.getString("lat");
                 obj.lng = resultSet.getString("lng");


                response.add(obj);
            }
            return response;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    private List<AdPayLoadResponse> resultSetToAdPayLoad(ResultSet resultSet, String geoHash)
    {
        Gson gson = new Gson();
        List<AdPayLoadResponse> response = new ArrayList<AdPayLoadResponse>();

        /*

employername varchar(512)
employerlocationurl varchar(256)
jobDescription varchar(256)
locationLandmark varchar(128)
offeringpost varchar(64)
educationQualification varchar(64)
experienceReq varchar(26)
sex varchar(10)
ageLimitation varchar(10)
contact varchar(16)
emailId varchar(128)
interviewDate varchar(45)
shiftTimings varchar(45)
salary varchar(45)
postedon datetime
lat varchar(10)
lng varchar(10)

         */
        try
        {
            while(resultSet.next()) {
                AdPayLoadResponse obj = new AdPayLoadResponse();
                obj.Id = resultSet.getInt("Id");
                obj.merchantid   = resultSet.getString("MerchantId");
                obj.cat  = resultSet.getString("Category");
                obj.tilldate  = resultSet.getString("ValidTillDate");
                obj.tillmonth  = resultSet.getString("ValidTillMonth");
                obj.tillyear  = resultSet.getString("ValidTillYear");
                obj.fromdate  = resultSet.getString("ValidFromDate");
                obj.frommonth  = resultSet.getString("ValidFromMonth");
                obj.fromyear  = resultSet.getString("ValidFromYear");
                obj.imgUrl= resultSet.getString("adimgurl");
                obj.itemdesc  = resultSet.getString("itemdesc");
                obj.offercode  = resultSet.getString("offercode ");
                obj.shopname   = resultSet.getString("shopname  ");

                obj.mindiscount  = resultSet.getString("mindiscount ");
                obj.maxdiscount  = resultSet.getString("maxdiscount ");
                obj.discdesc   = resultSet.getString("discdesc  ");
                try {
                    obj.lat = Double.parseDouble(resultSet.getString("latitude"));
                    obj.lng = Double.parseDouble(resultSet.getString("longitude"));
                }
                catch (Exception e)
                {

                }

                response.add(obj);
            }
            return response;
        }
        catch (Exception ex)
        {
            return null;
        }
    }
    private List<NegotationPayLoad> resultSetToNegotiationsPayLoad(ResultSet resultSet, String geoHash)
    {
        Gson gson = new Gson();
        List<NegotationPayLoad> response = new ArrayList<NegotationPayLoad>();


        try
        {

            /*

idnegotations int(11) AI PK
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(4)
maxamount int(11)
DiscountExpectation int(3)
ShoppingProbableDates varchar(45)
description varchar(512)
delivered int(1)
adnotification int(11)
             */
            while(resultSet.next()) {
                NegotationPayLoad obj = new NegotationPayLoad();
                obj.idnegotations = resultSet.getInt("idnegotations");
                obj.merchantid = resultSet.getString("merchantid");
                obj.geohash = resultSet.getString("geohash");
                obj.minamount = resultSet.getInt("minamount");
                obj.maxamount = resultSet.getInt("maxamount");
                obj.DiscountExpectation = resultSet.getInt("DiscountExpectation");
                obj.description = resultSet.getString("description");
                obj.notificationid = resultSet.getInt("adnotification");
                obj.customercontact = resultSet.getString("customercontact");
                obj.ShoppingProbableDates = resultSet.getString("ShoppingProbableDates");

                AdPayLoad adDetail = getAdDetails(obj.notificationid, obj.geohash);
                if (adDetail != null) {
                    System.out.println("recived ad details");
                    obj.adObj = adDetail;
                } else {
                    System.out.println("recived null details");
                }
                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return null;
        }


    }

    private NegotationPayLoad resultSetToNegotiationsPayLoad(ResultSet resultSet)
    {
        Gson gson = new Gson();

        System.out.println("into nego obj creattion");

        try
        {

            /*

idnegotations int(11) AI PK
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(4)
maxamount int(11)
DiscountExpectation int(3)
ShoppingProbableDates varchar(45)
description varchar(512)
delivered int(1)
adnotification int(11)
             */
            NegotationPayLoad obj = new NegotationPayLoad();
            while(resultSet.next()) {

                obj.idnegotations = resultSet.getInt("idnegotations");
                obj.merchantid = resultSet.getString("merchantid");
                obj.geohash = resultSet.getString("geohash");
                obj.minamount = resultSet.getInt("minamount");
                obj.maxamount = resultSet.getInt("maxamount");
                obj.DiscountExpectation = resultSet.getInt("DiscountExpectation");
                obj.description = resultSet.getString("description");
                obj.notificationid = resultSet.getInt("adnotification");
                obj.customercontact = resultSet.getString("customercontact");
                obj.ShoppingProbableDates = resultSet.getString("ShoppingProbableDates");
                obj.response= resultSet.getInt(11);
            }

            return obj;
        }
        catch (Exception ex)
        {
            return null;
        }


    }



    private List<GroupPayLoad> resultSetToGroupPayLoad(ResultSet resultSet, String geoHash)
    {
        Gson gson = new Gson();
        List<GroupPayLoad> response = new ArrayList<GroupPayLoad>();

        /*

idgroups int(11) AI PK
        groupname varchar(45)
groupdp varchar(256)
owner varchar(15)
createdon datetime
userscount int(11)
groupdesc varchar(256)

         */
        try
        {
        GroupPayLoad obj = new GroupPayLoad();
        obj.groupId=resultSet.getInt("idgroups");
        obj.createdBy = resultSet.getString("owner");
        obj.description = resultSet.getString("groupdesc");
        obj.geoHash = geoHash;
        obj.groupDp = resultSet.getString("groupdp");
        obj.groupName = resultSet.getString("groupname");

        response.add(obj);
        return response;
        }
        catch (Exception ex)
        {
            return null;
        }
    }

    private List<AdPayLoadResponse> resultSetToString(ResultSet resultSet, String geoHash,boolean ignoreB)
    {
        Gson gson = new Gson();
        String jsonInString = "";


        /*

        `Id`,
        `MerchantId`,
        `Category`,
         `ValidTillDate`,
          `ValidTillMonth`,
           `ValidTillYear`,
            `ValidFromDate`,
             `ValidFromMonth`,
              `ValidFromYear`,
               `adimgurl`,
                `itemdesc`,
                `offercode`,
                 `receivedOn`
         */
        List<AdPayLoadResponse> response = new ArrayList<AdPayLoadResponse>();
        try {
        while (resultSet.next()) {
            AdPayLoadResponse obj = new AdPayLoadResponse();
                obj.Id = resultSet.getInt("A.Id");
                obj.merchantid = resultSet.getString("A.MerchantId");

         String merchantorggeohash =    getGeoHashForMerchant(obj.merchantid);


            String merchantName = getMerchantNameForId(obj.merchantid,merchantorggeohash);
            String dpimg = getMerchantDpForId(obj.merchantid,merchantorggeohash);
            String shopno = getMerchantShopNoForId(obj.merchantid, merchantorggeohash);
            String mobno= getMerchantMobileNumberForId(obj.merchantid, merchantorggeohash);




                obj.cat = resultSet.getObject("A.Category").toString();
                obj.geo = geoHash;
                obj.shopDp = dpimg;
                obj.imgUrl = resultSet.getString("A.adimgurl");
                obj.itemdesc = resultSet.getString("A.itemdesc");
                obj.tilldate=resultSet.getString("A.ValidTillDate");
                obj.tillmonth=resultSet.getString("A.ValidTillMonth");
                obj.tillyear=resultSet.getString("A.ValidTillYear");
                obj.fromdate=resultSet.getString("A.ValidFromDate");
                obj.frommonth=resultSet.getString("A.ValidFromMonth");
                obj.fromyear=resultSet.getString("A.ValidFromYear");
                obj.offercode=resultSet.getString("A.offercode");
                obj.shopname="Name:"+merchantName+" ShopNo :"+shopno;
                obj.contatNumber =mobno;
                if(!ignoreB) {
                    obj.negotiate = resultSet.getInt("B.cannegotiate");
                    obj.minBusiness = resultSet.getInt("B.minamount");
                }
                obj.lat = resultSet.getDouble("A.latitude");
                obj.lng = resultSet.getDouble("A.longitude");
                obj.Price = resultSet.getInt("A.Price");
                obj.Unit = resultSet.getInt("A.Unit");
            //Price,Unit
//            LatLng temp = null;
////            temp.lng = 0.0;
////            temp.lat = 0.0;
//            obj.lng = 0.0;
//            obj.lat = 0.0;
//
//                if((temp = merchantLatLngs.get(obj.merchantid)) == null)
//                {
//                     temp = getLatLatForMerchant(obj.merchantid, geoHash);
//                }
//                if(temp != null) {
//                    obj.lat = temp.lat;
//                    obj.lng = temp.lng;
//                }
//            merchantLatLngs.put(obj.merchantid, temp);
            updateOfferReach(obj.merchantid, obj.offercode,1,0,0);
                response.add(obj);
        }
        jsonInString = gson.toJson(response);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return response;
    }

    public void updateAdView(String merchantId, String offerCode)
    {

    }


    public List<GroupPayLoad> GetGroupsAround(String geohash) {
        try {
            String sqlcmd = "select * from group" + geohash;

            System.out.println("cmd executed is : " + sqlcmd);


            resultSet = statement
                    .executeQuery(sqlcmd);

           return resultSetToGroupPayLoad(resultSet, geohash);
        }
    catch (SQLException e) {
        e.printStackTrace();
        return null;
    }

    }

    public void insertIntogroupsList(String groupName, String createdBycontact, String groupdesc, String groupdp, String geoHash)
    {

        try {
            createGroupList(geoHash);
            String tableName = "group_" + geoHash;

/*
groupname varchar(45)
groupdp varchar(256)
owner varchar(15)
createdon datetime
userscount int(11)
groupdesc varchar(256)
 */


            String sql = "INSERT INTO  " + tableName + "  (groupname, groupdp, owner , groupdesc)" +
                    "VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1, groupName);
            preparedStatement.setString(2, groupdp);
            preparedStatement.setString(3, createdBycontact);
            preparedStatement.setString(4, groupdesc);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            createGroup(groupName);
        }
        catch(Exception ex)
        {

        }




    }

    public void createGroup(String groupName)
    {
        try {

            String tableName = groupName+"_msg";
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE group_msg;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        }
        catch (Exception ex)
        {

        }
    }

    public void createGroupList(String geoHash)
    {
        try {

            String tableName = "group_"+geoHash;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE groups;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        }
        catch (Exception ex)
        {

        }
    }

    public int addTransaction(String merchantId, String userPhone, String offerCode)
    {

        /*


        idtransactionhistory int(11) PK
merchantid varchar(128)
usercontact varchar(45)
transactiontimestamp varchar(128)
transactionid varchar(512)
pointstocustomer int(10)
pointstomerchant int(10)
         */
        try
        {
            int points = getNumberOfPoints(merchantId);
            LocalDateTime now = LocalDateTime.now();
            String receivedOn = Util.getTimestamp(now);
            String transactionId = merchantId+":"+userPhone+":"+offerCode+":"+receivedOn;

            String sql = "INSERT INTO transactionhistory (MerchantId, usercontact, transactiontimestamp, transactionid, pointstocustomer," +
                    "pointstomerchant)" +
                    "VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
            preparedStatement.setString(1, merchantId);
            preparedStatement.setString(2, userPhone);
            preparedStatement.setString(3, receivedOn);
            preparedStatement.setString(4, transactionId);
            preparedStatement.setInt(5, points);
            preparedStatement.setInt(6, 0);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            updateCustomerPoints(userPhone, points);
            updateOfferReach(merchantId, offerCode, 0,0,1);
            return points;

        }
        catch(Exception ex)
        {
            return 0;
        }
    }

    public int getNumberOfPoints(String merchantId)
    {
        String pointsQuery = "select points from pointstable  INNER JOIN merchant ON pointstable.merchantType = merchant.MerchantType where merchant.MerchantId = '"+merchantId+"'";
        Integer totalPoints = 0;

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
            statement = connect.createStatement();

        // Result set get the result of the SQL query
        resultSet = statement
                .executeQuery(pointsQuery);


        while (resultSet.next()) {
            totalPoints = resultSet.getInt("points");
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return totalPoints;
    }

    // You need to close the resultSet
    private void close() {
        try {
            if (resultSet != null) {
                resultSet.close();
            }

            if (statement != null) {
                statement.close();
            }

            if (connect != null) {
                connect.close();
            }
        } catch (Exception e) {

        }
    }

    // A utility function to check whether
    // n is power of 2 or not
    static boolean isPowerOfTwo(int n)
    {
        return n > 0 && ((n & (n - 1)) == 0);
    }

    // Returns position of the only set bit in 'n'
    static List<Integer> findPositions(int n)
    {
        List<Integer> setBits =new ArrayList<>();
        if (!isPowerOfTwo(n))
            return null;

        int count = 0;

        // One by one move the only set bit
        // to right till it reaches end
        while (n > 0) {
            n = n >> 1;

            // increment count of shifts
            ++count;
            setBits.add(count);
        }

        return setBits;
    }
    public List<AdPayLoadResponse> fetchAd(String geohash, int lastId,String merchantid,int Category) {

        String ads = "";

        List<AdPayLoadResponse> Lads = new ArrayList<>();

        try {
            if (connect.isClosed() == true)
                initConnection();
            statement = connect.createStatement();

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, "ad_" + geohash, null);
            if (tables.next()) {
                // Table exists

                statement = connect.createStatement();
                Integer intLastId = lastId;


                LocalDateTime now = LocalDateTime.now();

                String receivedOn = Util.getTimestamp(now);
                Integer vad = Util.getCurrentDay(now);
                Integer vam = Util.getCurrentMonth(now);
                Integer vay = Util.getCurrentYear(now);

                createNegotiateRequestTableIfNotExist(geohash);
                boolean ignoreB = false;
                // Result set get the result of the SQL query
//                String sqlcmd= "select * from ad_"+geohash+" as A LEFT JOIN  negotiate_"+geohash+" as B on  A.Id = B.adId where A.Id > "+intLastId+" " +
//                        "AND A.ValidTillDate >= "+vad+" AND A.ValidTillMonth >= "+vam+" AND A.ValidTillYear >= "+vay ;AND MerchantId = '"+MerchantID+"'
                String sqlcmd = "select * from ad_" + geohash + " as A LEFT JOIN  negotiate_" + geohash + " as B on  A.Id = B.adId where A.Id > " + intLastId +
                        " AND (A.Category & (1 <<"+ Category+")) > 0" +
                        " AND ( (A.ValidTillYear > " + vay + " ) OR (A.ValidTillYear = " + vay + " AND A.ValidTillMonth > " + vam + " ) " +
                        "OR (A.ValidTillYear = " + vay + " AND A.ValidTillMonth = " + vam + "  AND A.ValidTillDate >= " + vad + "))";

                if (merchantid != null) {
                    if (Category!=0) {
                        sqlcmd = "select * from ad_" + geohash + " as A where A.MerchantId ='" + merchantid + "' AND " + " A.Id > " + intLastId + " AND (A.Category & (1 <<" + Category + ")) > 0";
                    }
                    else{
                        sqlcmd = "select * from ad_" + geohash + " as A where A.MerchantId ='" + merchantid + "' AND " + " A.Id > " + intLastId;
                    }
                    ignoreB = true;
                }


                System.out.println("cmd executed is : " + sqlcmd);

                resultSet = statement
                        .executeQuery(sqlcmd);
                Lads = resultSetToString(resultSet, geohash, ignoreB);
                System.out.println("recvied ads c: " + Lads.size());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Lads;


    }


    public List<LastReceivedAdStruct> fetchMerchantGeoHashes(String merchantId) {
        List<LastReceivedAdStruct> mergeoIDS = new ArrayList<LastReceivedAdStruct>();

        try {
            String sqlcmd = "select merchant_geohash from merchant_geohases_Storage where merchant_geohash like '"+merchantId+"_%' ";

            if(connect.isClosed() == true)
                connect = initConnection();

            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            stmnt.executeQuery();
            System.out.println("cmd executed is : " + sqlcmd);
            resultSet = statement
                    .executeQuery(sqlcmd);
            while(resultSet.next()) {
                LastReceivedAdStruct obj = new LastReceivedAdStruct();

                String geoID = resultSet.getString("merchant_geohash");
                obj.geoHash= new String[1];
                obj.geoHash[0]=geoID.split("_")[2];
                obj.lastReceivedAdId = -1;

                mergeoIDS.add(obj);
            }
            return mergeoIDS;
        }
        catch(Exception ex)
        {
            return mergeoIDS;
        }

    }

    public String AddMsgToGroup(String groupName, String name, String msg, String sex, String dp, Integer parentMsg, Integer rootMsg) {


        /*

idgroup_msg int(11) AI PK
msgowner varchar(15)
parentmsg int(11)
date date
message varchar(512)
message_imgurl varchar(256)
sex varchar(10)
modifiedon date
rootmsg  INT

         */
        String sql = "INSERT INTO  " + groupName + "  (msgowner, parentmsg, date, message , message_imgurl, sex, modifiedon,rootmsg)" +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = null;
        Integer generatedKey = -1;
        try {
            preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

        preparedStatement.setString(1, name);
        preparedStatement.setInt(2, parentMsg);
            preparedStatement.setDate(3, Util.getCurrentDate());

            preparedStatement.setString(4, msg);
        preparedStatement.setString(5, dp);
            preparedStatement.setString(6, sex);
            preparedStatement.setDate(7, Util.getCurrentDate());

            preparedStatement.setInt(8, rootMsg);



            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
            generatedKey = rs.getInt(1);
            }


        preparedStatement.close();



            if(rootMsg == -1)
            {
                sql = "UPDATE  " + groupName + " set  rootmsg = ? " +
                        "where idgroup_msg = ?";

                preparedStatement = connect.prepareStatement(sql);

                preparedStatement.setInt(1, generatedKey);
                preparedStatement.setInt(2, generatedKey);
                preparedStatement.executeUpdate();

            }

            else {
                sql = "UPDATE  " + groupName + " set  modifiedon = ? " +
                        "where rootmsg = ?";

                preparedStatement = connect.prepareStatement(sql);

                preparedStatement.setDate(1, Util.getCurrentDate());
                preparedStatement.setInt(2, rootMsg);
                preparedStatement.executeUpdate();
            }






            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();

        }

    }


    public void createMerchantNegotiationsAreaTableIfNotExist(String tableName)
    {
        try {

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE negotations;";
                statement.executeUpdate(createStatement);
                statement.close();
            }
        }
        catch (Exception ex)
        {

        }
    }







    public String AddNewNegotations(NegotationPayLoad obj)
    {

        String tableName = "negotations_"+obj.geohash;
        Integer generatedKey = -1;
        try {


            createMerchantNegotiationsAreaTableIfNotExist(tableName);


            /*



            idnegotations int(11) AI PK
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(4)
maxamount int(11)
DiscountExpectation int(3)
ShoppingProbableDates varchar(45)
description varchar(512)
delivered int(1)
             */



            String sql = "INSERT INTO "+tableName+" (customercontact, merchantid, geohash, minamount, maxamount," +
                    "DiscountExpectation, ShoppingProbableDates, description, adnotification)" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, obj.customercontact);
            preparedStatement.setString(2, obj.merchantid);
            preparedStatement.setString(3, obj.geohash);
            preparedStatement.setInt(4, obj.minamount);
            preparedStatement.setInt(5, obj.maxamount);
            preparedStatement.setInt(6, obj.DiscountExpectation);
            preparedStatement.setString(7, obj.ShoppingProbableDates);
            preparedStatement.setString(8, obj.description);
            preparedStatement.setInt(9, obj.notificationid);

            preparedStatement.executeUpdate();

            System.out.println("executing following query "+sql);


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }



    public Integer insertIntoNegotiateOffer(Integer adId, String geo, Integer negotiate, Integer minBusiness)
    {
        Integer generatedKey = -1;
        createNegotiateRequestTableIfNotExist(geo);

        String tableName = "negotiate_"+geo;


                /*

        idnegotiate int(11) AI PK
adId int(11)
geohash varchar(12)
cannegotiate int(1)
minamount int(6)
         */


    try
    {

        String sql = "INSERT INTO "+tableName+" (adId, geohash, cannegotiate, minamount)"+
                "VALUES (?, ?, ?, ?)";
        PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        preparedStatement.setInt(1, adId);
        preparedStatement.setString(2, geo);
        preparedStatement.setInt(3, negotiate);
        preparedStatement.setInt(4, minBusiness);

        preparedStatement.executeUpdate();


        ResultSet rs = preparedStatement.getGeneratedKeys();
        if (rs.next()) {
            generatedKey = rs.getInt(1);
        }            preparedStatement.close();
        return generatedKey;

    } catch (SQLException e) {
        e.printStackTrace();
        return generatedKey;
    }




    }

    //
    public void insertIntomerchantGeohashesStore(String mID,String geo) {
        try {

            String sql = "INSERT INTO merchant_geohases_Storage (merchant_geohash) VALUES (?) ON DUPLICATE KEY UPDATE merchant_geohash ='"+mID + "_" + geo+"'";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, mID + "_" + geo);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void createNegotiateRequestTableIfNotExist( String geo) {

        try {


            String tableName = "negotiate_"+geo;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE negotiate;";
                statement.executeUpdate(createStatement);
             //   statement.close();
            }
        }
        catch (Exception ex)
        {

        }

    }

//    customercontact

    public List<NegotationPayLoad> fetchConsumerNegotiations(String customercontact,Integer lastReceivedNegId) {
        List<NegotationPayLoad> jobs = new ArrayList<NegotationPayLoad>();
        try {




            Integer maxJobIdReceived = lastReceivedNegId;


            String sqltblcmd = "SELECT TABLE_NAME  FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA='nearmegala'  AND TABLE_NAME like 'negotations_%'";
            PreparedStatement tstmnt = connect.prepareStatement(sqltblcmd);
            if(connect.isClosed() == true)
                connect = initConnection();

            tstmnt.executeQuery();
            ResultSet tables = statement
                    .executeQuery(sqltblcmd);
            List<NegotationPayLoad>  response = new ArrayList<NegotationPayLoad>();
            List<String> tablesnames=new ArrayList<>();
            while(tables.next()) {
                tablesnames.add(tables.getString("TABLE_NAME") );
                System.out.println("adding  " + tables.getString("TABLE_NAME"));
            }
            for  (int i = 0; i<= tablesnames.size()-1; i++) {
                System.out.println("Column " + i + " " + tablesnames.get(i));

                String sqlcmd = "select * from " + tablesnames.get(i) + " where idnegotations > " + maxJobIdReceived + "  AND customercontact  like '" + customercontact + "' ";
                System.out.println(sqlcmd);



                if (connect.isClosed() == true)
                    connect = initConnection();
                PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
                stmnt.executeQuery();
                ResultSet result = statement
                        .executeQuery(sqlcmd);

                NegotationPayLoad obj = resultSetToNegotiationsPayLoad(result);
                System.out.println("completed nego");

                System.out.println("geohash is : "+ obj.geohash);
                System.out.println("notifi id is : "+ obj.notificationid);
                if(obj.geohash!=null && obj.notificationid!=null) {
                    AdPayLoad adDetail = getAdDetails(obj.notificationid, obj.geohash);
                    if (adDetail != null) {
                        System.out.println("recived ad details");
                        obj.adObj = new AdPayLoad();
                        obj.adObj = adDetail;
                    } else {
                        System.out.println("recived null details");
                    }
                    if (obj != null && (obj.idnegotations != null || obj.idnegotations != 0))// to ensure there is some data inside
                    {
                        System.out.println("updated ad details");
                        response.add(obj);
                    }
                }
                System.out.println("cmd executed is : " + sqlcmd);
            }


            return response;
        }
        catch(Exception ex)
        {
            return jobs;
        }

    }

    public List<NegotationPayLoad> fetchNegotiations(String merchantId, String geohash, Integer lastReceivedNegId) {
        List<NegotationPayLoad> jobs = new ArrayList<NegotationPayLoad>();

        try {




            Integer maxJobIdReceived = lastReceivedNegId;


            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select * from negotations_" + geohash+" where idnegotations > "+maxJobIdReceived+"  AND merchantid  like '"+merchantId+"' ";


            if(connect.isClosed() == true)
                connect = initConnection();

            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            //   stmnt.setInt(1, maxJobIdReceived);
            //  stmnt.setDate(2, Util.getCurrentDate());
            stmnt.executeQuery();



            System.out.println("cmd executed is : " + sqlcmd);


            resultSet = statement
                    .executeQuery(sqlcmd);

            return resultSetToNegotiationsPayLoad(resultSet, geohash);
        }
        catch(Exception ex)
        {
            return jobs;
        }

    }

    public void createTableIfNotExistGeneric( String tableName) {

        try {


            String mytabename = tableName;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, mytabename, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+mytabename+"  LIKE "+tableName+" ;";
                statement.executeUpdate(createStatement);
                //   statement.close();
            }
        }
        catch (Exception ex)
        {

        }

    }
    public void createLikeTableIfNotExistGeneric( String tableName, String liketablename) {

        try {
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, tableName, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+tableName+"  LIKE "+liketablename+" ;";
                statement.executeUpdate(createStatement);
                //   statement.close();
            }
        }
        catch (Exception ex)
        {

        }
    }
    public void createTableIfNotExistGeneric( String tableName, String geo) {

        try {


            String mytabename = tableName+"_"+geo;
            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, mytabename, null);
            if (tables.next()) {
                // Table exists
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+mytabename+"  LIKE "+tableName+" ;";
                statement.executeUpdate(createStatement);
                //   statement.close();
            }
        }
        catch (Exception ex)
        {

        }

    }
    public boolean getTransactionStatus(String customerID,int recordID)
    {
        boolean transactionStatus = false;
        String transactsTable = customerID+"_Transactions";
        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement = connect
                    .prepareStatement("SELECT *  from "+transactsTable+" where recordId="+ recordID);
            resultSet = preparedStatement.executeQuery();

            while(resultSet.next())
            {
                transactionStatus = resultSet.getBoolean("status");
            }
            return transactionStatus;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean getTransactionStatus(int customerID,int statusID)
    {
        boolean transactionStatus = false;
        String transactsTable = customerID+"_Transactions";
        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement = connect
                    .prepareStatement("SELECT *  from "+transactsTable+" where adId="+ statusID);
            resultSet = preparedStatement.executeQuery();

            while(resultSet.next())
            {
                transactionStatus = resultSet.getBoolean("status");
            }
            return transactionStatus;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getTransactions(String customerID)
    {
        String transactions = "";
        String transactsTable = customerID+"_Transactions";

        List<PaymemtTransaction> pts =new ArrayList<PaymemtTransaction>();
        try {
            if((connect == null) || (connect.isClosed() == true))
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            preparedStatement = connect
                    .prepareStatement("SELECT *  from "+transactsTable);
            resultSet = preparedStatement.executeQuery();

            while(resultSet.next())
            {
                PaymemtTransaction pt =new PaymemtTransaction();
                pt.adId = resultSet.getInt("adId");
                pt.recordID = resultSet.getInt("recordID");
                pt.timeStamp = resultSet.getDate("timeStamp");
                pt.status = resultSet.getBoolean("status");
                pts.add(pt);
            }
            transactions = new Gson().toJson(pts);
            return transactions;

        } catch (SQLException e) {
            e.printStackTrace();
            return "-1";
        }
    }

    public int getMyBalance( String merchantID )
    {
        int balance =0;
        String merID="";
        try {

            if(merchantID.contains("_")) {
                merID = merchantID;
            }
            else
            {
                merID = "Status_"+merchantID;
            }
            String transactsTable =  merID+"_Transactions";

            String sqlcmd = "select SUM(Amount) from " + transactsTable+" where Status =1";
            if(connect.isClosed())
                connect = initConnection();

            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
            stmnt.executeQuery();
            System.out.println("cmd executed is : " + sqlcmd);
            resultSet = statement.executeQuery(sqlcmd);

            if(resultSet.next()) {
                balance = resultSet.getInt(1);
            }
            return balance;
        }
        catch(Exception ex)
        {
            return balance;
        }
    }

    public Integer insertTransaction(String customerID,int ad_id,String Merchant_Id_geohash, Timestamp timestamp, boolean status)
    {

        Integer generatedKey = -1;
        String actualTable = "customerID_Transactions";
        String transactsTable = customerID+"_Transactions";
        int isCreated = createTransactionsTableIfNotExist(transactsTable,actualTable);




        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for merchant is "+transactsTable+" \n is ");
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + transactsTable + " (adId, timeStamp, status, Merchant_geohash)" +
                        "VALUES (?, ?, ?, ?)";
                System.out.println(sql);
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setInt(1, ad_id);
                preparedStatement.setTimestamp(2, timestamp);
                preparedStatement.setBoolean(3, status);
                preparedStatement.setString(4, Merchant_Id_geohash);
                System.out.println(preparedStatement.getMetaData());
                preparedStatement.executeUpdate();

                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    generatedKey = rs.getInt(1);
                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }

    public Integer insertTransactionsIntoMerchant(String merchantID,int ad_id,String customerID, Timestamp timestamp, boolean status,int amount)
    {

        Integer generatedKey = -1;
        String actualTable = "merchant_Transactions";
        String merID="";

        if(merchantID.split("_").length>2) {
            merID = merchantID.replace("_"+merchantID.split("_")[2],"");
        }
        else
        {
            merID = "Status_"+merchantID.split("_")[0];
        }
        String transactsTable =  merID+"_Transactions";
        int isCreated = createTransactionsTableIfNotExist(transactsTable,actualTable);

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("the slot received for merchant is "+transactsTable+" \n is ");
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + transactsTable + " (adId, timeStamp, Status, UserId, Amount)" +
                        "VALUES (?, ?, ?, ?,?)";
                System.out.println(sql);
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setInt(1, ad_id);
                preparedStatement.setTimestamp(2, timestamp);
                preparedStatement.setBoolean(3, status);
                preparedStatement.setString(4, customerID);
                preparedStatement.setInt(5, amount);
                System.out.println(preparedStatement.getMetaData());
                preparedStatement.executeUpdate();

//                ResultSet rs = preparedStatement.getGeneratedKeys();
//                if (rs.next()) {
//                    generatedKey = rs.getInt(1);
//                }
                preparedStatement.close();
                return 1;

            } catch (SQLException e) {
                e.printStackTrace();
                return 0;
            }
        }
        return generatedKey;
    }

    //public Integer
    public Integer updateDeliveryStatus(Integer statusId,Integer deliveryStatus,Integer userId, String customerContact)
    {
        String transactsTable = statusId+"_"+userId+"_deliveryStatus";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {

            PreparedStatement update = connect.prepareStatement
                    ("UPDATE "+transactsTable+" SET deliveryStatus = "+deliveryStatus+ " WHERE statusid= ? AND userid= ? AND customerContact= ?");


            update.setInt(1, statusId);
            update.setInt(2, userId);
            update.setString(3, customerContact);

            update.executeUpdate();

            update.close();
            return 1;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String getDeliveryStatus(Integer statusId,Integer userId)
    {
        List<DeliveryStatusPayLoad> response = new ArrayList<DeliveryStatusPayLoad>();

        String transactsTable = statusId+"_"+userId+"_deliveryStatus";
        String output = "-1";
        String sqlcmd = "select * from "+transactsTable;
        System.out.println("for /orderstatus sqlcmd "+sqlcmd);
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);

            while(resultSet.next()) {

                DeliveryStatusPayLoad obj = new DeliveryStatusPayLoad();
                obj.id = resultSet.getInt("id");
                obj.userid = resultSet.getInt("userid");
                obj.customerContact = resultSet.getString("customerContact");
                obj.deliveryStatus = resultSet.getInt("deliveryStatus");
                obj.statusid = resultSet.getInt("statusid");
                response.add(obj);
            }
            output = new Gson().toJson(response);
            System.out.println("for /orderstatus returning "+output);
        }
        catch(Exception ex)
        {
            output ="-1";
        }
        return output;
    }

    public Integer insertDeliveryStatus(Integer statusId,Integer deliveryStatus,Integer userId, String customerContact)
    {

        Integer generatedKey = -1;

        String transactsTable = statusId+"_"+userId+"_deliveryStatus";
        System.out.println("trying to create table "+transactsTable+" \n is ");
        int isCreated = createDeliveryTableIfNotExist(transactsTable);

        System.out.println("the slot received for merchant is "+transactsTable+" \n is ");
        if(isCreated!=-1) {
            try {
                String sql = "INSERT INTO " + transactsTable + " (statusid, userid, customerContact, deliveryStatus)" +
                        "VALUES (?, ?, ?, ?)";
                System.out.println(sql);
                PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                preparedStatement.setInt(1, statusId);
                preparedStatement.setInt(2, userId);
                preparedStatement.setString(3, customerContact);
                preparedStatement.setInt(4, deliveryStatus);
                System.out.println(preparedStatement.getMetaData());
                preparedStatement.executeUpdate();

                ResultSet rs = preparedStatement.getGeneratedKeys();
                if (rs.next()) {
                    generatedKey = rs.getInt(1);
                }
                preparedStatement.close();
                return generatedKey;

            } catch (SQLException e) {
                e.printStackTrace();
                return generatedKey;
            }
        }
        return generatedKey;
    }
    public int createDeliveryTableIfNotExist(String tableName) {
        int isCreated=-1;
        try {

            String actualTable = "statusId_UserId_deliveryStatus";
            String mytabename = tableName;
            try {
                if(connect.isClosed() == true)
                    connect = initConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DatabaseMetaData dmd = connect.getMetaData();
            System.out.println("trying to create table"+ mytabename);;
            System.out.println(mytabename);

            ResultSet tables = dmd.getTables(null, null, mytabename, null);
            if (tables.next()) {
                // Table exists
                isCreated=1;
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+mytabename+"  LIKE "+actualTable+" ;";
                System.out.println(createStatement);
                isCreated = statement.executeUpdate(createStatement);
                //   statement.close();
                isCreated=1;
            }
        }
        catch (Exception ex)
        {
            System.out.println("failed to create");
            System.out.println(ex.getMessage());
            return isCreated;
        }
        return isCreated;
    }

    public int createTransactionsTableIfNotExist(String myTableName, String actualTable) {
        int isCreated=-1;
        try {
            //String myTableName = customerID+"_Transactions";
            try {
                if(connect.isClosed() == true)
                    connect = initConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DatabaseMetaData dmd = connect.getMetaData();
            System.out.println("trying to create table"+ myTableName);
            System.out.println(myTableName);

            ResultSet tables = dmd.getTables(null, null, myTableName, null);
            if (tables.next()) {
                // Table exists
                isCreated=1;
            } else {
                // CREATE TABLE new_tbl LIKE orig_tbl;
                statement = connect.createStatement();
                String createStatement = "CREATE TABLE "+myTableName+"  LIKE "+actualTable+" ;";
                System.out.println(createStatement);
                isCreated = statement.executeUpdate(createStatement);
                //   statement.close();
                isCreated=1;
            }
        }
        catch (Exception ex)
        {
            System.out.println("failed to create");
            System.out.println(ex.getMessage());
            return isCreated;
        }
        return isCreated;
    }

    private List<NegotationPayLoadResponse> resultSetToNegotiationsResponsePayLoad(ResultSet resultSet)
    {
        List<NegotationPayLoadResponse> response = new ArrayList<NegotationPayLoadResponse>();


        try
        {

            /*

idnegotiationsresponse int(11) AI PK
idnegotiations int(11)
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(11)
maxamount int(11)
Discount int(11)
ShoppingallowedDates varchar(512)
advanceNeed int(11)
description varchar(512)
negotiationsresponse int(1)
respondedon datetime
notificationid int(11)
             */
            while(resultSet.next()) {

                NegotationPayLoadResponse obj = new NegotationPayLoadResponse();
                obj.idnegotiationresponse = resultSet.getInt("idnegotiationsresponse");
                obj.idnegotations = resultSet.getInt("idnegotiations");
                obj.merchantid = resultSet.getString("merchantid");
                obj.geohash = resultSet.getString("geohash");
                obj.minamount = resultSet.getInt("minamount");
                obj.maxamount = resultSet.getInt("maxamount");
                obj.DiscountExpectation = resultSet.getInt("Discount");
                obj.description = resultSet.getString("description");
                obj.notificationid = resultSet.getInt("notificationid");
                obj.customercontact = resultSet.getString("customercontact");
                obj.ShoppingProbableDates = resultSet.getString("ShoppingallowedDates");
                obj.advanceNeeded = resultSet.getInt("advanceNeed");
                obj.negotiationresponse = resultSet.getInt("negotiationsresponse");;
                obj.canPostToStatus = resultSet.getInt("canPostToStatus");;



                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return null;
        }


    }

    public List<NegotationPayLoadResponse> fetchNegotiationResponses(String customercontact, List<Integer> lastResponsesReceived, List<String> negotiationsareas)
    {

        System.out.println("In fetchNegotiationResponses .. ");

        List<NegotationPayLoadResponse> rs = new ArrayList<NegotationPayLoadResponse>();
        for(int i=0;i<lastResponsesReceived.size();i++)
        {

            /*
            dnegotiationsresponse int(11) AI PK
idnegotiations int(11)
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(11)
maxamount int(11)
Discount int(11)
ShoppingallowedDates varchar(512)
advanceNeed int(11)
description varchar(512)
negotiationsresponse int(1)
respondedon datetime
notificationid int(11)
             */
try {

                int lastNegotiationResponse = lastResponsesReceived.get(i);
                String tableName = "negotiationsresponse_"+negotiationsareas.get(i);



                // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

                String sqlcmd = "select * from "+tableName+" where idnegotiations >= "+lastNegotiationResponse+"  AND customercontact = '"+customercontact+"' ";


                if(connect.isClosed() == true)
                    connect = initConnection();

                PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

             //   stmnt.executeQuery();



                System.out.println("cmd executed is : " + sqlcmd);


                resultSet = stmnt
                        .executeQuery(sqlcmd);

                rs.addAll(resultSetToNegotiationsResponsePayLoad(resultSet));
            }
            catch(Exception ex)
            {
            }
        }
        return rs;
    }

    public String AddNegotiationResponse(String merchantId, String geoHash, Integer negotiationid, NegotationPayLoad negotiationDetails) {

        createTableIfNotExistGeneric("negotiationsresponse",geoHash);

        String tableName = "negotiationsresponse_"+geoHash;
        Integer generatedKey  = -1;




        try
        {

            /*

            idnegotiationsresponse int(11) AI PK
idnegotiations int(11)
customercontact varchar(15)
merchantid varchar(128)
geohash varchar(6)
minamount int(11)
maxamount int(11)
Discount int(11)
ShoppingallowedDates varchar(512)
advanceNeed int(11)
description varchar(512)
negotiationsresponse int(1)
notificationid int(11)
             */

            String sql = "INSERT INTO "+tableName+" (idnegotiations,customercontact, merchantid, geohash, minamount," +
                    "maxamount,Discount,ShoppingallowedDates,advanceNeed,description,negotiationsresponse,notificationid,canPostToStatus)"+
                    "VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, negotiationDetails.idnegotations);
            preparedStatement.setString(2, negotiationDetails.customercontact);
            preparedStatement.setString(3, negotiationDetails.merchantid);
            preparedStatement.setString(4, negotiationDetails.geohash);

            preparedStatement.setInt(5, negotiationDetails.minamount);
            preparedStatement.setInt(6, negotiationDetails.maxamount);
            preparedStatement.setInt(7, negotiationDetails.DiscountExpectation);
            preparedStatement.setString(8, negotiationDetails.ShoppingProbableDates);

            preparedStatement.setInt(9, negotiationDetails.advance);
            preparedStatement.setString(10, negotiationDetails.description);
            preparedStatement.setInt(11, negotiationDetails.response);
            preparedStatement.setInt(12, negotiationDetails.notificationid);
            preparedStatement.setInt(13, 1);
            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }

    }



    public String insertStatusJoinee(Integer statusid, Integer userid,Integer PaymentStatus) {
        /*
        geohash varchar(45)
contact varchar(15)
statusid int(11)
         */

        Integer generatedKey = -1;
        try
        {

//        String sql = "INSERT INTO statusjoineelist (geohash,contact, statusid)"+
//                "VALUES (?,?, ?)";
//        PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
//        preparedStatement.setString(1, geohash);
//        preparedStatement.setString(2, contact);
//        preparedStatement.setInt(3, statusid);
//        preparedStatement.executeUpdate();


            String sql = "INSERT INTO ad_join (statusid,userid,paymentStatus)"+
                "VALUES (?,?,?)";
        PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
//        preparedStatement.setString(1, geohash);
        preparedStatement.setInt(1, statusid);
        preparedStatement.setInt(2, userid);
        preparedStatement.setInt(3, PaymentStatus);
        preparedStatement.executeUpdate();


        ResultSet rs = preparedStatement.getGeneratedKeys();
        if (rs.next()) {
            generatedKey = rs.getInt(1);
        }            preparedStatement.close();
            updatePaymentStatus(userid, statusid);
        return generatedKey.toString();

    } catch (SQLException e) {
        e.printStackTrace();
        return generatedKey.toString();
    }
    }

    public int updatePaymentStatus(Integer userid, Integer statusId) {
        int paymentStatus =-1;
        try {
            if(getTransactionStatus(userid, statusId))
            {
                paymentStatus =1;
                updatePayment(paymentStatus,userid,statusId);
            }
            else {
                paymentStatus =0;
            }
        }
        catch (Exception ex)
        {

        }
        return paymentStatus;
    }

    public Integer updatePayment(Integer paymentstatus, Integer userid, Integer statusId)
    {

        String tableName = "ad_join";

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {

            PreparedStatement update = connect.prepareStatement
                    ("UPDATE ad_join SET paymentStatus = "+paymentstatus+" WHERE userid = ? AND statusid = ?");


            update.setInt(1, userid);
            update.setInt(2, statusId);

            update.executeUpdate();

            update.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public Integer confirmPaymentAtDA(String userid, Integer adId)
    {

        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {

            PreparedStatement update = connect.prepareStatement
                    ("UPDATE "+userid+"_Transactions SET Status = 1 WHERE adId = ?");


            update.setInt(1, adId);

            update.executeUpdate();

            update.close();
            return 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public String fetchjoineecount(Integer statusid, Integer userID) {

        Integer count = 0;

        try {

            String tableName = "ad_join";



            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select count(*) from "+tableName+" where statusId="+statusid ;
            if(userID!=-1)
            sqlcmd+=" AND userid="+userID ;


            if(connect.isClosed() == true)
                connect = initConnection();

            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            stmnt.executeQuery();



            System.out.println("cmd executed is : " + sqlcmd);


            resultSet = statement
                    .executeQuery(sqlcmd);


            if(resultSet.next()) {
                 count = resultSet.getInt(1);
            }
            return String.valueOf(count);
        }
        catch(Exception ex)
        {
            return String.valueOf(count);
        }

    }

    public List<JoinCountPayLoad> fetchalljoinees(Integer statusid, Integer userid) {

        String tableName = "ad_join";
        String sqlcmd = "select * from "+tableName+" where statusId="+statusid;
        System.out.println("sql cmd "+sqlcmd);
        List<JoinCountPayLoad> response = new ArrayList<JoinCountPayLoad>();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            resultSet = stmnt.executeQuery();


                while(resultSet.next()) {

                    JoinCountPayLoad obj = new JoinCountPayLoad();
                    obj.id = resultSet.getInt("id");
                    obj.userid = resultSet.getInt("userid");
                    obj.paymentstatus = resultSet.getInt("paymentStatus");
                    obj.statusId = resultSet.getInt("statusid");

                    response.add(obj);
                }
            System.out.println("respones");
            System.out.println(response);
                return response;
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());

            return response;
        }

    }



    private List<statuspayload> resultSetTostatuspayload(ResultSet resultSet)
    {
        List<statuspayload> response = new ArrayList<statuspayload>();


        try
        {

            /*
idnotification int(11)
validfrom date
validto date
contact varchar(15)
canjoin int(11)
bringcharges int(11)
registeredcontactnumber varchar(15)
finaldiscount int(11)
geohash varchar(45)
places varchar(45)
joinedcount int(11)
shoppingdate date
offerdesc varchar(128)
value int(11)
flat int(11)
ispercentage int(11)
imgurl varchar(128)
             */
            while(resultSet.next()) {

                statuspayload obj = new statuspayload();
                obj.idstatus = resultSet.getInt("idstatus");
                obj.idnotification = resultSet.getInt("idnotification");
                obj.validfrom = resultSet.getDate("validfrom").toString();
                obj.validto = resultSet.getDate("validto").toString();
                obj.contactOn = resultSet.getString("contact");
                obj.join = resultSet.getInt("canjoin");
                obj.extraforbringing = resultSet.getInt("bringcharges");
                obj.registeredcontactnumber = resultSet.getString("registeredcontactnumber");
                obj.finaldiscount = resultSet.getInt("finaldiscount");
                obj.geohashes = resultSet.getString("geohash");
                obj.joinedcount = resultSet.getInt("joinedcount");
                obj.shoppingdate = resultSet.getDate("shoppingdate").toString();
                obj.offerdesc = resultSet.getString("offerdesc");
                obj.value = resultSet.getInt("value");
                obj.flat = resultSet.getInt("flat");
                obj.ispercentage = resultSet.getInt("ispercentage");
                obj.imgurl = resultSet.getString("imgurl");

                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    public List<statuspayload> fetchallstatuses(String geohash, int laststatusid) {
        List<statuspayload> statuses = new ArrayList<statuspayload>();

        try {

            createTableIfNotExistGeneric("status", geohash);
            String tableName = "status_"+geohash;
            java.sql.Date curdate = Util.getCurrentDate();
            String sqlcmd = "select * from "+tableName+" where "+curdate+"<=validto AND idstatus>"+laststatusid;
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            stmnt.executeQuery();

            resultSet = statement
                    .executeQuery(sqlcmd);

            return resultSetTostatuspayload(resultSet);
        }
        catch(Exception ex)
        {
            return statuses;
        }




    }

    public versionclass getMerchantLatest()
    {
        versionclass obj = new versionclass();
        String sqlcmd = "select * from  merchantlatestversion";

        try
        {
            if((connect == null ) || (connect.isClosed() == true))
                connect = initConnection();

        System.out.println("connect is established");
            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);
             obj =  resultSetToversioncalss(resultSet);

            return obj;
        }
        catch(Exception ex)
        {
		System.out.println("In exception of getMerchantLatest "+ex.getMessage());
            return obj;
        }

    }

    private versionclass resultSetToversioncalss(ResultSet resultSet)
    {
        versionclass obj = new versionclass();

        try
        {

            /*
idcategory int(11) AI PK
type varchar(45)
imgurl varchar(128
             */
            while(resultSet.next()) {

                obj.version = resultSet.getInt("version");
            }

            return obj;
        }
        catch (Exception ex)
        {
            return obj;
        }


    }
    public List<CategoryPayLoad> getSupportedCategories()
    {
        String tableName = "category";
        String sqlcmd = "select * from "+tableName+" order by idcategory";
        List<CategoryPayLoad> cats = new ArrayList<>();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

          //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);
            cats =  resultSetTocategorypayload(resultSet);

            return cats;
        }
        catch(Exception ex)
        {
            return cats;
        }
    }

    private List<CategoryPayLoad> resultSetTocategorypayload(ResultSet resultSet)
    {
        List<CategoryPayLoad> response = new ArrayList<CategoryPayLoad>();


        try
        {

            /*
idcategory int(11) AI PK
type varchar(45)
imgurl varchar(128
             */
            while(resultSet.next()) {

                CategoryPayLoad obj = new CategoryPayLoad();
                obj.catid = resultSet.getInt("idcategory");
                obj.catname = resultSet.getString("type");
                obj.catimg = resultSet.getString("imgurl");
                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    public String getMerchantIdFromContact(String contact)
    {
        String tableName = "merchant";
        String mId = "0";
        String sqlcmd = "select MerchantId from "+tableName+" where MerchantContact='"+contact+"' order by Id desc";
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);

            if(resultSet.next())
            {
                mId = resultSet.getString("MerchantId");
            }
            return mId;
        }
        catch(Exception ex)
        {
            return mId;
        }
    }

    private List<counteremppayload> resultSetTocounterspayload(ResultSet resultSet)
    {
        List<counteremppayload> response = new ArrayList<counteremppayload>();


        try
        {

            /*
idcategory int(11) AI PK
type varchar(45)
imgurl varchar(128
             */
            while(resultSet.next()) {

                counteremppayload obj = new counteremppayload();
                obj.username= resultSet.getString("counterid");
                obj.password = resultSet.getString("password");
                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    public List<counteremppayload> getmerchantcounterdetails(String mId, String tableName) {

   //     String mId = getMerchantIdFromContact(contact);

        String str = "";

     //   String tableName = "counters";
        String sqlcmd = "select * from "+tableName+" where merchantid='"+mId+"'";
        System.out.println("Invoking "+sqlcmd);
        List<counteremppayload> cats = new ArrayList<>();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);
            cats =  resultSetTocounterspayload(resultSet);

            System.out.println("returning "+cats.toArray().toString()+" for the command"+sqlcmd);



            return cats;
        }
        catch(Exception ex)
        {
            return cats;
        }


    }

    public String getNextReceiptId(String merchantId)
    {
        try {
            if(connect.isClosed() == true)
                connect = initConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String  receiptid = "1";
        try {
            statement = connect.createStatement();

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, "receipts", null);
            if (tables.next()) {
                // Table exists

                statement = connect.createStatement();
                // Result set get the result of the SQL query
                resultSet = statement
                        .executeQuery("select max(receiptid) receiptid from receipts where merchantid='"+merchantId+"'");


                while (resultSet.next()) {
                    receiptid = resultSet.getString("receiptid");
                }

                //String nextIdstr = receiptid.substring(3,)
                if((receiptid == null)) {
                    return "1";
                }
                if(receiptid.length() == 0)
                {
                    return "1";
                }
                Integer val = Integer.valueOf(receiptid);
                ++val;
                return val.toString();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return receiptid;
    }





    public String sendBillToNumber(String merchantId, String contact, String msgurl, String receiptid) {
/*

idreceipts int(11) AI PK
contact varchar(45)
imageurl varchar(128)
merchantid varchar(45)
date date
 */

        String tableName = "receipts";
        Integer generatedKey = -1;
        try {
            String sql = "INSERT INTO "+tableName+" (contact, imageurl, merchantid, date, receiptid)" +
                    "VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, contact);
            preparedStatement.setString(2,msgurl);
            preparedStatement.setString(3,merchantId);
            preparedStatement.setDate(4, Util.getCurrentDate());
            preparedStatement.setString(5,receiptid);


            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }






    public String sendMsgToNumber(String merchantId, String contact, String msgurl, String receiptid, String billamount) {
/*

idreceipts int(11) AI PK
contact varchar(45)
imageurl varchar(128)
merchantid varchar(45)
date date
 */

String tableName = "receipts";
        Integer generatedKey = -1;
        try {
            String sql = "INSERT INTO "+tableName+" (contact, imageurl, merchantid, date, receiptid, billamount)" +
                    "VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, contact);
            preparedStatement.setString(2,msgurl);
            preparedStatement.setString(3,merchantId);
            preparedStatement.setDate(4, Util.getCurrentDate());
            preparedStatement.setString(5,receiptid);
            preparedStatement.setString(6,billamount);


            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
        }
    }

    public List<contactspecificinfo> getMerchantreceiptsinfo(String merchantId,String lastId)
    {
        String tableName = "receipts";
        Integer id = Integer.valueOf(lastId);
        ArrayList<contactspecificinfo> temp = new ArrayList<contactspecificinfo>();
        System.out.println("In getMerchantreceiptsinfo in db for merchantId "+merchantId+" lastId is "+lastId);

        String sqlcmd = "select * from "+tableName+" where merchantid='"+merchantId+"' AND idreceipts>"+id;

        System.out.println("getMerchantreceiptsinfo command executing is "+sqlcmd);

        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);


            List<contactspecificinfo> obj = resultSetToreceiptspayload(resultSet);
            if(obj.size() == 0)
            {
                System.out.println("getMerchantreceiptsinfo No receipts history available ");

                contactspecificinfo temp1 = new contactspecificinfo();
                temp1.Id = -2;
                obj.add(temp1);
            }
            System.out.println("getMerchantreceiptsinfo returning list size of "+obj.size());

            return obj;
        }
        catch(Exception ex)
        {
            System.out.println("getMerchantreceiptsinfo in exception  "+ex.getMessage());

            return temp;
        }
    }

    private List<contactspecificinfo> resultSetToreceiptspayload(ResultSet resultSet)
    {
        List<contactspecificinfo> response = new ArrayList<contactspecificinfo>();


        try
        {

            /*
    String imgurl;
    Integer type;
    String merchantname;
    String date;
    String merchantreceiptid;
    Integer Id;



    idreceipts int(11) AI PK
contact varchar(45)
imageurl varchar(128)
merchantid varchar(45)
date date
receiptid varchar(45)
type int(11)
             */
            while(resultSet.next())  {

                contactspecificinfo obj = new contactspecificinfo();
                obj.Id= resultSet.getInt("idreceipts");
                obj.imgurl = resultSet.getString("imageurl");
                obj.type = resultSet.getInt("type");
                obj.merchantname = this.getMerchantNameForId(resultSet.getString("merchantid"));
                obj.date = resultSet.getDate("date").toString();
                obj.merchantreceiptid = resultSet.getString("receiptid");
                obj.billamount = resultSet.getString("billamount");

                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    public List<contactspecificinfo> getContactSpecificDetails(String contact, String lastId)
    {
        String tableName = "receipts";
        Integer id = Integer.valueOf(lastId);
        ArrayList<contactspecificinfo> temp = new ArrayList<contactspecificinfo>();
        if(contact.contains("+") == true) {
            contact = contact.substring(3);

        }

        String sqlcmd = "select * from "+tableName+" where contact like '%"+contact+"' AND idreceipts>"+lastId;

        System.out.println("executing sqlcmd "+sqlcmd);
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);


        List<contactspecificinfo> obj = resultSetToreceiptspayload(resultSet);
        if(obj.size() == 0)
        {
            contactspecificinfo temp1 = new contactspecificinfo();
            temp1.Id = -2;
            obj.add(temp1);
        }
            return obj;
        }
        catch(Exception ex)
        {
            return temp;
        }
    }



    public String getBirthdayCount(String geoHash) {
        String str = "";
        Integer count = 0;

        String tableName = "birthdays";
        String sqlcmd = "select count(*) from "+tableName+" where geohash='"+geoHash+"'";
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);

            if(resultSet.next())
            {
                count = resultSet.getInt(1);
            }

            return count.toString();
        }
        catch(Exception ex)
        {
            return str;
        }
    }
    private ArrayList<supportedsubjobs> resultSetToSupportedSubJobspayload(ResultSet resultSet)
    {
        /*

        mysql> desc supportedsubjobs;
+-------------------+---------------+------+-----+---------+-------+
| Field             | Type          | Null | Key | Default | Extra |
+-------------------+---------------+------+-----+---------+-------+
| subjobtypeid      | int(11)       | NO   | PRI | NULL    |       |
| subjobname        | varchar(256)  | YES  |     | NULL    |       |
| subjobdescription | varchar(1024) | YES  |     | NULL    |       |
| mandatory         | int(11)       | YES  |     | 0       |       |
+-------------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

         */
        ArrayList<supportedsubjobs> response = new ArrayList<supportedsubjobs>();


        try
        {


            while(resultSet.next()) {

                supportedsubjobs obj = new supportedsubjobs();
                obj.subjobtypeid = String.valueOf(resultSet.getInt("subjobtypeid"));
                obj.subjobname = resultSet.getString("subjobname");
                obj.subjobdescription = resultSet.getString("subjobdescription");
                obj.mandatory = String.valueOf(resultSet.getInt("mandatory"));

                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    private ArrayList<supportedjobs> resultSetToSupportedJobspayload(ResultSet resultSet)
    {

        /*

mysql> desc supportedjobs;
+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| jobtypeid      | int(11)       | NO   | PRI | NULL    | auto_increment |
| jobname        | varchar(256)  | YES  |     | NULL    |                |
| jobdescription | varchar(1024) | YES  |     | NULL    |                |
| jobimg         | varchar(256)  | YES  |     | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+

         */
        ArrayList<supportedjobs> response = new ArrayList<supportedjobs>();


        try
        {

            /*
idcategory int(11) AI PK
type varchar(45)
imgurl varchar(128
             */
            while(resultSet.next()) {

                supportedjobs obj = new supportedjobs();
                obj.JobId = String.valueOf(resultSet.getInt("jobtypeid"));
                obj.Jobtype = resultSet.getString("jobname");
                obj.jobdescription = resultSet.getString("jobdescription");
                obj.jobimgurl = resultSet.getString("jobimg");
                obj.subjobs = getSupportedSubJobs(obj.Jobtype);
                response.add(obj);
            }

            return response;
        }
        catch (Exception ex)
        {
            return response;
        }


    }

    public ArrayList<supportedsubjobs> getSupportedSubJobs(String tablePrefix) {

        String tableName = tablePrefix+"_subtype";




        String sqlcmd = "select * from "+tableName+" order by subjobtypeid";
        ArrayList<supportedsubjobs> supportedsubJobs = new ArrayList<>();
        try
        {

            if(connect.isClosed() == true)
                connect = initConnection();

            DatabaseMetaData dmd = null;
            try {
                dmd = connect.getMetaData();
                ResultSet tables = dmd.getTables(null, null, tableName, null);
                if(tables.next() == false)
                    return supportedsubJobs;
            } catch (SQLException e) {
                e.printStackTrace();
                return supportedsubJobs;
            }


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);
            supportedsubJobs =  resultSetToSupportedSubJobspayload(resultSet);

            return supportedsubJobs;
        }
        catch(Exception ex)
        {
            return supportedsubJobs;
        }
    }

    public List<supportedjobs> getSupportedJobs() {

        String tableName = "supportedjobs";
        String sqlcmd = "select * from "+tableName+" order by jobtypeid";
        List<supportedjobs> supportedJobs = new ArrayList<>();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            //  stmnt.executeQuery();

            resultSet = stmnt
                    .executeQuery(sqlcmd);
            supportedJobs =  resultSetToSupportedJobspayload(resultSet);

            return supportedJobs;
        }
        catch(Exception ex)
        {
            return supportedJobs;
        }
    }
}
