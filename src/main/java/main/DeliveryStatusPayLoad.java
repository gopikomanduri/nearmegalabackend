package main;

import lombok.Data;

@Data
public class DeliveryStatusPayLoad {
    public Integer id;
    public Integer statusid;

    public Integer userid;
    public Integer customerContact;
    public Integer deliveryStatus;
}
