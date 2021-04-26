package com.T_Lyon.service;

import com.T_Lyon.pojo.Book;
import org.apache.ibatis.annotations.Param;

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

    //ͨ�����ֲ�ѯ�鼮
    Book getBookByName(String bookName);
}
