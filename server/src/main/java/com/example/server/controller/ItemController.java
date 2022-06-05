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
    @GetMapping("/item/artist/{artistId}")
    public String artistItemList(@PathVariable Long artistId, Model model
    ,  @PageableDefault(size = 10,sort = "itemId",direction = Sort.Direction.DESC) Pageable pageable) {
        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("items", itemService.findAllByArtistId(artistId , pageable));
        return "product/productList";
    }
    //삭제 예정
    @GetMapping("/item/detail")
    public String itemInfo1() {

        return "product/productDetail";
    }








}
