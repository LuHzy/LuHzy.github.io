package com.luzz.controller;

import com.luzz.service.impl.CountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class CountController {

    @Autowired
    private CountService countService;

    @GetMapping("/count")
    public Map<String,Integer> count(){
        Map<String, Integer> map = countService.count();
        return map;
    }
}
