package main;

import lombok.Data;

@Data
public class statuspayload {

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
    public Integer idstatus;
    public Integer idnotification;
    public String registeredcontactnumber;
    public Integer finaldiscount;
    public String validfrom;
    public String validto;
    public String contactOn;
    public String geohashes;
    public String place;
    public Integer join;
    public Integer extraforbringing;
    public Integer joinedcount;
    public String shoppingdate;
    public String offerdesc;
    public Integer value;
    public Integer flat;
    public Integer ispercentage;

}
