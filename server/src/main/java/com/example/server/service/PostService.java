package com.example.server.service;

import com.example.server.entity.Post;
import com.example.server.entity.User;
import com.example.server.repository.Post.JpaPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class PostService {
    @Autowired
    private JpaPostRepository postRepository;

    @Transactional
    public int save(Post post, User user) {
        post.setUser(user);
        postRepository.save(post);
        return 1;
    }

    @Transactional
    public int delete(Long id) {
        postRepository.deleteById(id);
        return 1;
    }
    @Transactional
    public int update(Post reqPost , Long id) {
        Post post = postRepository.findByPostId(id , Post.class);
        post.setTitle(reqPost.getTitle());
        post.setContent(reqPost.getContent());
        return 1;
    }
}
