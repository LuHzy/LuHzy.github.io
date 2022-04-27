package com.luzz.service;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Classes;

import java.util.Date;
import java.util.List;

public interface ClassesService {

    void save(Classes classes);

    void update(Classes classes);

    void remove(Integer id);

    Classes findById(Integer id);

    PageInfo<Classes> page(Integer start, Integer size, Classes classes);

    List<Classes> getList();
}
