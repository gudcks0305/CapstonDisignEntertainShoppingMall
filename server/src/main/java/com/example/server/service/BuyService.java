package com.example.server.service;

import com.example.server.entity.Buy;
import com.example.server.repository.Buy.BuyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BuyService {
    private final BuyRepository buyRepository;

    public List<Buy> getBuyList(String username) {
        return buyRepository.findAllByUser_Username(username);
    }
}
