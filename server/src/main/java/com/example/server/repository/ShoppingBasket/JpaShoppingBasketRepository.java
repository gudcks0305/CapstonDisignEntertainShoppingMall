package com.example.server.repository.ShoppingBasket;

import com.example.server.entity.ShoppingBasket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JpaShoppingBasketRepository extends JpaRepository<ShoppingBasket, Long> {

}
