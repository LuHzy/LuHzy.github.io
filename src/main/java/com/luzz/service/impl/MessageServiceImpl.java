package com.luzz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.luzz.mapper.MessageMapper;
import com.luzz.pojo.Message;
import com.luzz.pojo.MessageExample;
import com.luzz.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    MessageMapper messageMapper;

    @Override
    public void save(Message message) {
        message.setCreateDate(new Date());
        messageMapper.insertSelective(message);
    }

    @Override
    public PageInfo<Message> findMessage() {
        PageHelper.startPage(1,6);
        MessageExample example = new MessageExample();
        example.setOrderByClause("createDate desc");
        List<Message> messageList = messageMapper.selectByExample(example);
        PageInfo<Message> pageInfo = new PageInfo<>(messageList);

        return pageInfo;
    }
}
