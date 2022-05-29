package com.example.server.dto.basket;

import com.example.server.entity.Item;
import com.example.server.entity.ShoppingBasket;
import com.example.server.entity.User;
import lombok.Getter;

@Getter
public class RequestBasketDto {
    private Long basketId;
    private Long productId;
    private int quantity;

    public ShoppingBasket toEntity(User user, Item item , int quantity) {
        return ShoppingBasket.builder()
                .user(user)
                .item(item)
                .quantity(quantity)
                .build();
    }
}
