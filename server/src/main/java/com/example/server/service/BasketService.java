package com.example.server.service;

import com.example.server.dto.basket.RequestBasketDto;
import com.example.server.entity.Item;
import com.example.server.entity.ShoppingBasket;
import com.example.server.entity.User;
import com.example.server.repository.Item.JpaItemRepository;
import com.example.server.repository.ShoppingBasket.JpaShoppingBasketRepository;
import com.example.server.repository.User.JpaUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class BasketService {
    @Autowired
    private JpaShoppingBasketRepository basketRepository;

    @Autowired
    private JpaItemRepository itemRepository;
    @Autowired
    private JpaUserRepository userRepository;

    //작업 중
    public int addToBasket(RequestBasketDto basketDto, String userId) {
        Item item = itemRepository.findById(basketDto.getProductId()).get();
        Optional<User> user = Optional.ofNullable(userRepository.findByUsername(userId).orElseThrow(() -> new IllegalArgumentException("유저가 없습니다.")));
        if(basketRepository.existsShoppingBasketByUserAndItem(user.get(), item)){
            basketRepository.findByUserAndItem(user.get(), item).setQuantity(basketRepository.findByUserAndItem(user.get(), item).getQuantity() + basketDto.getQuantity());
        }
        basketRepository.save(basketDto.toEntity(user.get() , item , basketDto.getQuantity()));
        return 1;
    }
    @Transactional
    public int deleteFromBasket(Long basketId, String userId) {
        basketRepository.deleteByUser_UsernameAndBasketId(userId, basketId);
        return 1;
    }
    @Transactional
    public Page<ShoppingBasket> getBasketList(Pageable pageable,String userId) {
        User user = userRepository.findByUsername(userId).orElseThrow(() -> new IllegalArgumentException("유저가 없습니다."));
        return basketRepository.findAllByUser(user, pageable);
    }


}
