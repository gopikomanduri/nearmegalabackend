package main;

import lombok.Data;

@Data
public class GroupPayLoad {
    public Integer groupId;
    public String groupName;
    public String createdBy;
    public String description;
    public String groupDp;
    public String geoHash;
}
