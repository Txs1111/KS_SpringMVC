package com.T_Lyon.service;

import com.T_Lyon.mapper.BookMapper;
import com.T_Lyon.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//serviceµ÷dao²ã£¬×éºÏDao
public class BookServiceImpl implements BookService {
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int deleteBook(int bookID) {
        return bookMapper.deleteBook(bookID);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public Book getBook(int bookID) {
        return bookMapper.getBook(bookID);
    }

    public List<Book> getBooks() {
        return bookMapper.getBooks();
    }

    public Book getBookByName(String bookName) {
        return bookMapper.getBookByName(bookName);
    }
}
