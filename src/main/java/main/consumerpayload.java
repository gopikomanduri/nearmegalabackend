package main;

import lombok.Data;

@Data
public class consumerpayload {

    /*

    idconsumers int(11) AI PK
consumername varchar(128)
contact varchar(15)
DOB date
dpurl varchar(256)
registeredon varchar(45)
status int(11)
     */
    public Integer idconsumers;
public String consumername;
public String contact;
public String dob;
public String dpurl;
public Integer sex;
public consumerFirebasepayload FirebaseDetails;
}
