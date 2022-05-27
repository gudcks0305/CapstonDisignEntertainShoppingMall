package com.example.server.dto.entertainment;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class EntertainmentDto {
    private String name;
    private String description;
    private String imageUrl;
}
