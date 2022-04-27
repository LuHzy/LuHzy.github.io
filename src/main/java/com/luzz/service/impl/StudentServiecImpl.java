package com.luzz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.luzz.mapper.StudentMapper;
import com.luzz.pojo.Classes;
import com.luzz.pojo.Student;
import com.luzz.pojo.StudentExample;
import com.luzz.service.ClassesService;
import com.luzz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class StudentServiecImpl implements StudentService {
    @Autowired
    StudentMapper mapper;

    @Autowired
    ClassesService classesService;
    @Override
    public List<Classes> findClassList() {
        List<Classes> classesList = classesService.getList();
        return classesList;
    }

    @Override
    public PageInfo<Student> finStudentList(Integer start,Integer size,Student student) {
        PageHelper.startPage(start,size);
        List<Student> studentList = mapper.selectByExample(getExample(student));
        PageInfo<Student> pageInfo = new PageInfo<>(studentList);
        return pageInfo;
    }

    @Override
    public void save(Student student) {
        mapper.insertSelective(student);
    }

    @Override
    public boolean remove(Integer id) {
        try {
            int i = mapper.deleteByPrimaryKey(id);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    @Override
    public Student findById(Integer id) {
        Student student = mapper.selectByPrimaryKey(id);
        return student;
    }

    @Override
    public void update(Student student) {
        mapper.updateByPrimaryKeySelective(student);
    }

   /* @Override
    public List<Student> list() {
        return mapper.selectByExample(null);
    }*/

    public StudentExample getExample(Student student){
        StudentExample example = new StudentExample();
        StudentExample.Criteria criteria = example.createCriteria();

        if(!StringUtils.isEmpty(student.getName())){
            criteria.andNameLike("%"+student.getName()+"%");
        }
        if(!StringUtils.isEmpty(student.getClassId())){
            criteria.andClassIdEqualTo(student.getClassId());
        }
        return example;
    }
}
