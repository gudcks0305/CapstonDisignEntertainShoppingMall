package com.example.server.service;

import com.example.server.dto.basket.RequestBasketDto;
import com.example.server.repository.ShoppingBasket.JpaShoppingBasketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class BasketService {
    @Autowired
    private JpaShoppingBasketRepository basketRepository;


    //작업 중
    public int addToBasket(RequestBasketDto basketDto, String userId) {
        //basketRepository.save(userId, productId);
        return 1;
    }
    @Transactional
    public int deleteFromBasket(RequestBasketDto basketDto, String userId) {
        basketRepository.deleteByUser_NameAndBasketId(userId, basketDto.getBasketId());
        return 1;
    }

}
