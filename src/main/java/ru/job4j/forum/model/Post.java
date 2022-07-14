package ru.job4j.forum.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "posts")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;
    private Date created;

    public static Post of(int id, String name, String description) {
        Post post = new Post();
        post.id = id;
        post.name = name;
        post.description = description;
        return post;
    }
}
