package com.neisun.servlet;

import com.neisun.dao.UsersDao;
import com.neisun.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 创建一个servlet，用来将dao层的操作返回给页面
 */
@WebServlet("/index")
public class UserServlet extends HttpServlet {
    private List<Users> usersList;
    private UsersDao usersDao = new UsersDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取到数据
        usersList = usersDao.findAll();
        // 将数据存储到request中
        request.setAttribute("userlist",usersList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
