package com.example.server.controller;

import lombok.Getter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mainController {
    // 메인 페이지
    @GetMapping("/")
    public String index() {
        return "index";
    }
}
