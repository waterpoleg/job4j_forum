package ru.job4j.forum.model;

import lombok.Data;

@Data
public class User {

    private int id;
    private String username;
    private String password;
}
