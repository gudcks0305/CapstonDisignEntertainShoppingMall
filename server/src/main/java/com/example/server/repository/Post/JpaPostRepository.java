package com.example.server.repository.Post;

import com.example.server.entity.Post;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaPostRepository extends JpaRepository<Post, Long>  {
    <T> T findByPostId(Long postId , Class<T> type);
}
