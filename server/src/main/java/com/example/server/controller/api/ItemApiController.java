package com.example.server.controller.api;

import com.example.server.dto.ItemRequestDto;
import com.example.server.dto.ResponseDto;
import com.example.server.entity.Entertainment;
import com.example.server.entity.Item;
import com.example.server.repository.Category.CategoryRepository;
import com.example.server.service.CategoryService;
import com.example.server.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
public class ItemApiController {
    @Autowired
    private ItemService itemService;


    @PostMapping("/api/admin/item/add")
    public ResponseDto insert(@RequestBody ItemRequestDto requestDto){
        System.out.println("requestDto.getItemCategory() : " + requestDto.getItemCategory());
        System.out.println("requestDto.getItemName() : " + requestDto.getItemName());
        System.out.println("requestDto.getItemDescription() : " + requestDto.getItemDescription());
        System.out.println("requestDto.getItemImageUrl() : " + requestDto.getItemImageUrl());
        System.out.println("requestDto.getItemPrice() : " + requestDto.getItemPrice());
        System.out.println("requestDto.getItemQuantity() : " + requestDto.getItemQuantity());
        System.out.println("requestDto.getItemOwner() : " + requestDto.getItemOwner());
        System.out.println("requestDto.getItemTitle() : " + requestDto.getItemTitle());
        System.out.println("gege00");
        itemService.save(requestDto);

        return new ResponseDto(HttpStatus.OK,"SUCCESS");
    }
    @DeleteMapping("/api/admin/item/{id}/delete")
    public String delete(@PathVariable Long id) {
        itemService.delete(id);
        return "redirect:/item/list";
    }

}
