package com.andt.chihuahua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {
    @GetMapping("")
    public String hello() {
        String out = "";
        int a = 10;
        for (int i = 0; i < a; i++) {
            out += "hello " + i + "\n";
        }
        return out;
    }
}
