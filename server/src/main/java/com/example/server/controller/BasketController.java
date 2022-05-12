package com.example.server.controller;

import org.springframework.stereotype.Controller;

@Controller
public class BasketController {

    public String getMyBasket() {
        return "/basket/myBasket";
    }
    public String getBasket() {
        return "/basket/basket";
    }
}
