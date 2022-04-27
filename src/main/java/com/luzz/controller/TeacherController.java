package com.luzz.controller;

import com.github.pagehelper.PageInfo;
import com.luzz.commons.Utils;
import com.luzz.pojo.Teacher;
import com.luzz.service.TeacherService;
import com.luzz.service.impl.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

@Controller
@RequestMapping("teacher")
public class TeacherController {

    @Autowired
    TeacherService service;
    @Autowired
    FileService fileService;

    @PostMapping("save")
    public String save(Teacher teacher){
        service.save(teacher);

        return "redirect:getTeachers";
    }

    @GetMapping("getTeachers")
    public String getTeachers(@RequestParam(defaultValue = "1") Integer start,
                              @RequestParam(defaultValue = "10") Integer size,
                              @ModelAttribute Teacher teacher,
                              Model model
                              ){
        if(start==0){
            start=1;
        }
        PageInfo<Teacher> pageInfo = service.page(start, size, teacher);
        model.addAttribute("pageInfo",pageInfo);

        return "teacherList";
    }

    @GetMapping("remove")
    public String remove(Integer id){
        service.remove(id);
        return "redirect:getTeachers";
    }

    @GetMapping("findById/{id}")
    public String findById(@PathVariable Integer id,Model model){
        Teacher teacher = service.findById(id);
        model.addAttribute("teacher",teacher);
        return "teacherEdit";
    }


    @PostMapping("update")
    public String update(@RequestParam("file")MultipartFile file, Teacher teacher, HttpServletRequest request){
        String fileName = fileService.upload(file, request);
        if(!StringUtils.isEmpty(fileName)){
            teacher.setImg("img/"+fileName);
        }
        service.update(teacher);
        return "redirect:getTeachers";
    }
}
