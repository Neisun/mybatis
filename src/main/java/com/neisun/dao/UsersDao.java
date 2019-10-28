package com.neisun.dao;

import com.neisun.entity.Users;
import com.neisun.sqlSessionFactoryUtils.SqlSessionFactoryUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * 数据化持久层，用来操作数据
 */
public class UsersDao {
    // 获取到SqlSession
    private SqlSession sqlSession = SqlSessionFactoryUtil.getSqlSessionFactory().openSession();
    private List<Users> list;
    /**
     * 执行sql，查询出所有的数据
     * @return
     */
    public List<Users> findAll(){
        try {
            list = sqlSession.selectList("findAll");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return list;
    }
}
