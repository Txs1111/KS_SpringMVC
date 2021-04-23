package com.T_Lyon.service;

import com.T_Lyon.pojo.Book;

import java.util.List;

public interface BookService {
    //����һ����
    int addBook(Book book);

    //ɾ��һ����
    int deleteBook(int bookID);

    //����һ����
    int updateBook(Book book);

    //��ѯһ����
    Book getBook(int bookID);

    //��ѯȫ������
    List<Book> getBooks();
}
