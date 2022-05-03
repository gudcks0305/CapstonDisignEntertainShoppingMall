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
@Table(name = "shopping_basket_table")
public class ShoppingBasket extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "basketId")
    private Long basketId;
    @ManyToOne
    @JoinColumn(name = "user_username",nullable = false)
    private User user;
    @ManyToOne
    @JoinColumn(name = "item_item_id",nullable = false)
    private Item item;
    private Integer quantity;
    private Double TotalPrice;

}
