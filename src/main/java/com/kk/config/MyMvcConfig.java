package com.kk.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyMvcConfig implements WebMvcConfigurer {

   // 文件保存在真实物理路径/upload/下（即项目的物理地址下：F:/IDEA_Project_Location/自己/bookstore/upload/3月）
   // 访问的时候使用虚路径/upload，比如文件名为1.png，就直接/upload/1.png就ok了。
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
       //将物理地址upload下的文件映射到/upload下
       //访问的时候就直接访问http://localhost:9000/upload/文件名
       registry.addResourceHandler("/upload/**")
          .addResourceLocations("file:"+System.getProperty("user.dir")+"/upload/");
  }
}