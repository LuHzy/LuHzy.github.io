package com.luzz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.luzz.mapper.ClassesMapper;
import com.luzz.pojo.Classes;
import com.luzz.pojo.ClassesExample;
import com.luzz.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.Date;
import java.util.List;

@Service
public class ClassesServiceImpl implements ClassesService {

    @Autowired
    private ClassesMapper mapper;

    @Override
    public void save(Classes classes) {
        if (classes.getOpen() == 1) {
            classes.setOpenDate(new Date());
        }
        mapper.insertSelective(classes);
    }

    @Override
    public void update(Classes classes) {
        if(classes.getOpen()==1){
            classes.setEndDate(new Date());
        }else {
            classes.setEndDate(null);
        }
        mapper.updateByPrimaryKey(classes);

    }

    @Override
    public void remove(Integer id) {
        mapper.deleteByPrimaryKey(id);
    }

    @Override
    public Classes findById(Integer id) {
        Classes classes = mapper.selectByPrimaryKey(id);
        return classes;
    }

    @Override
    public PageInfo<Classes> page(Integer start, Integer size, Classes classes) {
        PageHelper.startPage(start, size);
        List<Classes> classesList = mapper.selectByExample(getExample(classes));

        PageInfo<Classes> pageInfo = new PageInfo<>(classesList);
        return pageInfo;
    }

    @Override
    public List<Classes> getList() {
        Classes classes = new Classes();
        classes.setOpen(1);
        classes.setEndDate(null);
        ClassesExample example = getExample(classes);
        List<Classes> classesList = mapper.selectByExample(example);
        return classesList;
    }


    private ClassesExample getExample(Classes classes) {
        ClassesExample classesExample = new ClassesExample();
        ClassesExample.Criteria criteria = classesExample.createCriteria();
        if(!StringUtils.isEmpty(classes.getName())){
           criteria.andNameLike("%"+classes.getName()+"%");
        }
        if(!StringUtils.isEmpty(classes.getOpenDate())){
            criteria.andOpenDateEqualTo(classes.getOpenDate());
        }
        if(classes.getOpen()!=null){
            criteria.andOpenEqualTo(classes.getOpen());
        }
        if(classes.getEndDate()==null){
            criteria.andEndDateIsNull();
        }
        return classesExample;
    }


}
