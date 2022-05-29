package com.example.server.controller;

import org.springframework.stereotype.Controller;

@Controller
public class BasketController {
    // 장바구니 페이지
    // 내 장바구니 페이지
    public String getMyBasket() {
        return "/basket/myBasket";
    }


}
