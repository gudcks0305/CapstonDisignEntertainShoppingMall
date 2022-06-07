package com.example.server.repository.Item;

import com.example.server.entity.Item;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface JpaItemRepository extends JpaRepository<Item, Long> {

    Page<Item> findAllByItemArtist_ArtistId(Long artistId, Pageable pageable);

    Page<Item> findAllByItemCategory_CategoryId(Long categoryId, Pageable pageable);

    Page<Item> findAllByItemOwner_EntertainmentId(Long entertainmentId, Pageable pageable);

    Page<Item> findAllByItemArtist_ArtistIdAndItemCategory_CategoryId(Long artistId, Long categoryId, Pageable pageable);
}
