package ru.job4j.forum.control;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.job4j.forum.service.PostService;

@AllArgsConstructor
@Controller
public class IndexControl {
    private final PostService postService;

    @GetMapping({"/", "/index"})
    public String index(Model model) {
        model.addAttribute("posts", postService.getAll());
        return "index";
    }
}
