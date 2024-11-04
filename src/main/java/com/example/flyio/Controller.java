package com.example.flyio;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {


    @GetMapping("/hello")
    private String helloWorld(){
        return "Hello, World!";
    }
}
