package com.example.server.service;


import com.example.server.entity.User;
import com.example.server.model.RoleType;
import com.example.server.repository.User.JpaUserRepository;
import com.example.server.repository.User.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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



}
