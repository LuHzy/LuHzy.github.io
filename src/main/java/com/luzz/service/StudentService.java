package com.luzz.service;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Classes;
import com.luzz.pojo.Student;

import java.util.List;

public interface StudentService {
    /*List<Student> list();*/

    List<Classes> findClassList();

    PageInfo<Student> finStudentList(Integer start,Integer size,Student student);

    void save(Student student);

    boolean remove(Integer id);

    Student findById(Integer id);

    void update(Student student);
}
