package com.example.server.config;


import com.example.server.config.auth.PrincipalDetailSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//빈등록 스프링에서 컨테이너에 객체 관리
@Configuration
@EnableWebSecurity // 필터 추가 시큐리티 필터추가
@EnableGlobalMethodSecurity(prePostEnabled = true)
//위 3개는 세트여~
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private PrincipalDetailSerivce principalDetailSerivce;

    @Bean
    public BCryptPasswordEncoder encodePWD() {
        return new BCryptPasswordEncoder();
    }
    //시큐리티가 대신로그인하는데 password 가로채기를하는데
    // password가 뭘로 해쉬가 되어 회원가입이 되었는지 알아야
    // 같은 해쉬로 암호화해서 DB에있는 해쉬랑 비교가능


    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(principalDetailSerivce).passwordEncoder(encodePWD());
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()//비활성화(테스트시 ㄱㄱ)
                .authorizeRequests()
                .antMatchers("/","/js/**","/auth/**","/css/**","/image/**","/item/*")
                .permitAll()
                .anyRequest()
                .authenticated()
                .and()
                    .formLogin()
                    .loginPage("/auth/loginForm")
                    .loginProcessingUrl("/auth/loginProc")
                    .defaultSuccessUrl("/");

    }
}
