package com.example.server.dto;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class CategoryRequestDto {
    private Long categoryId;
    private String categoryName;
    private String description;
}
