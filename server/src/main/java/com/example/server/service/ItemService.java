package com.example.server.service;

import com.example.server.entity.Item;
import com.example.server.repository.Item.JpaItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class ItemService {
    @Autowired
    private JpaItemRepository itemRepository;
    @Transactional
    public void save(Item item) {
        itemRepository.save(item);
    }

    @Transactional
    public void delete(Long id) {
        itemRepository.deleteById(id);
    }
    @Transactional
    public Item findById(Long id) {
        return itemRepository.findById(id).get();
    }
    @Transactional
    public Page<Item> findAll(Pageable pageable) {
        return itemRepository.findAll(pageable);
    }



}
