package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class PostService {

    private final PostRepository postStore;

    public PostService(PostRepository repository) {
        this.postStore = repository;
    }

    public Collection<Post> getAll() {
        List<Post> rsl = new ArrayList<>();
        postStore.findAll().forEach(rsl::add);
        return rsl;
    }

    public Post findById(int id) {
        return postStore.findById(id).orElse(null);
    }

    public void save(Post post) {
        post.setCreated(new Date());
        postStore.save(post);
    }
}
