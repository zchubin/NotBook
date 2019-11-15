<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/12
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="s1" class="tom.jiafei.Student" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<font size=3>
    <jsp:setProperty name="s1" property="name" value="张三"/>
    <b> 学生姓名：<jsp:getProperty name="s1" property="name"/></b>
    <jsp:setProperty name="s1" property="height" value="<%=1.78%>"/>
    <br><b> 学生身高：<jsp:getProperty name="s1" property="height"/>米</b>
</font>
</body>
</html>
