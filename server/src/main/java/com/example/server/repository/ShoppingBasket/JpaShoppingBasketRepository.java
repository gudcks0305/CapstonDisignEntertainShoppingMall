package com.example.server.repository.ShoppingBasket;

import com.example.server.entity.Item;
import com.example.server.entity.ShoppingBasket;
import com.example.server.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaShoppingBasketRepository extends JpaRepository<ShoppingBasket, Long> {
    void deleteByUser_UsernameAndBasketId(String userId, Long basketId);

    Page<ShoppingBasket> findAllByUser(User user , Pageable pageable);
    boolean existsShoppingBasketByUserAndItem(User user, Item item);

    ShoppingBasket findByUserAndItem(User user, Item item);
}
