package com.luzz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.luzz.mapper.TeacherMapper;
import com.luzz.pojo.Teacher;
import com.luzz.pojo.TeacherExample;
import com.luzz.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper mapper;

    @Override
    public void save(Teacher teacher) {
        mapper.insertSelective(teacher);
    }

    @Override
    public PageInfo<Teacher> page(Integer start, Integer size, Teacher teacher) {
        PageHelper.startPage(start,size);
        List<Teacher> teacherList = mapper.selectByExample(getExample(teacher));
        PageInfo<Teacher> pageInfo = new PageInfo<>(teacherList);
        return pageInfo;
    }

    @Override
    public void remove(Integer id) {
        mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Teacher findById(Integer id) {
        Teacher teacher = mapper.selectByPrimaryKey(id);
        return teacher;
    }

    @Override
    public void update(Teacher teacher) {
        mapper.updateByPrimaryKeySelective(teacher);
    }

    public TeacherExample getExample(Teacher teacher){
        TeacherExample example = new TeacherExample();
        TeacherExample.Criteria criteria = example.createCriteria();
        if(!StringUtils.isEmpty(teacher.getName())){
            criteria.andNameLike("%"+teacher.getName()+"%");
        }
        if(!StringUtils.isEmpty(teacher.getGender())){
            criteria.andGenderEqualTo(teacher.getGender());
        }
        return example;
    }
}
