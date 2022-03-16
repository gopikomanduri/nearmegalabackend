package main;

import lombok.Data;

@Data
public class JoinCountPayLoad {
    public Integer id;
    public Integer statusId;// foreign key stauts
    public Integer userid;// foreign key from user table;
    public Integer paymentstatus;
}
