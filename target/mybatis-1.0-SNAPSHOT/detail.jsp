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
    <c:set var="user" value="${user}"></c:set>
        <div class="row">
            <div class="col-md-10">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">用户名称</label>
                        <div class="col-sm-10">
                            <%--<input type="text" value="${user.username}" class="form-control" id="username" placeholder="请输入用户名称">--%>
                            <input type="text" value="${user.name}" class="form-control" id="username" placeholder="请输入用户名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户密码</label>
                        <div class="col-sm-10">
                            <p class="form-control-static">******</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nickname" class="col-sm-2 control-label">用户昵称</label>
                        <div class="col-sm-10">
                            <input value="${user.nickname}" type="text" class="form-control" id="nickname" placeholder="请输入用户昵称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="age" class="col-sm-2 control-label">用户年龄</label>
                        <div class="col-sm-10">
                            <input value="${user.age}" type="text" class="form-control" id="age" placeholder="请输入年龄">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gender" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input value="${user.gender}" type="text" class="form-control" id="gender" placeholder="请输入用户性别">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-sm-2 control-label">联系方式</label>
                        <div class="col-sm-10">
                            <input value="${user.phone}" type="text" class="form-control" id="phone" placeholder="请输入联系方式">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input value="${user.email}" type="text" class="form-control" id="email" placeholder="请输入邮箱">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">账号创建时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static"><fmt:formatDate  value="${user.createTime}" type="date" pattern="yyyy-MM-dd" /></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">账号更新时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static"><fmt:formatDate  value="${user.updateTime}" type="date" pattern="yyyy-MM-dd" /></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">账号最后登录时间</label>
                        <div class="col-sm-10">
                            <p class="form-control-static"><fmt:formatDate  value="${user.lastLogin}" type="date" pattern="yyyy-MM-dd" /></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户状态</label>
                        <div class="col-sm-10">
                            <c:if test="${user.userStatus == 0}">
                                <p class="form-control-static">正常</p>
                            </c:if>
                            <c:if test="${user.userStatus == 1}">
                                <p class="form-control-static">锁定</p>
                            </c:if>
                            <c:if test="${user.userStatus == 2}">
                                <p class="form-control-static">删除</p>
                            </c:if>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="remark" class="col-sm-2 control-label">备注</label>
                        <div class="col-sm-10">
                            <input value="${user.remark}" type="text" class="form-control" id="remark" placeholder="请输入备注">
                        </div>
                    </div>
                </form>
            </div>
        </div>
</div>
</body>
</html>
