package com.T_Lyon.mapper;

import com.T_Lyon.pojo.Book;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BookMapper {
    //增加一本书
    int addBook(Book book);
    //删除一本书
    int deleteBook(@Param("ID") int bookID);
    //更新一本书
    int updateBook(Book book);
    //查询一本书
    Book getBook(@Param("ID") int bookID);
    //查询全部的书
    @Select("select * from ssmbuild.books;")
    List<Book> getBooks();
    //通过名字查询书籍
    @Select("select * from ssmbuild.books where bookName=#{bookName};")
    Book getBookByName(@Param("bookName") String bookName);

}
