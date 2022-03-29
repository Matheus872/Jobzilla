package com.iarh.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping
public class InfoController {

    @GetMapping("/")
    @CrossOrigin
    @ResponseStatus(code = HttpStatus.OK)
    public String helloMenssage(){
        return "INFO";
    }
}
