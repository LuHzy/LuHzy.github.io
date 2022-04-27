package com.luzz.service;

import com.luzz.pojo.User;

public interface UserService {

    User login(User user);

    Integer sendEmial(String email);

    Boolean findUserName(String username);

    Boolean register(User user);

    Boolean findEmail(String email);
}
