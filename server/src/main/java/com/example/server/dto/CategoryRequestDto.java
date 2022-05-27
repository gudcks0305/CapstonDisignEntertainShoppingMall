package com.example.server.dto;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class CategoryRequestDto {
    private String categoryName;
    private String description;
}
