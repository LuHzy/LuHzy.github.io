package com.luzz.mapper;

import com.luzz.pojo.Student;
import com.luzz.pojo.StudentExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface StudentMapper {
    long countByExample(StudentExample example);

    int deleteByExample(StudentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    List<Student> selectByExample(StudentExample example);

    Student selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByExample(@Param("record") Student record, @Param("example") StudentExample example);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);


    @Select("select COUNT(1) from student where classId IN (select id from classes where endDate is null)")
    Integer countStudentAtSchool();


}