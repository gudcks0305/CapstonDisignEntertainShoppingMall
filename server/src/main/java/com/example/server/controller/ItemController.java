package com.example.server.controller;

import com.example.server.entity.Entertainment;
import com.example.server.repository.Item.itemRepository;
import com.example.server.service.CategoryService;
import com.example.server.service.EntertainmentService;
import com.example.server.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class ItemController {

    private final ItemService itemService;
    private final CategoryService categoryService;
    private final EntertainmentService entertainmentService;
    //상품 추가 페이지
    @GetMapping("/item/add")
    public String add(Model model) {
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("entertainment", entertainmentService.findAll());
        return "product/productAdd";
    }
    // 상품 목록 페이지
    @GetMapping("/item/list")
    public String list(Model model,
                       @PageableDefault(size = 10,sort = "itemId",direction = Sort.Direction.DESC) Pageable pageable) {
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("items", itemService.findAll(pageable));
        return "product/productList";
    }

    // 상품 상세보기 페이지
    @GetMapping("/item/{id}")
    public String itemInfo(@PathVariable Long id, Model model) {
        model.addAttribute("item", itemService.findById(id));
        return "product/productDetail";
    }
    //삭제 예정
    @GetMapping("/item/detail")
    public String itemInfo1() {

        return "product/productDetail";
    }
    // 상품 수정 페이지
    @GetMapping("/api/admin/item/{id}/update")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("entertainment", entertainmentService.findAll());
        model.addAttribute("item", itemService.findById(id));
        return "product/productUpdate";
    }






}
