package main;

import com.google.gson.JsonElement;

public class adpostresponse {

    private StatusResponse status;
    private String message;
    private JsonElement data;

    public adpostresponse(StatusResponse status) {
        // ...
    }
    public adpostresponse(StatusResponse status, String message) {
        // ...
    }
    public adpostresponse(StatusResponse status, JsonElement data) {
        // ...
    }
}
