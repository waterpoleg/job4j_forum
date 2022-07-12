package ru.job4j.forum.service;

import org.springframework.stereotype.Service;
import ru.job4j.forum.model.Post;
import ru.job4j.forum.repository.PostMemRepository;

import java.util.Collection;

@Service
public class PostService {

    private final PostMemRepository postStore;

    public PostService(PostMemRepository repository) {
        this.postStore = repository;
    }

    public Collection<Post> getAll() {
        return postStore.getAll();
    }

    public Post findById(int id) {
        return postStore.findById(id);
    }

    public void save(Post post) {
        postStore.save(post);
    }
}
