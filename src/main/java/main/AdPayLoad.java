package main;

import lombok.Data;

@Data
public class AdPayLoad {
  public   String geo;
    public Double lat;
    public Double lng;
    public  String merchantid;
    public String cat;
    public  String tilldate;
    public String tillmonth;
    public String tillyear;
    public  String fromdate;
    public  String frommonth;
    public  String fromyear;
    public  String offercode;
    public  String itemdesc;
    public  String imgUrl;
    public String shopDp;
    public String shopname;
  public Integer negotiate;
  public Integer minBusiness;
  public String mindiscount;
  public String maxdiscount;
  public String discdesc;
}
