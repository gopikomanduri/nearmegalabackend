package main;

import java.util.concurrent.Callable;

public class smstask implements Callable<tokenassigner> {
    private tokenassigner obj;
    public  smstask()
    {

    }

//    public smstask(tokenassigner temp)
//    {
//        obj = temp;
//
//        String myPasscode = "2013";
//        String myUsername = "gopi.komanduri";
//        String toPhoneNumber = contact;
//        String myMessage = msg;
//
//        HttpClient client = new DefaultHttpClient();
//
//        String connmsg = "http://cloud.fowiz.com/api/message_http_api.php?username="+myUsername+
//                "&phonenumber="+toPhoneNumber+"&message="+myMessage+"&passcode="+myPasscode;
//        System.out.println("sending following message "+connmsg);
//
//        HttpGet request = new HttpGet(connmsg);
//        try {
//            HttpResponse response = client.execute(request);
//
//
//            BufferedReader rd = new BufferedReader
//                    (new InputStreamReader(response.getEntity().getContent()));
//
//            String line = "";
//            StringBuffer myres = new StringBuffer();
//            while ((line = rd.readLine()) != null) {
//                myres.append(line);
//            }
//
//            return "0";
//
//        }
//        catch(Exception ex)
//        {
//            System.out.println("Unable to send message "+ex.getMessage());
//            return "0";
//        }
//    }

    @Override
    public tokenassigner call() throws Exception {


        return null;
    }
}
