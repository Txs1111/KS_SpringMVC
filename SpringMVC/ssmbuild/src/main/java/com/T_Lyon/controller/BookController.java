package com.T_Lyon.controller;

import com.T_Lyon.pojo.Book;
import com.T_Lyon.service.BookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller 调 service 层
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBooks")
    public String allBooks(Model model) {
        List<Book> books = bookService.getBooks();
        Model list = model.addAttribute("list", books);
        return "allBooks";
    }

    //跳转到添加书籍功能
    @RequestMapping("/toAddBook")
    public String toAddBook() {
        return "addBook";
    }

    //添加书籍功能
    @RequestMapping("/addBook")
    public String addBook(Book book) {
        int i = bookService.addBook(book);
        return "redirect:/book/allBooks";
    }
//    //通过问号传参数
//    //删除书籍功能
//    @RequestMapping("/deleteBook")
//    public String deleteBook(int ID) {
//        bookService.deleteBook(ID);
//        return "redirect:/book/allBooks";
//    }

    //通过RestFul风格传参数
    //删除书籍功能
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int ID) {
        bookService.deleteBook(ID);
        return "redirect:/book/allBooks";
    }

}
