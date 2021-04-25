package com.T_Lyon.controller;

import com.T_Lyon.pojo.Book;
import com.T_Lyon.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String list(Model model){
        List<Book> books = bookService.getBooks();
        Model list = model.addAttribute("list", books);
        return "allBooks";
    }
}
