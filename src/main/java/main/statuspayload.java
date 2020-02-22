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




idstatus                | int(11)      | NO   | PRI | NULL    | auto_increment |
| idnotification          | int(11)      | NO   |     | NULL    |                |
| validfrom               | date         | NO   |     | NULL    |                |
| validto                 | date         | NO   |     | NULL    |                |
| contact                 | varchar(15)  | NO   |     | NULL    |                |
| canjoin                 | int(11)      | NO   |     | 1       |                |
| bringcharges            | int(11)      | NO   |     | 0       |                |
| registeredcontactnumber | varchar(15)  | NO   |     | NULL    |                |
| finaldiscount           | int(11)      | NO   |     | NULL    |                |
| geohash                 | varchar(45)  | YES  |     | NULL    |                |
| places                  | varchar(45)  | YES  |     | NULL    |                |
| joinedcount             | int(11)      | NO   |     | 0       |                |
| shoppingdate            | date         | NO   |     | NULL    |                |
| offerdesc               | varchar(128) | NO   |     | NULL    |                |
| value                   | int(11)      | NO   |     | NULL    |                |
| flat                    | int(11)      | NO   |     | NULL    |                |
| ispercentage            | int(11)      | NO   |     | NULL    |                |
+-------------------------+--------------+------+-----+-
     */
    public Integer idstatus;
    public Integer idnotification; // ad id
    public String imgurl;
    public String registeredcontactnumber;
    public Integer finaldiscount;
    public String validfrom;
    public String validto;
    public String contactOn;
    public String geohashes;
    public String place;
    public Integer join; // radio button.
    public Integer extraforbringing;
    public Integer joinedcount;
    public String shoppingdate;
    public String offerdesc;
    public Integer value;
    public Integer flat;
    public Integer ispercentage;
    public Integer isalreadyJoined;

}
