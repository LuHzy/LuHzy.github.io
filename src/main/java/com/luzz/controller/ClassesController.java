package com.luzz.controller;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Classes;
import com.luzz.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("class")
public class ClassesController {

    @Autowired
    private ClassesService service;

    @PostMapping("/save")
    public String save(Classes classes) {
        service.save(classes);

        return "redirect:getClass";
    }

    @GetMapping("/getClass")
    public String getClass(
            @RequestParam(defaultValue = "1") Integer start,
            @RequestParam(defaultValue = "5") Integer size,
            Classes classes,
            Model model) {
        if(start==0){
            start=1;
        }

        PageInfo<Classes> pageInfo = service.page(start, size, classes);
        model.addAttribute("pageInfo",pageInfo);


        /*存储查询条件用于回显*/
        /*如果带有查询条件，就将查询条件存储在model中*/
        if(!StringUtils.isEmpty(classes)){
            model.addAttribute("sel_classes",classes);
        }
        return "classList";
    }


    @GetMapping("/remove")
    public String remove(Integer id){
        service.remove(id);
        return "redirect:getClass";
    }

    @GetMapping("/findById/{id}")
    public String findById(@PathVariable Integer id,Model model){
        Classes classes = service.findById(id);
        model.addAttribute("classes",classes);
        return "classEdit";
    }

    @PostMapping("/update")
    public String update(Classes classes){
        service.update(classes);
        return "redirect:getClass";
    }
}
