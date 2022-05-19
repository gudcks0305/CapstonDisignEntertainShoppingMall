package com.example.server.controller;

import com.example.server.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PostController {
    @Autowired
    private PostService postService;
    // 공지사항 목록 페이지
    @GetMapping("/post/list")
    public String list(Model model ,
                       @PageableDefault(size = 10,sort = "postId",direction = Sort.Direction.DESC) Pageable pageable) {
        model.addAttribute("posts", postService.findAll(pageable));
        return "post/postList";
    }
    // 공지사항 글쓰기 페이지
    @GetMapping("/post/write")
    public String create() {
        return "post/postWrite";
    }
    // 공지사항 업데이트 페이지
    @GetMapping("/post/{postId}/update")
    public String update(@PathVariable Long postId , Model model) {
        model.addAttribute("postId", postService.findByPostId(postId));
        return "post/postUpdate";
    }

}
