package com.kk.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kk.entity.User;
import com.kk.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (User)表控制层
 *
 * @author makejava
 * @since 2020-03-18 16:51:11
 */
@Controller
@RequestMapping("user")
public class UserController {
    /**
     * 服务对象
     */
    @Resource
    private UserService userService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public User selectOne(Integer id) {
        return this.userService.queryById(id);
    }

    /**
     * 点击[管理员列表]，查出所有管理员列表，并跳转到admin-list页面显示，
     * @param model
     * @param pn
     * @param size
     * @return
     */
    @GetMapping("selectList")
    public String selectList(Model model, @RequestParam(value = "pn", defaultValue = "1") int pn, @RequestParam(value = "size", defaultValue = "5") int size) {
        PageHelper.startPage(pn, size);
        List<User> users = userService.queryList();
        PageInfo<User> page = new PageInfo<>(users);
        model.addAttribute("users", users);
        model.addAttribute("page", page);
//        return "users";
        return "user/admin-list";
    }

    /**
     * 根据id删除用户，然后再次发送查询的请求
     * @param id
     * @return
     */
    @GetMapping("deleteById/{id}")
    public String deleteById(@PathVariable("id") Integer id){
        userService.deleteById(id);
        return "redirect:/user/selectList";
    }

    /**
     * 点击[添加]，跳转到admin-add页面
     * @return return前不可以加/
     */
    @GetMapping("to-admin-add")
    public String toAdminAdd(){
        return "user/admin-add";
    }

    /**
     * 点击编辑，跳转到admin-edit页面
     * @return
     */
    @GetMapping("to-admin-edit/{id}")
    public String toAdminEdit(@PathVariable("id") Integer id, Model model){
        User edituser = userService.queryById(id);
        model.addAttribute("edituser",edituser);
        return "user/admin-edit";
    }
    @GetMapping("to-admin-edit")
    public String toAdminEdit( Model model){
        User user = new User();
        user.setUsername("yy");
        user.setEmail("k2422342@qq.com");
        user.setPassword("7777777");
        user.setPerm("C");
        user.setPhone("13531174771");
        user.setSex("f");
        user.setRole("sb");
        model.addAttribute("edituser",user);
        return "user/admin-edit";
    }

    /**
     *
     * @param user
     * @return
     */
    @PostMapping("add")
    public String add(User user){
        userService.insert(user);
        return "redirect:/user/selectList";
    }

    @PostMapping("update")
    public String update(User user){
        userService.update(user);
        return "redirect:/user/selectList";
    }

}