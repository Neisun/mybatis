package com.neisun.listener;

import com.neisun.sqlSessionFactoryUtils.SqlSessionFactoryUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * 监听器，用来监听ServletContext，
 * 在初始化阶段，我们初始化SqlSessionFactory
 * 在销毁阶段，关闭掉SqlSession
 */
@WebListener
public class SqlSessionFactoryListener implements ServletContextListener {
    /**
     * 初始化阶段
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("初始化了。。");
        SqlSessionFactoryUtil.init();
    }

    /**
     * 销毁阶段
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("销毁了。。");
        SqlSessionFactoryUtil.close();
    }
}
