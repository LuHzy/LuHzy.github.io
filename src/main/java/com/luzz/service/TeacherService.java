package com.luzz.service;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Teacher;

public interface TeacherService {
    void save(Teacher teacher);

    PageInfo<Teacher> page(Integer start,Integer size,Teacher teacher);

    void remove(Integer id);

    Teacher findById(Integer id);

    void update(Teacher teacher);

}

