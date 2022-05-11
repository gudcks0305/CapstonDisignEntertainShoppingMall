package com.example.server.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {
    @GetMapping("/post/list")
    public String list() {
        return "post/list";
    }
    @GetMapping("/post/create")
    public String create() {
        return "post/create";
    }
    @GetMapping("/post/update")
    public String update() {
        return "post/update";
    }

}
