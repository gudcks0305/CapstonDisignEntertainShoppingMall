package com.example.server.controller;

import lombok.Getter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BasketController {
    // 장바구니 페이지
    // 내 장바구니 페이지
    @GetMapping("/basket/myBasket")
    public String getMyBasket() {
        return "/basket/myBasket";
    }
    @GetMapping("/basket/add")
    public String addBasket() {
        return "/basket/basketAdd";
    }


}
