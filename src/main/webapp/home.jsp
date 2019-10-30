<%--
  Created by IntelliJ IDEA.
  User: hunaisong
  Date: 2019/10/27
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>home</title>
</head>
<body>
<%
    String test = "test";
    response.sendRedirect(request.getContextPath()+"/index");
%>
<%= test%>
</body>
</html>
