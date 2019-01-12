package main;

public class tokenregistrationpayload {
    public tokenregistrationpayload()
    {
        merchantname = new String();
        merchanturl = new String();
    }
    public String merchantname;
    public String merchanturl;
    public Integer currentMaxToken;
    public Integer currentRunningToken;
}
