package com.example.server.controller.api;

import Dare.Blog.controller.dto.ResponseDto;
import Dare.Blog.domain.User;
import Dare.Blog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserApiController {
    @Autowired
    private UserService userService;

    @PostMapping("/auth/joinProc")
    public ResponseDto<Integer> save(@RequestBody User user){

        int result = userService.회원가입(user);
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }


}
