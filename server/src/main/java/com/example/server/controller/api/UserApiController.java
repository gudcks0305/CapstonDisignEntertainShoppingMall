package com.example.server.controller.api;


import com.example.server.config.auth.PrincipalDetail;
import com.example.server.dto.ResponseDto;
import com.example.server.dto.charge;
import com.example.server.entity.User;
import com.example.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
public class UserApiController {
    @Autowired
    private UserService userService;

    @PostMapping("/auth/joinProc")
    public ResponseDto<Integer> save(@RequestBody User user){

        int result = userService.회원가입(user);
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }
    @PutMapping("/user/update")
    public ResponseDto<Integer> update(@RequestBody User user){
        int result = userService.회원정보수정(user);
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }
    @PutMapping("/user/charge")
    public ResponseDto<Integer> charge(@RequestBody charge moneyPoint , @AuthenticationPrincipal PrincipalDetail principalDetail){
        int result = userService.회원충전(moneyPoint.getMoneyPoint(),principalDetail.getUser());
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }


}
