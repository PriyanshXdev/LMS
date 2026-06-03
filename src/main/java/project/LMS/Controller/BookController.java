package project.LMS.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import project.LMS.model.Book;
import project.LMS.service.BookService;

@Controller
public class BookController {

    private BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @GetMapping("/test")
    @ResponseBody
    public String test() {
        return "Controller Working";
    }

    @PostMapping("/addbook")
    public String saveBook(@ModelAttribute Book book){
        bookService.saveBook(book);
        return "index";
    }
}
