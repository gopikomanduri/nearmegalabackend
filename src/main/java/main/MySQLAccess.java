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

    public Connection getConnection()
    {
        return connect;
    }

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
                                + "user=nearme&password=nearme");
            }
 System.out.println("returning connect");
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
        int Id = 0;
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


    public List<JobPayLoad> getJobsAround(String geohash, String lastJobId)
    {

        List<JobPayLoad> jobs = new ArrayList<JobPayLoad>();

        try {




            Integer maxJobIdReceived = Integer.valueOf(lastJobId);


           // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select * from job_" + geohash+" where idjobs > "+maxJobIdReceived+"  AND postedon >= '"+Util.getCurrentDate()+"' ";


            if(connect.isClosed() == true)
                connect = initConnection();

            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);
         //   stmnt.setInt(1, maxJobIdReceived);
          //  stmnt.setDate(2, Util.getCurrentDate());
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
         */

        try {
            String sql = "INSERT INTO "+tableName+" (employername, employerlocationurl, jobDescription, locationLandmark, offeringpost," +
                    "educationQualification, experienceReq, sex, ageLimitation, contact, emailId, interviewDate,shiftTimings, salary, postedon )" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
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
            preparedStatement.setDate(15, Util.getCurrentDate());



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

            Date dateval = Util.stringToDate(obj.dob);
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


            System.out.println("command executed is "+sql);
            return generatedKey.toString();

        } catch (SQLException e) {
            e.printStackTrace();
            return generatedKey.toString();
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

            Date validFrom = Util.stringToDate(obj.validfrom);
            Date validTo = Util.stringToDate(obj.validto);
            Date shoppingdate = Util.stringToDate(obj.shoppingdate);

            String sql = "INSERT INTO "+table+" (idnotification, validfrom,  validto, contact, canjoin, " +
                    "bringcharges, registeredcontactnumber, finaldiscount, geohash, shoppingdate, offerdesc, value, flat, ispercentage)" +
                    " VALUES (?, ?, ? ,? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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


            System.out.println(preparedStatement.toString());


            preparedStatement.executeUpdate();


            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                generatedKey = rs.getInt(1);
            }            preparedStatement.close();

            preparedStatement.close();


            System.out.println("command executed is "+sql);
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
                temp.country = resultSet.getString("country");

            }

            System.out.println("returning role is "+temp.toString());
            return new Gson().toJson(temp);
        }
        catch(Exception ex)
        {
            System.out.println("exception while returning merchant details ");
            merchantDetails temp = new merchantDetails();

            return new Gson().toJson(temp);
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
         */

        try {
            String sql = "INSERT INTO "+tableName+" (MerchantId, geohash, latitude, longitude, imgurl," +
                    "MerchantName, state, country, registeredon, isactive, shopNo, MerchantContact, password,role)" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connect.prepareStatement(sql);
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


            preparedStatement.executeUpdate();
            preparedStatement.close();
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


        if(merchantGeoHash.length() < 6)
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



                response.add(obj);
            }

            return response;
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

    private List<AdPayLoadResponse> resultSetToString(ResultSet resultSet, String geoHash)
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





                obj.cat = resultSet.getString("A.Category");
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
                obj.negotiate = resultSet.getInt("B.cannegotiate");
                obj.minBusiness=resultSet.getInt("B.minamount");
            LatLng temp = null;
//            temp.lng = 0.0;
//            temp.lat = 0.0;
            obj.lng = 0.0;
            obj.lat = 0.0;

                if((temp = merchantLatLngs.get(obj.merchantid)) == null)
                {
                     temp = getLatLatForMerchant(obj.merchantid, geoHash);
                }
                if(temp != null) {
                    obj.lat = temp.lat;
                    obj.lng = temp.lng;
                }
            merchantLatLngs.put(obj.merchantid, temp);
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

    public List<AdPayLoadResponse> fetchAd(String geohash, int lastId) {

        String ads = "";

        List<AdPayLoadResponse> Lads = new ArrayList<>();

        try {
            if(connect.isClosed() == true)
                initConnection();
            statement = connect.createStatement();

            DatabaseMetaData dmd = connect.getMetaData();


            ResultSet tables = dmd.getTables(null, null, "ad_"+geohash, null);
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

                // Result set get the result of the SQL query
                String sqlcmd= "select * from ad_"+geohash+" as A LEFT JOIN  negotiate_"+geohash+" as B on  A.Id = B.adId where A.Id > "+intLastId+" " +
                        "AND A.ValidTillDate >= "+vad+" AND A.ValidTillMonth >= "+vam+" AND A.ValidTillYear >= "+vay ;

                System.out.println("cmd executed is : "+sqlcmd);

                resultSet = statement
                        .executeQuery(sqlcmd);
                Lads = resultSetToString(resultSet, geohash);

            }
              } catch (SQLException e) {
            e.printStackTrace();
        }

        return Lads;


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

        String tableName = "Negotations_"+obj.geohash;
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


    public List<NegotationPayLoad> fetchNegotiations(String merchantId, String geohash, Integer lastReceivedNegId) {
        List<NegotationPayLoad> jobs = new ArrayList<NegotationPayLoad>();

        try {




            Integer maxJobIdReceived = lastReceivedNegId;


            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select * from negotations_" + geohash+" where idnegotations > "+maxJobIdReceived+"  AND merchantid = '"+merchantId+"' ";


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

                int lastNegotiationResponse = lastResponsesReceived.get(0);
                String tableName = "negotiationsresponse_"+negotiationsareas.get(0);



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
                    "maxamount,Discount,ShoppingallowedDates,advanceNeed,description,negotiationsresponse,notificationid)"+
                    "VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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



    public String insertStatusJoinee(Integer statusid, String contact, String geohash) {
        /*
        geohash varchar(45)
contact varchar(15)
statusid int(11)
         */

        Integer generatedKey = -1;
        try
        {

        String sql = "INSERT INTO statusjoineelist (geohash,contact, statusid)"+
                "VALUES (?,?, ?)";
        PreparedStatement preparedStatement = connect.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        preparedStatement.setString(1, geohash);
        preparedStatement.setString(2, contact);
        preparedStatement.setInt(3, statusid);
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

    public String fetchjoineecount(Integer statusid, String geohash) {

        Integer count = 0;

        try {

            String tableName = "status_"+geohash;



            // String sqlcmd = "select * from job_" + geohash+" where idjobs > ? AND postedon >= ? ";

            String sqlcmd = "select count(*) from "+tableName+" where idstatus="+statusid;


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

    public List<String> fetchalljoinees(Integer statusid, String geohash) {

        String tableName = "status_"+geohash;
        String sqlcmd = "select contact from "+tableName+" where idstatus="+statusid;
        List<String> contacts = new ArrayList<>();
        try
        {
            if(connect.isClosed() == true)
                connect = initConnection();


            PreparedStatement stmnt = connect.prepareStatement(sqlcmd);

            stmnt.executeQuery();

            resultSet = statement
                    .executeQuery(sqlcmd);
            while(resultSet.next())
            {
                contacts.add(resultSet.getString(1));
            }

            return contacts;
        }
        catch(Exception ex)
        {
            return contacts;
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
                if((receiptid == null) || (receiptid.length() == 0))
                    return "1";
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
}
