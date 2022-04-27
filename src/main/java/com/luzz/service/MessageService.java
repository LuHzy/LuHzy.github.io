package com.luzz.service;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Message;

public interface MessageService {

    void save(Message message);


    PageInfo<Message> findMessage();
}
