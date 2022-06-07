package com.example.server.service;

import com.example.server.dto.BuyDto;
import com.example.server.entity.Buy;
import com.example.server.entity.Item;
import com.example.server.entity.User;
import com.example.server.model.DeliveryStatusType;
import com.example.server.repository.Buy.BuyRepository;
import com.example.server.repository.Item.JpaItemRepository;
import com.example.server.repository.User.JpaUserRepository;
import com.example.server.repository.User.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@RequiredArgsConstructor
public class BuyService {
    private final BuyRepository buyRepository;
    private final JpaItemRepository itemRepository;
    private final JpaUserRepository userRepository;
    public List<Buy> getBuyList(String username) {
        return buyRepository.findAllByUser_Username(username);
    }

    @Transactional
    public void buy(BuyDto buyDto, User user) {
        User u = userRepository.findByUsername(user.getUsername()).orElseThrow(() -> new IllegalArgumentException("유저가 없습니다."));
        Item item = itemRepository.findById(buyDto.getItemId()).orElseThrow(() -> new IllegalArgumentException("아이템이 존재하지 않습니다."));
        System.out.println(item.getItemId() + " " + item.getItemCategory().getCategoryName());
        Buy buy = Buy.builder()
                .user(u)
                .item(item)
                .buyCount(buyDto.getBuyCount())
                .deliveryStatus(DeliveryStatusType.STATUS_TYPE_WAIT)
                .build();
        if(buy.getBuyCount() > item.getItemQuantity()) {
            throw new IllegalArgumentException("재고가 부족합니다.");
        }
        if(buy.getBuyCount() <= 0) {
            throw new IllegalArgumentException("수량은 0보다 커야합니다.");
        }
        if(user.getMoneyPoint() < buy.getItem().getItemPrice() * buy.getBuyCount()) {
            throw new IllegalArgumentException("돈이 부족합니다.");
        }else {
            user.setMoneyPoint((int) (user.getMoneyPoint() - buy.getItem().getItemPrice() * buy.getBuyCount()));
            userRepository.save(user);
        }
        buyRepository.save(buy);
    }
}
