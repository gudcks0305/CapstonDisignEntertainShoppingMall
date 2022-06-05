package com.example.server.dto;

import lombok.Data;
import lombok.Getter;

@Getter
@Data
public class ItemRequestDto {
    private Long itemOwner;
    private Long itemArtist;
    private Long itemCategory;
    private String itemTitle;
    private String itemName;
    private String itemDescription;
    private String itemImageUrl;
    private Double itemPrice;
    private int itemQuantity;
    //private boolean itemStatus;


}
