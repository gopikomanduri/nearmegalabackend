package main;

import org.apache.commons.lang3.time.DateUtils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class slotManager {

    //Merchant
    ConcurrentHashMap<String, slotPayload> countersDoneDetails = new ConcurrentHashMap<>();
    //ConcurrentLinkedQueue<String>
    public slotManager(slotPayload slotDetails) {
        countersDoneDetails.put(slotDetails.MerchantID, slotDetails);
    }
    public List<Merchantslot>  CompleteRegistration(String MerchantID){
        //Write To Database
        //create merchant_slot
        List<Merchantslot> mSlots=new ArrayList<Merchantslot>();
        try {
            Merchantslot mSlot = new Merchantslot();
            mSlot.MerchantId = MerchantID;
            slotPayload curSlotDeatils = countersDoneDetails.get(MerchantID);
            for (int index = 0; index < curSlotDeatils.FromTime.size(); index++) {
                Date fromDate=new SimpleDateFormat("MM/dd/yyyy").parse(curSlotDeatils.FromDate);
                Date fromTime=new SimpleDateFormat("HH:mm:ss").parse(curSlotDeatils.FromTime.get(index));

                fromDate = DateUtils.addHours(fromDate, fromTime.getHours());
                fromDate = DateUtils.addMinutes(fromDate, fromTime.getMinutes());

                Date toDate=new SimpleDateFormat("MM/dd/yyyy").parse(curSlotDeatils.ToDate);
                Date toTime=new SimpleDateFormat("HH:mm:ss").parse(curSlotDeatils.ToTime.get(index));

                toDate = DateUtils.addHours(toDate, toTime.getHours());
                toDate = DateUtils.addMinutes(toDate, toTime.getMinutes());
                //Converting to epoch
                mSlot.FromTime = String.valueOf(fromDate.getTime() / 1000);//new java.text.SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(fromDate);
                mSlot.ToTime =  String.valueOf(toDate.getTime() / 1000);
                mSlot.MaxToken = curSlotDeatils.MaxToken.get(index);
                mSlot.CurToken= curSlotDeatils.MaxToken.get(index);
                mSlot.Slot_ID = MySQLAccess.dbObj.insertMerchantSlot(mSlot);
                if(mSlot.Slot_ID ==-1)
                {
                    return  mSlots;
                }
                mSlots.add(mSlot);
            }
        }
        catch (Exception ex)
        {
            return  mSlots;
        }
        return  mSlots;
    }
    public String RegisterUsertoSlot(String MerchantId,int EpochID,String selectedSlotEpochHash,int NoofTokens,String userid){
        return MySQLAccess.dbObj.updateMerchantSlot(MerchantId,EpochID,NoofTokens,userid,selectedSlotEpochHash);
        //;;return  "";
    }

    public String getSlots(String MerchantId,String FromTime,String toTime){
        return MySQLAccess.dbObj.getMerchantSlots(MerchantId,FromTime,toTime);
        //return  "";
    }

}
