package com.example.server.dto;

import lombok.Data;

@Data
public class ArtistRequestDto {
    private Long artistId;

    private String artistName;

    private String artistDescription;

    private String artistImageUrl;

    private String artistCountry;

    private String artistWebsite;

    private String artistFacebook;

    private String artistTwitter;

    private String artistInstagram;

    private Long entertainmentId;
}
