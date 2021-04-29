package com.T_Lyon.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AjaxController {

    @RequestMapping("/t1")
    public String Demo1() {
        return "t1";
    }

}
