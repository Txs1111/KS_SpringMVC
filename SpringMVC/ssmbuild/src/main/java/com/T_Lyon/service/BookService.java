package com.T_Lyon.service;

import com.T_Lyon.pojo.Book;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Book book);

    //删除一本书
    int deleteBook(int bookID);

    //更新一本书
    int updateBook(Book book);

    //查询一本书
    Book getBook(int bookID);

    //查询全部的书
    List<Book> getBooks();
}
