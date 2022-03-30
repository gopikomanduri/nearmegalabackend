package main;

import lombok.Data;

@Data
public class DeliveryStatusPayLoad {
    public Integer id;
    public Integer statusid;

    public Integer userid;
    public String customerContact;
    public Integer deliveryStatus;
}
