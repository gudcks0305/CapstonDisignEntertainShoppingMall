package com.example.server.controller.api;

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


    @PostMapping("/item/add")
    public ResponseDto insert(@RequestBody Item item){
        itemService.save(item);
        return new ResponseDto(HttpStatus.OK,"SUCCESS");
    }
    @DeleteMapping("/item/{id}/delete")
    public String delete(@PathVariable Long id) {
        itemService.delete(id);
        return "redirect:/item/list";
    }

}
