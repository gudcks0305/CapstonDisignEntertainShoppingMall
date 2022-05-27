package com.example.server.service;

import com.example.server.dto.CategoryRequestDto;
import com.example.server.entity.Category;
import com.example.server.repository.Category.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Transactional
    public void save(CategoryRequestDto requestDto){
        Category category  = new Category();
        category.setCategoryName(requestDto.getCategoryName());
        category.setDescription(requestDto.getDescription());
    }
}
