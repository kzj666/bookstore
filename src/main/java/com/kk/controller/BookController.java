package com.kk.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kk.entity.Book;
import com.kk.service.BookService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Book)表控制层
 *
 * @author makejava
 * @since 2020-03-22 21:07:20
 */
@Controller
@RequestMapping("book")
public class BookController {
    /**
     * 服务对象
     */
    @Resource
    private BookService bookService;


    @GetMapping("selectList")
    public String selectList(Model model, @RequestParam(value = "pn", defaultValue = "1") int pn, @RequestParam(value = "size", defaultValue = "10") int size){
        PageHelper.startPage(pn, size);
        List<Book> books = bookService.queryList();
        PageInfo<Book> page = new PageInfo<>(books);
        model.addAttribute("page",page);
        return "book/book-list";
    }


    /**
     * 点击[添加]，跳转到book-add页面
     *
     * @return return前不可以加/
     */
    @GetMapping("to-book-add")
    public String toBookAdd() {
        return "book/book-add";
    }

    /**
     *
     * @param book
     * @return
     */
    @PostMapping("add")
    public String add(Book book) {
        bookService.insert(book);
        return "redirect:/book/selectList";
    }

    /**
     * 根据id删除用户，然后再次发送查询的请求
     *
     * @param id
     * @return
     */
    @GetMapping("deleteById")
    public String deleteById(Integer id) {
        bookService.deleteById(id);
        return "redirect:/book/selectList";
    }


    /**
     * 点击编辑，book-edit页面
     *
     * @return
     */
    @GetMapping("to-book-edit/{id}")
    public String toAdminEdit(@PathVariable("id") Integer id, Model model) {
        Book editbook = bookService.queryById(id);
        model.addAttribute("editbook", editbook);
        return "book/book-edit";
    }

    @PostMapping("update")
    public String update(Book book) {
        bookService.update(book);
        return "redirect:/book/selectList";
    }

    @GetMapping("toSearchList/{kind}")
    public String toSearchList(@PathVariable("kind") String kind, Model model,@RequestParam(value = "pn", defaultValue = "1") int pn, @RequestParam(value = "size", defaultValue = "5") int size){
        //去掉空格
        String skind = StringUtils.deleteWhitespace(kind);
        PageHelper.startPage(pn, size);
        List<Book> books = bookService.queryByKind(kind);
        PageInfo<Book> page = new PageInfo<>(books);
        model.addAttribute("page",page);
        return "book/book-list";
    }


    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Book selectOne(Integer id) {
        return this.bookService.queryById(id);
    }


}