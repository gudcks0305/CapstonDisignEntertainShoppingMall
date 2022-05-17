package com.example.server.dto.basket;

import lombok.Getter;

@Getter
public class RequestBasketDto {
    private Long basketId;
    private Long productId;
    private int quantity;
}
