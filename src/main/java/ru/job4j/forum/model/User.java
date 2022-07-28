package ru.job4j.forum.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String username;
    private String password;
    private boolean enabled;
    @ManyToOne
    @JoinColumn(name = "authority_id")
    private Authority authority;

}
