package com.kk.service;

import com.kk.entity.Book;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (Book)表服务接口
 *
 * @author makejava
 * @since 2020-03-22 21:07:20
 */
public interface BookService {


    /**
     * 查询所有书籍
     * @return 返回书籍列表
     */
    List<Book> queryList();

    /**
     * 根据类别查书籍
     * @param kind 书籍类别
     * @return 返回书籍列表
     */
    List<Book> queryByKind(String kind);


    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Book queryById(String id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Book> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param book 实例对象
     * @return 实例对象
     */
    Book insert(Book book);

    /**
     * 修改数据
     *
     * @param book 实例对象
     * @return 实例对象
     */
    Book update(Book book);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}