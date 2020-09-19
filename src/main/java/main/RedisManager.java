package main;

import redis.clients.jedis.Jedis;

import java.util.List;

public class RedisManager {
    private Jedis jedis;
    public boolean StartServer() {
        //Connecting to Redis server on localhost
        jedis = new Jedis("localhost");
        System.out.println("Connection to server sucessfully");

        return PingRedis();
    }
    public boolean PingRedis(){
        return jedis.ping().equals("PONG");
    }
    public boolean insertStringToCache(String key,String value)
    {
        try{
            jedis.set(key,value);
        }
        catch (Exception ex)
        {
            return false;
        }
        return true;
    }

    public boolean insertStringToListCache(String listNameKey,String value)
    {
        try{
            jedis.lpush(listNameKey, value);
        }
        catch (Exception ex)
        {
            return false;
        }
        return true;
    }

    public List<?> getCachedList(String listNameKey, int startRange, int endRange)
    {
        try{
            return jedis.lrange(listNameKey, startRange ,endRange);
        }
        catch (Exception ex)
        {
            return null;
        }
    }


    public Object getCachedValue(String listNameKey)
    {
        try{
           return jedis.get(listNameKey);
        }
        catch (Exception ex)
        {
            return "FAIL";
        }
    }
}
