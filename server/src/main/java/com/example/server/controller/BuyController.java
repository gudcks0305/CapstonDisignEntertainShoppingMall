package com.example.server.controller;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.service.BuyService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class BuyController {

    private final BuyService buyService;

    @GetMapping("/buy/myBuyList")
    public String myBuyList(@AuthenticationPrincipal PrincipalDetail principalDetail, Model model) {
        model.addAttribute("buyList", buyService.getBuyList(principalDetail.getUsername()));
        return "buy/myBuyList";
    }
    @GetMapping("/buy/pay")
    public String pay() {
        return "pay/pay";
    }
}
