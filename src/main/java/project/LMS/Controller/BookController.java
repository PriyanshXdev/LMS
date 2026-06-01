package project.LMS.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import project.LMS.service.BookService;

@Controller
public class BookController {
    private BookService bookService;
    @GetMapping("/")
    public String home(){
        return "index";
    }
}
