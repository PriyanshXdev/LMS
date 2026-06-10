package project.LMS.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.LMS.model.Book;
import project.LMS.service.BookService;

import java.util.List;

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

    @GetMapping("/addbook")
    public String addBookPage() {
        return "AddBook";
    }


    @PostMapping("/addbook")
    public String saveBook(@ModelAttribute Book book) {
        bookService.saveBook(book);
        return "redirect:/viewBooks";
    }

    @GetMapping("/viewBooks")
    public String viewbooks(Model model){
        List<Book> books =bookService.getAllBooks();
//
//        System.out.println("Total books found: " + books.size());
//        for(Book b : books) {
//            System.out.println("Book: " + b.getId() + " " + b.getTitle() + " " + b.getPublishedYear());
//        }
//
        model.addAttribute("books",books);
        return "ViewBooks";
    }

@GetMapping("/deleteBook")
    public String DeleteBook(@RequestParam("id")int id){
    System.out.println("Deleting book with ID: " + id);
        bookService.deleteBookById(id);
        return "redirect:/viewBooks";


    }


}
