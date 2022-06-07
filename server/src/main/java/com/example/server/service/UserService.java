package com.example.server.service;


import com.example.server.entity.Artist;
import com.example.server.entity.User;
import com.example.server.model.RoleType;
import com.example.server.repository.User.JpaUserRepository;
import com.example.server.repository.User.UserRepository;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private JpaUserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @Transactional
    public int 회원가입(User user){
        try {
            String rawPassword = user.getPassword();
            String encPassword = encoder.encode(rawPassword);
            user.setPassword(encPassword);
            user.setRoleType(RoleType.MEMBER);
            userRepository.save(user);
            return 1;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("user service 회원가입" + e.getMessage());

        }
        return -1;

    }


    public int 회원정보수정(User reqUser) {
        Optional<User> user = Optional.ofNullable(userRepository.findByUsername(reqUser.getUsername())
                .orElseThrow(() -> new IllegalArgumentException("사용자가 존재하지 않습니다.")));
        user.ifPresent(u -> {
         /*   String rawPassword = u.getPassword();
            String encPassword = encoder.encode(rawPassword);
            u.setPassword(encPassword);*/
            u.setEmail(reqUser.getEmail());
            u.setName(reqUser.getName());
            u.setPhone(reqUser.getPhone());
            u.setAddress(reqUser.getAddress());
            u.setImageUrl(reqUser.getImageUrl());
        });
         user.map(u -> userRepository.save(u).getUsername())
                .orElseThrow(() -> new IllegalArgumentException("사용자가 존재하지 않습니다."));
        return 1;

    }

    public int 회원충전( Long moneyPoint , User user) {
        User user1 = userRepository.findByUsername(user.getUsername())
                .orElseThrow(() -> new IllegalArgumentException("사용자가 존재하지 않습니다."));
        user1.setMoneyPoint((int) (user1.getMoneyPoint() + moneyPoint));
        userRepository.save(user1);



        return 1;
    }

    public Object 회원정보(User user) {
        User user1 = userRepository.findByUsername(user.getUsername())
                .orElseThrow(() -> new IllegalArgumentException("사용자가 존재하지 않습니다."));
        return user1;
    }
}
