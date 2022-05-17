package com.example.server.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum RoleType {
    MEMBER("ROLE_USER", "일반 사용자 권한"),
    ENTER("ROLE_ENTER", "사업자 권한"),
    ADMIN("ROLE_ADMIN", "관리자 권한"),
    ARTIST("ROLE_ARTIST", "게스트 권한");

    private final String code;
    private final String displayName;

    public static RoleType of(String code) {
        return Arrays.stream(RoleType.values())
                .filter(r -> r.getCode().equals(code))
                .findAny()
                .orElse(MEMBER);
    }
}