package com.example.server.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "artist_table")
public class Artist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long artistId;

    private String artistName;

    private String artistDescription;

    private String artistImageUrl;

    private String artistCountry;

    private String artistWebsite;

    private String artistFacebook;

    private String artistTwitter;

    private String artistInstagram;
    @ManyToOne(fetch = FetchType.LAZY)
    private Entertainment entertainment;



}
