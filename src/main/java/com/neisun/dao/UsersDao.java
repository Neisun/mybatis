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
    private SqlSession sqlSession;
    private List<Users> list;
    private Users user;
    /**
     * 获取sqlSession的方法
     * @return
     */
    private SqlSession getSqlSession(){
        sqlSession = SqlSessionFactoryUtil.getSqlSessionFactory().openSession();
        return sqlSession;
    }
    /**
     * 执行sql，查询出所有的数据
     * 查找所有用户的数据
     * @return
     */
    public List<Users> findAll(){
        try {
            list = getSqlSession().selectList("findUser");
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return list;
    }

    /**
     * 根据id查找用户
     * @param id
     * @return
     */
    public Users findById(int id){
        try {
            user = getSqlSession().selectOne("findUser",new Users(id));
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return user;
    }
    public Users addUser(Users user){
        try {
            // 会有一个返回值，返回值是影响的行数
            getSqlSession().insert("addUser",user);
            // 提交，将数据保存到数据库中，实际上是对事务进行处理
            sqlSession.commit();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            sqlSession.close();
        }
        return user;
    }
}
