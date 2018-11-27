package main;


import com.google.gson.Gson;

import java.util.List;
import java.util.concurrent.Callable;

public class GroupsHandler implements Callable {
    GroupPayLoad grpPayLoad;
    public GroupsHandler()
    {

    }

    public void CreateGroup(GroupPayLoad grp)
    {
        MySQLAccess.dbObj.insertIntogroupsList(grp.groupName, grp.createdBy, grp.description, grp.groupDp, grp.geoHash);
    }

    public String GetGroupsList(String geoHash)
    {
        List<GroupPayLoad> grps = MySQLAccess.dbObj.GetGroupsAround(geoHash);
        String str = new Gson().toJson(grps.toArray(),GroupPayLoad[].class);
        return str;
    }



    public String AddMsgToGroup(GroupMsgPayLoad obj)
    {

        /*
        String groupName, String name, String msg, String sex, String dp, Integer parentMsg
         */
         return MySQLAccess.dbObj.AddMsgToGroup(obj.groupName, obj.name, obj.msg, obj.sex, obj.dp, obj.parentMsg,obj.rootMsg);
    }

    @Override
    public Object call() throws Exception {
        return null;
    }
}
