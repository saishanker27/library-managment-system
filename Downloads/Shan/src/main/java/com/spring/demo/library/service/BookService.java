package com.spring.demo.library.service;

import com.spring.demo.library.model.Book;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.stream.Collectors;

@Service
public class BookService {

    private Map<Long, Book> bookMap = new HashMap<>();

    public Book createBook(Book book) {
        // Simulating database insert
        Long bookId = new Random().nextLong();
        book.setBookId(bookId);
        bookMap.put(bookId, book);
        return book;
    }

    public Book getBook(Long bookId) {
        return bookMap.get(bookId);
    }

    public List<Book> getAllBooks() {
        return bookMap.values().stream().collect(Collectors.toList());
    }

    public Book updateBook(Long bookId, Book updatedBook) {
        if (bookMap.containsKey(bookId)) {
            // Simulating database update
            updatedBook.setBookId(bookId);
            bookMap.put(bookId, updatedBook);
            return updatedBook;
        }
        return null; // Book not found for the given bookId
    }

    public void deleteBook(Long bookId) {
        bookMap.remove(bookId);
        // Simulating database delete
    }
}