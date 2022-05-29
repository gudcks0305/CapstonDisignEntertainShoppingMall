package com.example.server.repository.Post;

import com.example.server.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaPostRepository extends JpaRepository<Post, Long>  {
    <T> T findByPostId(Long postId , Class<T> type);
    <T> Page<T> findAllBy(Class<T> type , Pageable pageable);
}
