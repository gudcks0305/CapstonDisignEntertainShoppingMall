package com.example.server.controller;

import com.example.server.service.EntertainmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@RequiredArgsConstructor
@Controller
public class EntertainmentController {
    private final EntertainmentService entertainmentService;
    @GetMapping("/admin/entertainment/add")
    public String add(Model model) {
        model.addAttribute("entertainment", entertainmentService.findAll());
        return "admin/entertainmentAdd";
    }
}
