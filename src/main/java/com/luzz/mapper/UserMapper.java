package com.luzz.mapper;

import com.luzz.pojo.User;
import com.luzz.pojo.UserExample;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    long countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    @Select("select * from user where username = #{username}")
    User selectByUserName(String username);

    @Select("select * from user where email = #{email}")
    User selectByEmail(String email);

    @Select("select * from user where username=#{username} and password = #{password}")
    User login(User user);
}