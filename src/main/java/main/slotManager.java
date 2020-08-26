package main;

import org.apache.commons.lang3.time.DateUtils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class slotManager {

    //Merchant
    public ConcurrentHashMap<String, slotPayload> countersDoneDetails = new ConcurrentHashMap<>();
    //ConcurrentLinkedQueue<String>
    public slotManager() {
    }
    public List<Merchantslot>  CompleteRegistration(String MerchantID){
        //Write To Database
        //create merchant_slot
        List<Merchantslot> mSlots=new ArrayList<Merchantslot>();
        try {
            Merchantslot mSlot = new Merchantslot();
            mSlot.MerchantId = MerchantID;
            System.out.println("SLOT payload trying");
            slotPayload curSlotDeatils = countersDoneDetails.get(MerchantID);
            System.out.println("SLOT payload found");

            //Parsing the date
            Date _fromDt=new SimpleDateFormat("MM/dd/yyyy").parse(curSlotDeatils.FromDate);
            Date _toDt=new SimpleDateFormat("MM/dd/yyyy").parse(curSlotDeatils.ToDate);
            //calculating number of days in between
            long numOfDays = (_toDt.getTime()-_fromDt.getTime())/ (1000 * 3600 * 24);
            System.out.println("registartion for days: " +  String.valueOf(numOfDays));

            for(int days=0; days<=numOfDays;days++) {
                for (int index = 0; index < curSlotDeatils.FromTime.size(); index++) {
                    Date fromDate=null;
                    try {
                        fromDate = getNextDate(curSlotDeatils.FromDate,days);//day1
                        if(fromDate==null)
                        {
                            break;
                        }
                    }
                    catch (Exception ex)
                    {
                        System.out.println(ex.getMessage());
                    }

                    Date fromTime = new SimpleDateFormat("HH:mm:ss").parse(curSlotDeatils.FromTime.get(index));//day1 fromtime
                    System.out.println("registartion details from time " + fromTime.toString());

                    fromDate = DateUtils.addHours(fromDate, fromTime.getHours());
                    fromDate = DateUtils.addMinutes(fromDate, fromTime.getMinutes());
                    System.out.println("registartion details from date" + fromDate.toString());

                    Date toDate= getNextDate(curSlotDeatils.FromDate,days);
                    if(toDate==null)
                    {
                        break;
                    }
                    Date toTime = new SimpleDateFormat("HH:mm:ss").parse(curSlotDeatils.ToTime.get(index));

                    toDate = DateUtils.addHours(toDate, toTime.getHours());
                    toDate = DateUtils.addMinutes(toDate, toTime.getMinutes());
                    System.out.println("registartion details to time " + toTime.toString());

                    //Converting to epoch
                    mSlot.FromTime = String.valueOf(fromDate.getTime() / 1000);//new java.text.SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(fromDate);
                    mSlot.ToTime = String.valueOf(toDate.getTime() / 1000);
                    mSlot.MaxToken = curSlotDeatils.MaxToken.get(index);
                    mSlot.CurToken = curSlotDeatils.MaxToken.get(index);
                    System.out.println("rInserting  " + toDate.toString());
                    mSlot.Slot_ID = MySQLAccess.dbObj.insertMerchantSlot(mSlot);
                    System.out.println("success slot   " + String.valueOf(mSlot.Slot_ID));
                    if (mSlot.Slot_ID == -1) {
                        return mSlots;
                    }
                    mSlots.add(mSlot);
                }
            }
        }
        catch (Exception ex)
        {
            System.out.println(ex.getMessage());
            System.out.println("registartion failed in try");
            return  mSlots;
        }
        return  mSlots;
    }
    public String RegisterUsertoSlot(String MerchantId,int EpochID,String selectedSlotEpochHash,int NoofTokens,String userid){
        return MySQLAccess.dbObj.updateMerchantSlot(MerchantId,EpochID,NoofTokens,userid,selectedSlotEpochHash);
        //;;return  "";
    }

    public String getSlots(String MerchantId,String fromTime,String toTime){
        try {
            Date _fromTime = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").parse(fromTime);
            Date _toTime = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").parse(toTime);
            return MySQLAccess.dbObj.getMerchantSlots(MerchantId, String.valueOf(_fromTime.getTime() / 1000),String.valueOf(_toTime.getTime() / 1000));
        }
        catch (Exception ex) {
            //return  "";
        }
        return "-1";
    }
    private static Date getNextDate(String  curDate, int numDaysToadd) {
        try {
            final SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
            final Date date = format.parse(curDate);
            final Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.DAY_OF_YEAR, numDaysToadd);
            return calendar.getTime();
        }
        catch (Exception ex)
        {

        }
        return null;
    }
}
