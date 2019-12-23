<%--
  Created by IntelliJ IDEA.
  User: zou
  Date: 2019/11/19
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="insertBySetServlet?dataBase=warehouse&tableName=product" method=post>
    <b>添加新记录:<br>
        产品号：<input type="text" name="number" size=20>
        <br>名称：<input type="text" name="name" size=22>
        <br>生产日期(日期必须用-或/格式)：
        <br><input type="text" name="madeTime" size=18>
        <br>价格：<input type="text" name="price" size=12>
        <br><input type="submit" name="b" value="提交">
</body>
</html>
