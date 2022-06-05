package com.example.server.controller;

import com.example.server.service.ArtistService;
import com.example.server.service.EntertainmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@RequiredArgsConstructor
@Controller
public class ArtistController {
    private final ArtistService artistService;
    private final EntertainmentService entertainmentService;
    @GetMapping("/artist/list")
    public String list(Model model) {
        model.addAttribute("artistList",artistService.findAll());
        return "artist/ArtistList";
    }
    @GetMapping("/admin/artist/add")
    public String add(Model model) {
        model.addAttribute("artistList", artistService.findAll());
        model.addAttribute("entertainment", entertainmentService.findAll());
        return "artist/artistAdd";
    }

}
