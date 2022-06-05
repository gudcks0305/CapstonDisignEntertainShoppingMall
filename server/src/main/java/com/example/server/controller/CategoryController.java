package com.example.server.controller;

import com.example.server.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class CategoryController {
    private final CategoryService categoryService;
    @GetMapping("/admin/category/add")
    public String add(Model model) {
        model.addAttribute("categoryList",categoryService.findAll());
        return "admin/categoryAdd";
    }
}
