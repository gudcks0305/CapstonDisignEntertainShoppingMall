package com.example.server.repository.Item;

import com.example.server.entity.Item;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaItemRepository extends JpaRepository<Item, Long> {

}
