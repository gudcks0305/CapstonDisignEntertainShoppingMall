package com.example.server.controller;

import com.example.server.entity.Artist;
import com.example.server.service.ArtistService;
import com.example.server.service.CategoryService;
import com.example.server.service.EntertainmentService;
import com.example.server.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class adminController {
    private final CategoryService categoryService;
    private final EntertainmentService entertainmentService;
    private final ItemService itemService;
    private final ArtistService artistService;
    @GetMapping("/admin/manage")
    public String manage() {
        return "admin/manage";
    }
   /* @GetMapping("/api/admin/item/list")
    public String list() {
        return "admin/manage/item";
    }*/
    @GetMapping("/admin/item/add")
    public String add(Model model) {
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("entertainment", entertainmentService.findAll());
        model.addAttribute("artistList", artistService.findAll());
        return "admin/productAdd";
    }
    // 상품 수정 페이지
    @GetMapping("/admin/item/{id}/update")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("artistList", artistService.findAll());
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("entertainment", entertainmentService.findAll());
        model.addAttribute("item", itemService.findById(id));
        return "admin/productUpdate";
    }
}
