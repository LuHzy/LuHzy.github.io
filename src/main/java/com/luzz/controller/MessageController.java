package com.luzz.controller;

import com.github.pagehelper.PageInfo;
import com.luzz.pojo.Message;
import com.luzz.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/message")
public class MessageController {

    @Autowired
    MessageService messageService;

    @PostMapping("save")
    public boolean save(Message message){
        try {
            messageService.save(message);
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    @GetMapping("getMessage")
    public List<Message> getMessage(){
        PageInfo<Message> message = messageService.findMessage();
        return message.getList();
    }
}
