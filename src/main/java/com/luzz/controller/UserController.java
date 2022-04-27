package com.luzz.controller;

import com.luzz.pojo.User;
import com.luzz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping("login")
    public @ResponseBody Boolean login(User user, HttpServletRequest request) {
        User u = userService.login(user);
        if(u!=null){
            HttpSession session = request.getSession();
            session.setAttribute("user",u);
            return true;
        }else {
            return false;
        }
    }


    @GetMapping("sendEmail")
    public @ResponseBody
    Boolean sendEmail(String email, HttpServletRequest request) {
        Integer code = userService.sendEmial(email);
        if (code == null) {
            return false;
        }
        request.getSession().setAttribute(email + "emailCode", code);

        return true;
    }


    @GetMapping("verCode")
    public @ResponseBody
    Boolean verCode(String email, String code, HttpServletRequest request) {
        Integer e_code = (Integer) request.getSession().getAttribute(email + "emailCode");
        if(e_code==null){
            return false;
        }
        int newCode = Integer.parseInt(code);
        System.out.println(e_code+code);
        if (e_code==newCode) {
            return true;
        } else {
            return false;
        }
    }

    @GetMapping("findUserName")
    public @ResponseBody Boolean findUserName(String username){
        return userService.findUserName(username);
    }


    @PostMapping("register")
    public @ResponseBody Boolean register(User user,HttpServletRequest request){
        Boolean b = userService.register(user);
        if(b){
            String email = user.getEmail();
            HttpSession session = request.getSession();
            session.removeAttribute(email+"emailCode");
        }
        return b;
    }

    @GetMapping("findEmail")
    public @ResponseBody Boolean findEmail(String email){
        return userService.findEmail(email);
    }


    @GetMapping("logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "redirect:/login.jsp";
    }
}
