package com.neisun.servlet;

import com.neisun.dao.UsersDao;
import com.neisun.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/detail")
public class FindById extends HttpServlet {
    UsersDao usersDao = new UsersDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取到id
        String id = request.getParameter("id");
        // 传入id，并执行方法
        Users user = usersDao.findById(Integer.parseInt(id));
        // 传入request作用域
        request.setAttribute("user",user);
        request.getRequestDispatcher("detail.jsp").forward(request,response);
    }
}
