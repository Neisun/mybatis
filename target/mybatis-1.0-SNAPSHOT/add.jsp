<%--
  Created by IntelliJ IDEA.
  User: hunaisong
  Date: 2019/10/26
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>慕课网个人中心</title>
    <link rel="stylesheet" href="lib/css/bootstrap.min.css">
    <script src="lib/jquery-2.1.4/jquery.min.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>
                慕课网后台管理系统
                <small>用户数据管理中心</small>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="jumbotron">
            <h1>Mybatis基础入门课程！</h1>
            <p>通过一个项目来完成基础部分的学习</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">查看更多，请上慕课网</a></p>
            <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/index" role="button">返回首页</a></p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/addUser">
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">用户名称</label>
                    <div class="col-sm-10">
                        <%--<input type="text" value="${user.username}" class="form-control" id="username" placeholder="请输入用户名称">--%>
                        <input type="text" name="name" class="form-control" id="username" placeholder="请输入用户名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="userpass" class="col-sm-2 control-label">用户密码</label>
                    <div class="col-sm-10">
                        <input type="password" name="userpass" class="form-control" id="userpass" placeholder="请输入用户密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="nickname" class="col-sm-2 control-label">用户昵称</label>
                    <div class="col-sm-10">
                        <input name="nickname" type="text" class="form-control" id="nickname" placeholder="请输入用户昵称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">用户年龄</label>
                    <div class="col-sm-10">
                        <input name="age" type="text" class="form-control" id="age" placeholder="请输入年龄">
                    </div>
                </div>
                <div class="form-group">
                    <label for="gender" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input name="gender" type="text" class="form-control" id="gender" placeholder="请输入用户性别">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-10">
                        <input name="phone" type="text" class="form-control" id="phone" placeholder="请输入联系方式">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input name="email" type="text" class="form-control" id="email" placeholder="请输入邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="userStatus" class="col-sm-2 control-label">用户状态</label>
                    <div class="col-sm-10">
                        <input name="userStatus" type="text" class="form-control" id="userStatus" placeholder="请输入用户状态">
                    </div>
                </div>
                <div class="form-group">
                    <label for="remark" class="col-sm-2 control-label">备注</label>
                    <div class="col-sm-10">
                        <input name="remark" type="text" class="form-control" id="remark" placeholder="请输入备注">
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" value="提交" class="btn btn-primary">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
