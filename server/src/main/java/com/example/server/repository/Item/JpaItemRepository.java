package com.example.server.repository.Item;

import com.example.server.entity.Item;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface JpaItemRepository extends JpaRepository<Item, Long> {

    Page<Item> findAllByItemArtist_ArtistId(Long artistId, Pageable pageable);
}
