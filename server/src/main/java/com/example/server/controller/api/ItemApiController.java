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
        itemService.save(requestDto);

        return new ResponseDto(HttpStatus.OK,"SUCCESS");
    }
    @DeleteMapping("/api/admin/item/{id}")
    public String delete(@PathVariable Long id) {
        itemService.delete(id);
        return "redirect:/item/list";
    }///api/admin/item/${item.itemId}/update"

    @PutMapping("/api/admin/item/{id}/update")
    public ResponseDto update(@PathVariable Long id, @RequestBody ItemRequestDto requestDto) {
        System.out.println(id);
        System.out.println(requestDto.getItemCategory());
        System.out.println(requestDto.getItemArtist());
        System.out.println(requestDto.getItemOwner());
        itemService.update(id, requestDto);
        return new ResponseDto(HttpStatus.OK,"SUCCESS");
    }

}
