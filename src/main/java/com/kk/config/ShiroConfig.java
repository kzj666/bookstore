package com.kk.config;

/*
@author kzj
@date 2020/3/18 - 17:38
*/

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;

@Configuration
public class ShiroConfig {

    private static final Logger logger = LoggerFactory.getLogger(ShiroConfig.class);


    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(DefaultWebSecurityManager securityManager){
        ShiroFilterFactoryBean bean = new ShiroFilterFactoryBean();
        bean.setSecurityManager(securityManager);
        /*
            anon：   无需认证就可以访问
            authc：  必须认证了才能访问
            user：   必须拥有 记住我 功能才能使用
            perms：  拥有某个资源的权限才能访问
            role：   拥有某个角色权限才能访问
        */
        //定义拦截链
        LinkedHashMap<String, String> filtermap = new LinkedHashMap<>();
        filtermap.put("/*/*.js", "anon");
        filtermap.put("/*/*.css", "anon");
        filtermap.put("/tologin", "anon");
        filtermap.put("/login","anon");

        filtermap.put("/index", "authc");
        bean.setFilterChainDefinitionMap(filtermap);

        return bean;

    }

    @Bean
    public DefaultWebSecurityManager securityManager(MyRealm myRealm){
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(myRealm);
        return  securityManager;
    }

    @Bean
    public MyRealm myRealm(){
        return  new MyRealm();
    }

    /**
     * 整合shiroDialect：用来整合shiro和thymeleaf
     * @return
     */
    @Bean
    public ShiroDialect getShiroDialect(){
        return new ShiroDialect();
    }

}
