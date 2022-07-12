package ru.job4j.forum.model;

import lombok.Data;

import java.util.Calendar;

@Data
public class Post {

    private int id;
    private String name;
    private String description;
    private Calendar created;

    public static Post of(int id, String name, String description) {
        Post post = new Post();
        post.id = id;
        post.name = name;
        post.description = description;
        return post;
    }
}
