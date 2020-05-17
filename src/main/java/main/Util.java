package main;



import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.temporal.ChronoField;

public class Util {

    public static Integer getCurrentDay(LocalDateTime now)
    {
        int day = now.getDayOfMonth();
        return day;
    }

    public static Integer getCurrentMonth(LocalDateTime now)
    {
        int day = now.getMonthValue();
        return day;
    }

    public static Integer getCurrentYear(LocalDateTime now)
    {
        int day = now.getYear();
        return day;
    }


    public static boolean isNumeric(String strNum) {
        try {
            long d = Long.parseLong(strNum);
        } catch (Exception ex) {
            return false;
        }
        return true;
    }

    public static String getTimestamp(LocalDateTime now)
    {
        int year = now.getYear();
        int month = now.getMonthValue();
        int day = now.getDayOfMonth();
        int hour = now.getHour();
        int minute = now.getMinute();
        int second = now.getSecond();
        int millis = now.get(ChronoField.MILLI_OF_SECOND); // Note: no direct getter available.

        String timeStamp = String.format("%02d:%02d:%02d %d-%02d-%02d", hour, minute, second, year, month, day);
        return timeStamp;
    }

    public static String getCurrentDate(LocalDateTime now)
    {
        int year = now.getYear();
        int month = now.getMonthValue();
        int day = now.getDayOfMonth();
        String date = String.format("%02d-%02d-%02d",year, month, day);
        return date;
    }

    public static java.sql.Date getCurrentDate() {
        java.util.Date today = new java.util.Date();
        return new java.sql.Date(today.getTime());
    }

    public static java.sql.Date stringToDate(String datestr,String pattern )
    {
        if(pattern == null)
        {
            pattern="dd:MM:yyyy";
        }
        SimpleDateFormat format = new SimpleDateFormat(pattern);

        try {
            java.util.Date utilDate = format.parse(datestr);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            return sqlDate;

        } catch (Exception e) {

            e.printStackTrace();
            return null;
        }
    }
    static  enum CRUD{
        INSERT,
        UPDATE,
        DELETE
    }

}
