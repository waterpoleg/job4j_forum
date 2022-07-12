package ru.job4j.forum.repository;

import org.springframework.stereotype.Repository;
import ru.job4j.forum.model.Post;

import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@Repository
public class PostMemRepository {

    private final Map<Integer, Post> posts = new ConcurrentHashMap<>();
    private final AtomicInteger id = new AtomicInteger();

    public PostMemRepository() {
        posts.put(1, Post.of(1, "Name 1", "Description 1"));
        id.set(1);
    }

    public Collection<Post> getAll() {
        return posts.values();
    }

    public Post findById(int id) {
        return posts.get(id);
    }

    public void save(Post post) {
        if (post.getId() == 0) {
            post.setId(id.incrementAndGet());
        }
        posts.put(post.getId(), post);
    }
}
