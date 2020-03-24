package com.kk.config;

/*
@author kzj
@date 2020/3/18 - 17:38
*/

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;

@Configuration
public class ShiroConfig {

    private static final Logger logger = LoggerFactory.getLogger(ShiroConfig.class);


    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(DefaultWebSecurityManager securityManager) {
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

        // 配置不会被拦截的链接 顺序判断
        filtermap.put("/*/*.js", "anon");
        filtermap.put("/*/*.css", "anon");
        filtermap.put("*.html", "anon");
        filtermap.put("/tologin", "anon");
        filtermap.put("/login", "anon");
        filtermap.put("/index", "authc");
        // 配置退出过滤器,其中的具体的退出代码Shiro已经替我们实现了
        filtermap.put("/logout", "logout");


        //拦截所有请求，一般放最后面
        filtermap.put("/**", "authc");


        bean.setFilterChainDefinitionMap(filtermap);


        //设置登录要跳转的链接
        //如果不设置默认会自动寻找Web工程根目录下的"/login.jsp"页面
        bean.setLoginUrl("/login");
        //设置成功后要跳转的链接
        bean.setSuccessUrl("/index");
        //设置未授权页面
        bean.setUnauthorizedUrl("/noauth");


        return bean;

    }

    @Bean
    public DefaultWebSecurityManager securityManager(MyRealm myRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(myRealm);
        return securityManager;
    }

    @Bean
    public MyRealm myRealm() {
        return new MyRealm();
    }

    /**
     * 整合shiroDialect：用来整合shiro和thymeleaf
     *
     * @return
     */
    @Bean
    public ShiroDialect getShiroDialect() {
        return new ShiroDialect();
    }

    /**
     * 开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证
     * 配置以下两个bean(DefaultAdvisorAutoProxyCreator和AuthorizationAttributeSourceAdvisor)即可实现此功能
     * @return
     */
    @Bean
    public DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();
        advisorAutoProxyCreator.setProxyTargetClass(true);
        return advisorAutoProxyCreator;
    }

    /**
     * 开启aop注解支持
     * @param securityManager
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(DefaultWebSecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }
}
