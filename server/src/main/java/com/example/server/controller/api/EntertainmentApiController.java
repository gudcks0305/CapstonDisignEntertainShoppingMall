package com.example.server.controller.api;

import com.example.server.dto.ResponseDto;
import com.example.server.dto.entertainment.EntertainmentDto;
import com.example.server.service.EntertainmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
@RequiredArgsConstructor
@RestController
public class EntertainmentApiController {
    private final EntertainmentService entertainmentService;
    @PostMapping("/admin/entertainment/add")
    public ResponseDto save(@RequestBody EntertainmentDto requestDto){
        entertainmentService.save(requestDto);
        return new ResponseDto(HttpStatus.OK, "SUCCESS");
    }
}
