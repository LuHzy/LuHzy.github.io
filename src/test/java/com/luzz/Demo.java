package com.luzz;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;


public class Demo {


    @Test
    public void t1() throws Exception{

            Properties properties = new Properties();
            properties.setProperty("mail.host","smtp.qq.com");
            properties.setProperty("mail.transport.protocol","smtp");

            Session session = Session.getInstance(properties);

            MimeMessage message = new MimeMessage(session);

            //设置发件人
            message.setFrom(new InternetAddress("2062635701@qq.com"));

            message.setSubject("测试邮件功能");

            message.setText("验证码：11");

            message.setRecipients(Message.RecipientType.TO,"746049950@qq.com");


            //获取邮件发送的API
            Transport transport = session.getTransport();

            transport.connect("smtp.qq.com","2062635701@qq.com","brmbipbnajeoecjg");

            //发送邮件
            transport.sendMessage(message,message.getAllRecipients());

            transport.close();


            }

    }

