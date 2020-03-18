package com.kk.controller;

import com.kk.entity.Book;
import com.kk.service.BookService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Book)表控制层
 *
 * @author makejava
 * @since 2020-03-18 16:51:10
 */
@RestController
@RequestMapping("book")
public class BookController {
    /**
     * 服务对象
     */
    @Resource
    private BookService bookService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Book selectOne(String id) {
        return this.bookService.queryById(id);
    }

}