package cn.hjkilo.controller;


import cn.hjkilo.pojo.User;
import cn.hjkilo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequestMapping("/")
public class UserAction {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/reg", method = RequestMethod.POST)
    public  String reg(String username,String password){

        User user = new User();

        user.setUsername(username);
        user.setUserpassword(password);

        userService.regist(user);

        JOptionPane.showMessageDialog(null, "注册成功！快去登录吧", "消息", JOptionPane.INFORMATION_MESSAGE);

         return "login";
    }

    @RequestMapping(value = "/usernamecheck",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
    public  User reg(String username){
        System.out.println( "adduser:"+username);

        User u = userService.isuser(username);

        return u;
    }

    @RequestMapping("/login")
    public String login(String username, String password, HttpServletRequest request) {

        System.out.println("user login" + username + password);

        if (userService.login(username, password)!=null) {

            User userinfo = new User();
            userinfo.setUsername(username);
            userinfo.setUserpassword(password);

            HttpSession session = request.getSession();

            session.setAttribute("userinfo",userinfo );
            return "welcome";
        }
        else {
            String loginner = "用户名或密码错误，请重试";
            HttpSession session = request.getSession();
            session.setAttribute("loginner",loginner);
           return "login";
        }
    }
    @RequestMapping("/signOut")
    public String signOut(HttpServletRequest request){

        HttpSession session = request.getSession();
        session.setAttribute("userInfo",null);
        session.setAttribute("loginner",null);

     return "login";

    }

}

