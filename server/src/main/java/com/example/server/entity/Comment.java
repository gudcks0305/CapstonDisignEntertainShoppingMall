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
@Table(name = "comment_table")
public class Comment extends BaseEntity {
    @Id
    private Long commentId;
    @Lob
    private String content;
    @ManyToOne
    @JoinColumn(name = "post_id", nullable = false)
    private Post post;
}
