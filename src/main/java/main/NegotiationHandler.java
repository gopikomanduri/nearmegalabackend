package main;


import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.List;

public class NegotiationHandler {
    public String addNegotiation(String str)
    {
        NegotationPayLoad negotiationDetails = new Gson().fromJson(str,NegotationPayLoad.class);
        return MySQLAccess.dbObj.AddNewNegotations(negotiationDetails);
    }

    public String fetchNegotiations(String merchantId, String geoHash, Integer lastNegId)
    {
        List<NegotationPayLoad> res =  MySQLAccess.dbObj.fetchNegotiations(merchantId,geoHash, lastNegId);
        String str = new Gson().toJson(res.toArray(),NegotationPayLoad[].class);
        return str;
    }

    public String NegotiationResponse(String str)
    {
        return "";
    }

    public String NegotiationsResponse(String merchantId, String geoHash, Integer negotiationid, String payload) {
        NegotationPayLoad negotiationDetails = new Gson().fromJson(payload,NegotationPayLoad.class);
        String str =  MySQLAccess.dbObj.AddNegotiationResponse(merchantId, geoHash, negotiationid, negotiationDetails);
        return str;

    }

    public String fetchNegotiationResponses(String customercontact, String lastres, String areas )
    {

        Type type = new TypeToken<List<Integer>>() {}.getType();
        Type type1 = new TypeToken<List<String>>() {}.getType();


        // List<Integer> lastResponsesReceived, List<String> negotiationsareas
        List<Integer> lastResponses = new Gson().fromJson(lastres,type);
        List<String> geoHash = new Gson().fromJson(areas,type1);
        List<NegotationPayLoadResponse> res = MySQLAccess.dbObj.fetchNegotiationResponses(customercontact, lastResponses,geoHash);
        String str = new Gson().toJson(res.toArray(),NegotationPayLoadResponse[].class);
        return str;
    }
}
