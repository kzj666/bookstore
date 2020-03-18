package com.kk.controller;

/*
@author kzj
@date 2020/3/17 - 19:50
*/

import com.kk.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @GetMapping({"login","/"})
    public String login(){
        return "login";
    }

    @PostMapping("tologin")
    public String tologin(User user, Model model){
        String username = user.getUsername();
        String password = user.getPassword();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        Subject subject = SecurityUtils.getSubject();
        try{
            subject.login(token);
            //login认证通过后，便可拿到shiro保存的用户对象
            User user1 = (User)subject.getPrincipal();
            subject.getSession().setAttribute("user", user1);
            return "redirect:/index";
        }catch (UnknownAccountException e) {
            model.addAttribute("msg","用户名错误");
            return "login";
        } catch (IncorrectCredentialsException e) {
            model.addAttribute("msg","密码错误");
            return "login";
        }
    }

    @GetMapping("index")
    public String toindex(){
        return "index";
    }

    @GetMapping("/noauth")
    public String noauth(){
        return "noauth";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "login";
    }

}
