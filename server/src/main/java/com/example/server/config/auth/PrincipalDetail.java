package com.example.server.config.auth;


import com.example.server.entity.User;
import lombok.Data;
import lombok.Getter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
// 스프링이 로그인요청 가로채서 로그인하고 완료되면 유저 디테일 타입 오브젝트를 스프링
// 시큐리티의 고유한 세션저장소에 저장
@Getter
public class PrincipalDetail implements UserDetails {
    private User user;

    public PrincipalDetail(User user) {
        this.user = user;
    }
    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }
    //계정 만료 여부
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }
    //계정 잠금여부
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }
    //비밀번호 만료 안됫는지 트루가 만료안됨
    @Override
    public boolean isCredentialsNonExpired() {
        return  true;
    }
    //계정이 활성화 가능한지
    @Override
    public boolean isEnabled() {
        return true;
    }


    //계정이 가지는 권한 목록을 리턴 권한이 여러개일경우 루프를 톨아야함함
   @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> collector = new ArrayList<>();

        collector.add(()->{
            return user.getRoleType().getCode();
        });
        return collector;
    }

}
