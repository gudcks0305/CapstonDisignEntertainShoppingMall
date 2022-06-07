package com.example.server.controller;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @GetMapping("/auth/joinForm")
    public String joinForm(){
        return "user/joinForm";
    }
    @GetMapping("/auth/loginForm")
    public String loginForm(){
        return "user/loginForm";
    }
    @GetMapping("/user/updateForm")
    public String updateForm(){

        return "user/updateForm";
    }
    @GetMapping("/user/chargeForm")
    public String chargeForm(Model model , @AuthenticationPrincipal PrincipalDetail principalDetail){
        model.addAttribute("user",userService.회원정보(principalDetail.getUser()));
        return "user/charge";
    }
}