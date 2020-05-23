/*
 * Copyright 2016-2017 Tom Misawa, riversun.org@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in the
 * Software without restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
 * Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 *  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
 * IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 */
package main;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Data model for sending messages to specific objects<br>
 *
 *
 * <code>
 * {
 *    "content_available": true,
 *    "priority": "high",
 *    "to": "efxA1bbRGrE:APA91bGmmYrGQBJ6QrM-LOimnbnwMo3WL9MQxJuyuyYdieph0o_P32oouovPB72SFO6ruyyubZKI-RCLAoE1xKQHZFcyVnVfJp92dUAN3-JUcWISplxjqoMjlAzAV6HIdM0n56yw0FxXr7OX44ZzwJ4N",
 *    "notification": {
 *        "title": "Strawberry",
 *        "body": "Hello This is notification test from FCM"
 *    }
 * }
 * {
 *    Authorization: key=AAAAf0KIvao: APA91bE9eCULa0POdBP94xEPtUeazF_j2XGFcz6GH49RroNmsAmrWt1QG8WYpDFaIoipRtK0Cdn1_2Vz94OoWUlV-4H2IDxwtXM1hAuxcmXn-tcspEbODzsKpcXJjfhaoK2HWTTLHoZlSender: id=546uy577u1042uyuy98Content-Type: application/json
 * }
 * </code>
 */
public class EntityMessage {

    private final Map<String, Object> mDataMap = new LinkedHashMap<String, Object>();
    private  final  List<String> fMess=new ArrayList<String>();
    private final List<String> mRegistrationTokenList = new ArrayList<String>();

    /**
     * Pub String value to the payload
     *
     * @param key
     * @param value
     */
    public void putStringData(String key, String value) {
        putData(key, value);
    }
    public void putStringMess(String value) {
        fMess.add(value);
    }

    /**
     * Put boolean value to the payload
     *
     * @param key
     * @param value
     */
    public void putBooleanData(String key, boolean value) {
        putData(key, value);
    }

    /**
     * Put Object
     *
     * @param key
     * @param value
     */
    public void putData(String key, Object value) {
        mDataMap.put(key, value);
    }

    /**
     * Add specified registrationToken
     * Instance ID Stored in DB to be used here
     * @param registrationToken
     */
    public void addRegistrationToken(String registrationToken) {
        mRegistrationTokenList.add(registrationToken);
    }

    /**
     * Remove specified registrationId
     *
     * @param registrationToken
     */
    public void removeRegistrationToken(String registrationToken) {
        if (mRegistrationTokenList.contains(registrationToken)) {
            mRegistrationTokenList.remove(registrationToken);
        }

    }

    /**
     * Set registrationIds in the specified list
     *
     * @param list
     */
    public void setRegistrationTokenList(List<String> list) {
        mRegistrationTokenList.clear();
        mRegistrationTokenList.addAll(list);
    }

    /**
     * Remove all registered registrationIds
     */
    public void clearRegistrationTokens() {
        mRegistrationTokenList.clear();
    }

    /**
     * Generates JSONObject to send to FCM--here
     *
     * @return
     */
    public JSONObject toJsonObject() {

        final JSONObject json = new JSONObject();
        JSONObject tjson = new JSONObject();
        final String[] registrationIds = mRegistrationTokenList.toArray(new String[] {});

        json.accumulate("content_available", true);
        json.accumulate("priority", "high");
//        json.accumulate("to", "eXo49MLuJGE:APA91bEE4zMCQ_lnNst9Fw-cBAfgiyYsdxHdQ7TW1w5JDOZya9holq1KQWC3-nZ_7SRpGqeqC_ZgtvaPjj9QTMCQqsmoUiH-jMdzU_F14b8Vcic20Vztk3RChoE66EzskArJzVKj1_wu");
//        json.accumulate("to","fEXJFJ7kysc:APA91bEaEh-Dhtv9vQIueCPs7tjeJLMFV7_4cZUL2lDyMJPUlZdbRSqDkJULfLvMOP6nxIjw0RMCFEknPhFYqtsI66JJb3anuPW--QMpi5R8EekamYQSmMUluTGcndfGmF7SZsMJl_O7");
        json.accumulate("registration_ids",mRegistrationTokenList);
//        fMess ="Your position updated to ";
        for (Map.Entry<String, Object> entry : mDataMap.entrySet()) {
            System.out.println("[Key] : " + entry.getKey() + " [Value] : " + entry.getValue());
//            fMess ="Your position updated to " +entry
            tjson.accumulate(entry.getKey(),entry.getValue());
        }
//        tjson.accumulate("title","Gala Notify Testing");
//        tjson.accumulate("body","Hello This is notification test from FCM");
        if(fMess.size()>0)
            json.accumulate("notification",fMess.get(0));
        json.accumulate("data",tjson);

        return json;
    }

    /**
     * Generates JSON text
     * <p>
     * To generate JSON message like followings<br>
     * {
     *    "content_available": true,
     *    "priority": "high",
     *    "to": "efxA1bbRGrE:APA91bGmmYrGQBJ6QrM-LOimnbnwMo3WL9MQxJuyuyYdieph0o_P32oouovPB72SFO6ruyyubZKI-RCLAoE1xKQHZFcyVnVfJp92dUAN3-JUcWISplxjqoMjlAzAV6HIdM0n56yw0FxXr7OX44ZzwJ4N",
     *    "notification": {
     *        "title": "Strawberry",
     *        "body": "Hello This is notification test from FCM"
     *    }
     * }
     * {
     *    Authorization: key=AAAAf0KIvao: APA91bE9eCULa0POdBP94xEPtUeazF_j2XGFcz6GH49RroNmsAmrWt1QG8WYpDFaIoipRtK0Cdn1_2Vz94OoWUlV-4H2IDxwtXM1hAuxcmXn-tcspEbODzsKpcXJjfhaoK2HWTTLHoZlSender: id=546uy577u1042uyuy98Content-Type: application/json
     * }
     * @return
     */
    public String toJson() {
        return toJsonObject().toString();
    }
}