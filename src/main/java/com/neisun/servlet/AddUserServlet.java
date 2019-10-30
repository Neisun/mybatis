package com.neisun.servlet;

import com.neisun.dao.UsersDao;
import com.neisun.entity.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/addUser")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 从param中拿到user的数据
        String name = request.getParameter("name");
        String userpass = request.getParameter("userpass");
        String nickname = request.getParameter("nickname");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String userStatus = request.getParameter("userStatus");
        String remark = request.getParameter("remark");
        Users user = new Users(name,userpass,nickname,Integer.parseInt(age),gender,phone,email,new Date(),new Date(),new Date(),Integer.parseInt(userStatus),remark);
        // 将数据填充到实体中
//        user.setName(name);
//        user.setUserpass(userpass);
//        user.setNickname(nickname);
//        user.setAge(Integer.parseInt(age));
//        user.setGender(gender);
//        user.setPhone(phone);
//        user.setEmail(email);
//        user.setCreateTime(new Date());
//        user.setUpdateTime(new Date());
//        user.setLastLogin(new Date());
//        user.setUserStatus(Integer.parseInt(userStatus));
//        user.setRemark(remark);
        UsersDao usersDao = new UsersDao();
        usersDao.addUser(user);
        request.setAttribute("user",user);
        request.setCharacterEncoding("UTF-8");
        // 新增完成之后，转发到detail页面进行信息的展示，记得带上id的信息
        request.getRequestDispatcher("/detail?id="+user.getId()).forward(request,response);
    }
}
