package com.example.server.dto;

import com.example.server.model.DeliveryStatusType;
import lombok.Data;

@Data
public class BuyDto {
    private Long itemId;
    private Integer buyCount;

}
