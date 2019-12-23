<%--
  Created by IntelliJ IDEA.
  User: zou
  Date: 2019/11/19
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="preparedServlet" method=post>
    <b>输入主键number是<input type="text" name="number" size=10><br>
        的name,madeTime和price的更新值：<br>
        name:<input type="text" name="name" size=7><br>
        madeTime:<input type="text" name="madeTime" size=10><br>
        price:<input type="text" name="price" size=8><br>
        <input type="submit" name="b" value="提交">
</body>
</html>
