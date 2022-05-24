package com.example.server.config.auth;


import com.example.server.entity.User;
import com.example.server.repository.User.JpaUserRepository;
import com.example.server.repository.User.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class PrincipalDetailSerivce implements UserDetailsService {
    @Autowired
    private JpaUserRepository userRepository;
    //스프링이 로그인요청을 가로챌때 username , password 두개 하는데
    // 패스워드 부분처리는 알아서 함
    // username이 db에 있는지 확인만
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User principal = userRepository.findByUsername(username)
                .orElseThrow(()->{
                    return new UsernameNotFoundException("해당 사용자를 찾을수 없습니다. : " + username);
                });

        return new PrincipalDetail(principal); // 시큐리티 세션에 저장

    }
}
