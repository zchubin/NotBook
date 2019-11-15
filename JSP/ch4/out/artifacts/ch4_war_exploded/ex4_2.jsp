<%@ page import="tom.jiafei.Circle" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/12
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="c1" class="tom.jiafei.Circle" scope="application"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>圆的半径 是：<jsp:getProperty name="c1" property="r"/></p>
<%
    double r=99;

%>
<jsp:setProperty name="c1" property="r"/>
<p>修改半径为：<%=r %></p>
<p>目前圆的半径是：<jsp:getProperty name="c1" property="r"/></p>
<p>圆的周长是：<%=c1.circlelength()%></p>
<p>圆的面积是：<%=c1.circleArea() %></p>
</body>
</html>
