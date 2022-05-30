package com.example.server.repository.Buy;

import com.example.server.entity.Buy;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BuyRepository extends JpaRepository<Buy, Long> {

    Buy findByBuyId(Long buyId);

    List<Buy> findAllByUser_Username(String username);
}
