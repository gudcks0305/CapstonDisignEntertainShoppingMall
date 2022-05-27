package com.example.server.controller.api;

import com.example.server.dto.CategoryRequestDto;
import com.example.server.dto.ResponseDto;
import com.example.server.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class CategoryApiController {

    private final CategoryService categoryService;

    @PostMapping("/category/add")
    public ResponseDto save(@RequestBody CategoryRequestDto requestDto){
        categoryService.save(requestDto);
        return new ResponseDto(HttpStatus.OK, "SUCCESS");
    }

}
