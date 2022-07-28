package ru.job4j.forum.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Table(name = "authorities")
@Entity
public class Authority {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String authority;

}
