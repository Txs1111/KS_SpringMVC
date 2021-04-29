package com.T_Lyon.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pojo.User;

import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {

    @RequestMapping("/t1")
    public String Demo1() {
        return "t1";
    }

    @RequestMapping("/a2")
    public List<User> Demo2() {
        List<User> userList = new ArrayList<User>();

        //增加数据
        userList.add(new User("狂神说java", 1, "男"));
        userList.add(new User("狂神说前端", 1, "女"));
        userList.add(new User("狂神说运维", 1, "女"));

        return userList;
    }
}
