package com.example.server.controller.api;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.dto.BuyDto;
import com.example.server.dto.ResponseDto;
import com.example.server.service.BuyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class BuyApiController {
    private final BuyService buyService;

    @PostMapping("/api/buy")
    public ResponseDto buy(@RequestBody BuyDto buyDto , @AuthenticationPrincipal PrincipalDetail principalDetail) {
        buyService.buy(buyDto , principalDetail.getUser());
        return new ResponseDto(HttpStatus.OK, "성공");
    }
}
