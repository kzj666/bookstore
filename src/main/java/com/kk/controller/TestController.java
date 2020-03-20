package com.kk.controller;

/*
@author kzj
@date 2020/3/17 - 18:30
*/

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("/test")
    public String test() {
        return "success";
    }
}
