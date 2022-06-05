package com.example.server.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@Builder
@Table(name = "item_table")
public class Item  extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long itemId;
    private String itemTitle;
    private String itemName;
    @Lob
    private String itemDescription;
    private String itemImageUrl;
    private Double itemPrice;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id", nullable = false)
    private Category itemCategory;
    private Integer itemQuantity;
    @Column(columnDefinition = "boolean default true")
    private boolean itemStatus;
    @ManyToOne
    @JoinColumn(name = "item_owner_id")
    private Entertainment itemOwner;
    @ManyToOne
    @JoinColumn(name = "item_artist_id")
    private Artist itemArtist;
}

