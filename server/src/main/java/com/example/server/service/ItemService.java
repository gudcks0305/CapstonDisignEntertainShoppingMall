package com.example.server.service;

import com.example.server.dto.ItemRequestDto;
import com.example.server.entity.Artist;
import com.example.server.entity.Category;
import com.example.server.entity.Entertainment;
import com.example.server.entity.Item;
import com.example.server.repository.Artist.ArtistRepository;
import com.example.server.repository.Category.CategoryRepository;
import com.example.server.repository.Entertainmet.EntertainmentRepository;
import com.example.server.repository.Item.JpaItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class ItemService {
    @Autowired
    private JpaItemRepository itemRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private EntertainmentRepository entertainmentRepository;
    @Autowired
    private ArtistRepository artistRepository;
    @Transactional
    public void save(ItemRequestDto requestDto) {

        Entertainment entertainment = entertainmentRepository.findById(requestDto.getItemOwner()).get();
        Category category = categoryRepository.findById(requestDto.getItemCategory()).get();

        Artist artist = artistRepository.findById(requestDto.getItemArtist()).orElseThrow(() -> new IllegalArgumentException("아티스트가 존재하지 않습니다."));
        Item item = new Item();
        setItemData(requestDto, entertainment, category, item, artist);
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
        Artist artist = artistRepository.findById(requestDto.getItemArtist()).get();
        Item item = itemRepository.findById(id).get();
        setItemData(requestDto, entertainment, category, item , artist);
    }

    private void setItemData(ItemRequestDto requestDto, Entertainment entertainment, Category category, Item item, Artist artist) {
        item.setItemOwner(entertainment);
        item.setItemCategory(category);
        item.setItemTitle(requestDto.getItemTitle());
        item.setItemName(requestDto.getItemName());
        item.setItemDescription(requestDto.getItemDescription());
        item.setItemImageUrl(requestDto.getItemImageUrl());
        item.setItemPrice(requestDto.getItemPrice());
        item.setItemQuantity(requestDto.getItemQuantity());
        item.setItemArtist(artist);
    }


    public Page<Item> findAllByArtistId(Long artistId, Pageable pageable) {
        Page<Item> list =  itemRepository.findAllByItemArtist_ArtistId(artistId , pageable);

        return list;
    }

    public Page<Item> findAllByCategoryId(Long categoryId, Pageable pageable) {
        Page<Item> list =  itemRepository.findAllByItemCategory_CategoryId(categoryId , pageable);

        return list;
    }

    public Object findAllByEntertainmentId(Long entertainmentId, Pageable pageable) {
        Page<Item> list =  itemRepository.findAllByItemOwner_EntertainmentId(entertainmentId , pageable);

        return list;
    }

    public Object findAllByArtistIdAndCategoryId(Long artistId, Long categoryId, Pageable pageable) {
        Page<Item> list =  itemRepository.findAllByItemArtist_ArtistIdAndItemCategory_CategoryId(artistId, categoryId , pageable);

        return list;
    }
}
