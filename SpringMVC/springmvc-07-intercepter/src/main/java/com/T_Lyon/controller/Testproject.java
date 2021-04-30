package com.T_Lyon.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Testproject {
    @GetMapping("/t1")
    public String test() {
        System.out.println("TestController.test");
        return "ok";
    }
}
