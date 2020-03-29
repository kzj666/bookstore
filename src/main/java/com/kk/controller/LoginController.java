package com.kk.controller;

/*
@author kzj
@date 2020/3/17 - 19:50
*/

import com.kk.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

    @GetMapping({"login", "/"})
    public String login() {
        return "login";
    }

    @PostMapping("tologin")
    public String tologin(User user, Model model) {
        String username = user.getUsername();
        String password = user.getPassword();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            //login认证通过后，便可拿到shiro保存的用户对象
            User user1 = (User) subject.getPrincipal();
            subject.getSession().setAttribute("user", user1);
            return "redirect:/index";

        } catch (UnknownAccountException e) {
            model.addAttribute("msg", "用户名错误");
            return "login";
        } catch (IncorrectCredentialsException e) {
            model.addAttribute("msg", "密码错误");
            return "login";
        } catch (ExcessiveAttemptsException e) {
            model.addAttribute("msg", "登录失败次数过多");
            return "login";
        } catch (LockedAccountException e) {
            model.addAttribute("msg", "帐号已被锁定. The account for username " + token.getPrincipal() + " was locked.");
            return "login";
        } catch (DisabledAccountException e) {
            model.addAttribute("msg", "帐号已被禁用. The account for username " + token.getPrincipal() + " was disabled.");
            return "login";
        } catch (ExpiredCredentialsException e) {
            model.addAttribute("msg", "帐号已过期. the account for username " + token.getPrincipal() + "  was expired.");
            return "login";
        } catch (UnauthorizedException e) {
            model.addAttribute("msg", "您没有得到相应的授权！" + e.getMessage());
            return "login";
        }
    }

    @GetMapping("index")
    public String toindex() {
        return "index";
    }

    @GetMapping("/noauth")
    public String noauth() {
        return "noauth";
    }

    @GetMapping("welcome")
    public String welcome(){
        return "welcome";
    }

}
