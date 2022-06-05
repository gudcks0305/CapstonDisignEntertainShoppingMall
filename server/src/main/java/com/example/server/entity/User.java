package com.example.server.entity;

import com.example.server.model.RoleType;
import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.bytebuddy.implementation.bind.annotation.Default;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "user_table")
public class User  extends BaseEntity{

    @Id
    private String username;
    private String name;
    @Column(unique = true , nullable = false)
    private String email;
    private String password;
    private String phone;
    private String address;
    private RoleType roleType;
    private String imageUrl;
    @ManyToOne
    @JoinColumn(name = "favorite_artist_id")
    private Artist favoriteArtist;
    @ColumnDefault("0")
    private Integer moneyPoint;
    private boolean isActive;
    private boolean isDeleted;
    @ColumnDefault("false")
    private boolean isArtist;


}
