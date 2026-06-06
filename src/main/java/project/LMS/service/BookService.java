package project.LMS.service;
import org.springframework.stereotype.Service;
import project.LMS.model.Book;
import project.LMS.repository.BookRepository;

import java.util.List;
@Service
public class BookService {

    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Book saveBook(Book book) {
        return bookRepository.save(book);
    }

    public Book getBookById(int id) {
        return bookRepository.findById(id).orElse(null);
    }

    public List<Book> getBookByTitle(String title) {
        return bookRepository.findByTitleIgnoringCase(title);
    }

    public List<Book> getAllBooks(){
        return bookRepository.findAll();
    }
}
