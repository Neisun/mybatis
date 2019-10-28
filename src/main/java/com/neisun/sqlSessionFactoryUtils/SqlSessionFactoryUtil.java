package com.neisun.sqlSessionFactoryUtils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * 处理SqlSessionFactory的工具类
 */
public class SqlSessionFactoryUtil {
    private static final String RESOUCE = "mybatis-config.xml";
    private static SqlSessionFactory sqlSessionFactory;
    // 线程内部存储类
    private static ThreadLocal<SqlSession>  sqlSessionThreadLocal = new ThreadLocal<SqlSession>();

    /**
     * 初始化操作
     */
    public static void init(){
        try {
            InputStream is = Resources.getResourceAsStream(RESOUCE);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取SqlSessionFactory对象
     * @return
     */
    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }

    /**
     * 关闭sqlSession对象
     */
    public static void close(){
        SqlSession sqlSession = sqlSessionThreadLocal.get();
        if (sqlSession != null) {
            sqlSession.close();
            sqlSessionThreadLocal.set(null);
        }
    }

}
