<%--
  Created by IntelliJ IDEA.
  User: zou
  Date: 2019/11/19
  Time: 6:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="insertServlet?dataBase=warehouse&tableName=product" method=post>
    添加新记录:
    <table border=1>
        <tr><td> 产品号：</td><td><Input type="text" name="number"></td></tr>
        <tr><td>名称：</td><td><Input type="text" name="name"></td></tr>
        <tr><td>生产日期：</td><td><Input type="text" name="madeTime"></td></tr>
        <tr><td>价格：</td><td><Input type="text" name="price"></td></tr>
    </table>
    <br><input type="submit" name="b" value="提交">
</body>
</html>
