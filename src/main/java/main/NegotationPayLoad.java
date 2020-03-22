package main;

public class NegotationPayLoad {
    public String customercontact;
    public String merchantid;
    public String geohash;
    public Integer minamount;
    public Integer maxamount;
    public Integer DiscountExpectation;
    public String ShoppingProbableDates;
    public String description;
    public Integer delieverd;
    public Integer response;
    public Integer notificationid;
    public Integer idnegotations;
    public Integer advance;
    public String respondedOn;

    public AdPayLoad adObj;
    public NegotationPayLoad()
    {
        adObj=new AdPayLoad();
    }
//    public a respondedOn;
}
