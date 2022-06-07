package com.example.server.controller;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.service.BasketService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class BasketController {
    // 장바구니 페이지
    // 내 장바구니 페이지
    private final BasketService busketService;
    @GetMapping("/basket/myBasket")
    public String getMyBasket(@PageableDefault(size = 10,sort = "basketId",direction = Sort.Direction.DESC) Pageable pageable,
                              @AuthenticationPrincipal PrincipalDetail principalDetail, Model model) {
        model.addAttribute("basketList", busketService.getBasketList(pageable, principalDetail.getUsername()));
        return "/basket/myBasket";
    }
    @GetMapping("/basket/add")
    public String addBasket() {
        return "/basket/basketAdd";
    }


}
