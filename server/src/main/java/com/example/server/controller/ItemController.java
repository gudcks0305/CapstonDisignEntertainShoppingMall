package com.example.server.controller;

import com.example.server.repository.Item.itemRepository;
import com.example.server.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ItemController {
    @Autowired
    private ItemService itemService;

    //상품 추가 페이지
    @GetMapping("/item/add")
    public String add() {
        return "item/add";
    }
    // 상품 목록 페이지
    @GetMapping("/item/list")
    public String list(Model model,
                       @PageableDefault(size = 10,sort = "itemId",direction = Sort.Direction.DESC) Pageable pageable) {
        model.addAttribute("items", itemService.findAll(pageable));
        return "item/itemList";
    }

    // 상품 상세보기 페이지
    @GetMapping("/item/{id}")
    public String itemInfo(@PathVariable Long id, Model model) {
        model.addAttribute("item", itemService.findById(id));
        return "item/itemDetail";
    }
    // 상품 수정 페이지
    @GetMapping("/item/{id}/update")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("item", itemService.findById(id));
        return "item/productUpdate";
    }






}
