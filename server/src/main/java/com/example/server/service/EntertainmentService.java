package com.example.server.service;

import com.example.server.dto.entertainment.EntertainmentDto;
import com.example.server.entity.Entertainment;
import com.example.server.repository.Entertainmet.EntertainmentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RequiredArgsConstructor
@Service
public class EntertainmentService {
    private final EntertainmentRepository entertainmentRepository;

    @Transactional
    public void save(EntertainmentDto entertainmentDto){
        Entertainment entertainment = new Entertainment();
        entertainment.setDescription(entertainmentDto.getDescription());
        entertainment.setImageUrl(entertainment.getImageUrl());
        entertainment.setName(entertainmentDto.getName());
        entertainmentRepository.save(entertainment);
    }
    @Transactional(readOnly = true)
    public List<Entertainment> findAll(){
        return entertainmentRepository.findAll();
    }
}
