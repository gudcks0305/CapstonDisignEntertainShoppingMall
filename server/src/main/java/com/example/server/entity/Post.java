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
@Table(name = "post_table")
public class Post extends BaseEntity {
    @Id
    private Long postId;
    private String title;
    private String content;
    private Integer kind = 1;
    @ManyToOne
    @JoinColumn(name = "user")
    private User user;

}
