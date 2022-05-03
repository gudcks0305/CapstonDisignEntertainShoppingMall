package com.example.server.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "Entertainment_table")
public class Entertainment extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long entertainmentId;
    private String name;
    private String description;
    private String imageUrl;
    @OneToMany(mappedBy = "entertainment" , fetch = FetchType.LAZY)
    private List<Artist> artists;
}
