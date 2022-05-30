package com.example.server.controller.api;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.dto.ResponseDto;
import com.example.server.dto.basket.RequestBasketDto;
import com.example.server.service.BasketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
public class BasketApiController {
    @Autowired
    private BasketService basketApiService;

    @PostMapping("/api/basket")
    public ResponseDto<Integer> addToBasket(@RequestBody RequestBasketDto basketDto , @AuthenticationPrincipal PrincipalDetail principalDetail) {
        int result = basketApiService.addToBasket(basketDto , principalDetail.getUsername());
        return new ResponseDto<>(HttpStatus.OK, result);
    }
    @DeleteMapping("/api/basket/{basketId}")
    public ResponseDto<Integer> deleteFromBasket(@PathVariable Long basketId , @AuthenticationPrincipal PrincipalDetail principalDetail) {
        System.out.println(basketId + "       rhrepkhker[hkerphkek[p");
        System.out.println(principalDetail.getUsername() + "       rhrepkhker[hkerphkek[p");
        int result = basketApiService.deleteFromBasket(basketId , principalDetail.getUsername());
        return new ResponseDto<>(HttpStatus.OK, result);
    }
}
