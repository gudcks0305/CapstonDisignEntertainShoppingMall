package com.example.server.controller.api;

import com.example.server.config.auth.PrincipalDetail;
import com.example.server.dto.ResponseDto;
import com.example.server.entity.Post;
import com.example.server.entity.User;
import com.example.server.service.PostService;
import com.example.server.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PostApiController {
    @Autowired
    private PostService postService;

    @PostMapping("/post/save")
    public ResponseDto<Integer> save(@RequestBody Post post , @AuthenticationPrincipal PrincipalDetail principalDetail) {

        int result = postService.save(post , principalDetail.getUser());
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }
    @PutMapping("/post/update")
    public ResponseDto<Integer> update(@RequestBody Post post , @AuthenticationPrincipal PrincipalDetail principalDetail) {

        int result = postService.update(post , principalDetail.getUser().getUsername());
        return new ResponseDto<Integer>(HttpStatus.OK,result);
    }
}
