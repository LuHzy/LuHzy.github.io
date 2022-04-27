package com.luzz.service.impl;

import com.luzz.mapper.ClassesMapper;
import com.luzz.mapper.StudentMapper;
import com.luzz.mapper.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CountService {

    @Autowired
    ClassesMapper classesMapper;

    @Autowired
    StudentMapper studentMapper;

    @Autowired
    TeacherMapper teacherMapper;

    public Map<String,Integer> count(){
        Map<String,Integer> map = new HashMap<>();
        Long countStudent = studentMapper.countByExample(null);
        Long countTeacher = teacherMapper.countByExample(null);
        Integer countAll = countStudent.intValue()+countTeacher.intValue();
        Long countClass = classesMapper.countByExample(null);
        Integer studentAtSchool = studentMapper.countStudentAtSchool();

        map.put("countStudent",countStudent.intValue());
        map.put("countTeacher",countTeacher.intValue());
        map.put("countAll",countAll);
        map.put("countClass",countClass.intValue());
        map.put("studentAtSchool",studentAtSchool);

        return map;
    }
}

