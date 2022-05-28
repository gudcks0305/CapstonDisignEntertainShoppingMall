package com.example.server.service;

import com.example.server.dto.ItemRequestDto;
import com.example.server.entity.Category;
import com.example.server.entity.Entertainment;
import com.example.server.entity.Item;
import com.example.server.repository.Category.CategoryRepository;
import com.example.server.repository.Entertainmet.EntertainmentRepository;
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
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private EntertainmentRepository entertainmentRepository;
    @Transactional
    public void save(ItemRequestDto requestDto) {

        Entertainment entertainment = entertainmentRepository.findById(requestDto.getItemOwner()).get();
        Category category = categoryRepository.findById(requestDto.getItemCategory()).get();
        Item item = new Item();
        setItemData(requestDto, entertainment, category, item);

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
    @Transactional
    public void update(Long id, ItemRequestDto requestDto) {
        Entertainment entertainment = entertainmentRepository.findById(requestDto.getItemOwner()).get();
        Category category = categoryRepository.findById(requestDto.getItemCategory()).get();

        Item item = itemRepository.findById(id).get();
        setItemData(requestDto, entertainment, category, item);
    }

    private void setItemData(ItemRequestDto requestDto, Entertainment entertainment, Category category, Item item) {
        item.setItemOwner(entertainment);
        item.setItemCategory(category);
        item.setItemTitle(requestDto.getItemTitle());
        item.setItemName(requestDto.getItemName());
        item.setItemDescription(requestDto.getItemDescription());
        item.setItemImageUrl(requestDto.getItemImageUrl());
        item.setItemPrice(requestDto.getItemPrice());
        item.setItemQuantity(requestDto.getItemQuantity());
    }


}
