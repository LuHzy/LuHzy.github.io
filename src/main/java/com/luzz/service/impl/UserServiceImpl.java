package com.luzz.service.impl;

import com.luzz.commons.Utils;
import com.luzz.mapper.UserMapper;
import com.luzz.pojo.User;
import com.luzz.pojo.UserExample;
import com.luzz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User login(User user) {
        String password = user.getPassword();
        String md5Pwd = DigestUtils.md5DigestAsHex(password.getBytes());
        user.setPassword(md5Pwd);
        return  userMapper.login(user);
    }

    @Override
    public Integer sendEmial(String email) {
        Integer code = Utils.sendEmail(email);
        return code;
    }

    @Override
    public Boolean findUserName(String username) {
        User user = userMapper.selectByUserName(username);
        if(user!=null){
            return false;
        }else {
            return true;
        }

    }

    @Override
    public Boolean register(User user) {

        String password = user.getPassword();
        String md5Pwd = DigestUtils.md5DigestAsHex(password.getBytes());
        user.setPassword(md5Pwd);
        int i = userMapper.insertSelective(user);
        return i>0;
    }

    @Override
    public Boolean findEmail(String email) {
        User user = userMapper.selectByEmail(email);
        if(user!=null){
            return false;
        }else {
            return true;
        }
    }


}
