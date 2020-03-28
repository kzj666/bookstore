package com.kk.dao;

import com.kk.entity.Book;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * (Book)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-22 23:36:11
 */
public interface BookDao {

    /**
     * 查询所有书籍
     * @return 返回书籍列表
     */
    @Select("select * from book")
    List<Book> queryList();

    /**
     * 根据类别查书籍
     * @param kind 书籍类别
     * @return 返回书籍列表
     */
    List<Book> queryByKind(@Param("kind") String kind);

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Book queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Book> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param book 实例对象
     * @return 对象列表
     */
    List<Book> queryAll(Book book);

    /**
     * 新增数据
     *
     * @param book 实例对象
     * @return 影响行数
     */
    int insert(Book book);

    /**
     * 修改数据
     *
     * @param book 实例对象
     * @return 影响行数
     */
    int update(Book book);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}