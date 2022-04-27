package com.luzz.controller;

import com.github.pagehelper.PageInfo;
import com.luzz.commons.Utils;
import com.luzz.pojo.Classes;
import com.luzz.pojo.Student;
import com.luzz.service.StudentService;
import com.luzz.service.impl.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    StudentService service;

    @Autowired
    FileService fileService;

   /* @GetMapping("/list")
    public @ResponseBody List<Student> list(){
        List<Student> list = service.list();
        return list;
    }*/

    @GetMapping("toAdd")
    public String toAdd(Model model){

        List<Classes> classList = service.findClassList();
        model.addAttribute("classList",classList);
        return "studentAdd";
    }


    @GetMapping("getStudent")
    public String getStudent(@RequestParam(defaultValue = "1") Integer start,
                             @RequestParam(defaultValue = "5") Integer size,
                             Student student,
                             Model model){

        if(start==0){
            start=1;
        }

        PageInfo<Student> pageInfo = service.finStudentList(start, size, student);
        model.addAttribute("pageInfo",pageInfo);
        List<Classes> classList = service.findClassList();
        model.addAttribute("classList",classList);
        if(!StringUtils.isEmpty(student)){
            model.addAttribute("sel_student",student);
        }

        return "studentList";
    }

    @PostMapping("save")
    public String save(Student student){
        service.save(student);
        return "redirect:getStudent";
    }

    @GetMapping("remove")
    @ResponseBody
    public boolean remove(Integer id){
        boolean flag = service.remove(id);
        return flag;
    }

    @GetMapping("findById/{id}")
    public String findById(@PathVariable Integer id,Model model){
        Student student = service.findById(id);
        model.addAttribute("student",student);

        List<Classes> classList = service.findClassList();
        model.addAttribute("classList",classList);
        return "studentEdit";
    }


    @PostMapping("update")
    public String update(@RequestParam("file")MultipartFile file, Student student, HttpServletRequest request){
        String fileName = fileService.upload(file, request);
        if(!StringUtils.isEmpty(fileName)){
            student.setImg("img/"+fileName);
        }
        service.update(student);
        return "redirect:getStudent";
    }
}
