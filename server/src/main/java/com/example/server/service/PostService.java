package com.example.server.service;

import com.example.server.entity.Post;
import com.example.server.entity.User;
import com.example.server.repository.Post.JpaPostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    public int update(Post reqPost , String userId) {
        if(reqPost.getUser().getUsername().equals(userId)){
            Post post = postRepository.findById(reqPost.getPostId()).get();
            post.setTitle(reqPost.getTitle());
            post.setContent(reqPost.getContent());
        }
        return 1;
    }

    public Page<Post> findAll(Pageable pageable) {
        return postRepository.findAllBy(Post.class,pageable);
    }

    public Post findByPostId(Long postId) {
        return postRepository.findById(postId).get();
    }
}
