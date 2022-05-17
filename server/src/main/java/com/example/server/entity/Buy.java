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
@Table(name = "buy_table")
public class Buy extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long buyId;

    @ManyToOne
    @JoinColumn(name = "user",nullable = false)
    private User user;
    @ManyToOne
    @JoinColumn(name = "item",nullable = false)
    private Item item;

    @Column(name = "buy_price")
    private Double buyPrice;

    @Column(name = "buy_count")
    private Integer buyCount;

    @Column(name = "buy_total")
    private Double buyTotalPrice;
}
