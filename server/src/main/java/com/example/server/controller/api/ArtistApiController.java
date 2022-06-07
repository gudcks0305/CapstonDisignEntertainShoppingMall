package com.example.server.controller.api;

import com.example.server.dto.ArtistRequestDto;
import com.example.server.dto.ResponseDto;
import com.example.server.entity.Artist;
import com.example.server.service.ArtistService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;

@RestController
@RequiredArgsConstructor
public class ArtistApiController {

    private final ArtistService artistService;

    @PostMapping("/admin/artist/add")
    public ResponseDto add(@RequestBody ArtistRequestDto artist) {


        artistService.add(artist);
        return new ResponseDto(HttpStatus.OK, "아티스트가 추가되었습니다.");
    }
    @PutMapping("/admin/artist/update")
    public ResponseDto update(@RequestBody ArtistRequestDto artist) {
        artistService.update(artist);
        return new ResponseDto(HttpStatus.OK, "아티스트가 수정되었습니다.");
    }
}
