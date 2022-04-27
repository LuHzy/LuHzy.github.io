package com.luzz.commons;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;
import java.util.UUID;

public class Utils {
    public static String randUID(){

        return UUID.randomUUID().toString().replace("-","").substring(0,8);
    }

    public static Integer randCode(){
        Random random = new Random();
        int code = random.nextInt(9999);
        if(code < 1000){
            code = code + 1000;
        }
        return code;
    }

    public static Integer sendEmail(String email){
        try {
            Properties properties = new Properties();
            properties.setProperty("mail.host","smtp.qq.com");
            properties.setProperty("mail.transport.protocol","smtp");

            Session session = Session.getInstance(properties);
            // message
            MimeMessage message = new MimeMessage(session);

            // 设置发件人
            message.setFrom(new InternetAddress("2062635701@qq.com"));

            message.setSubject("XX系统的注册激活");

            Integer code = randCode();

//            message.setText("您的激活码为：" + code);
            message.setContent("您的激活码为：<font color='red'>" + code +"</font>","text/html;charset=UTF-8");

            message.setRecipients(Message.RecipientType.TO,email);

            //获取邮件发送的api
            Transport transport = session.getTransport();
            //邮件发送者的服务器地址，你的发送账号，授权码
            transport.connect("smtp.qq.com","2062635701@qq.com","brmbipbnajeoecjg");

            // 发送邮件
            transport.sendMessage(message,message.getAllRecipients());

            transport.close();
            return code;
        } catch (MessagingException e) {
            throw  new RuntimeException("邮件发送失败！");
        }
    }

    public static void main(String[] args) {
        sendEmail("2062635701@qq.com");
    }
}
