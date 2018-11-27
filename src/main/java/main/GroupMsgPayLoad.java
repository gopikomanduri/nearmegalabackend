package main;

import lombok.Data;

@Data
public class GroupMsgPayLoad {
    public String groupName;
   public String name;
   public String sex;
   public String dp;
   public String msg;
   public Integer parentMsg;
   public Integer rootMsg;
}
