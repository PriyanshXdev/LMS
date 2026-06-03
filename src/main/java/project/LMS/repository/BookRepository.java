package project.LMS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import project.LMS.model.Book;
import java.util.List;

public interface BookRepository extends JpaRepository<Book, Integer> {
    List<Book> findByTitleIgnoreCase(String title);
}