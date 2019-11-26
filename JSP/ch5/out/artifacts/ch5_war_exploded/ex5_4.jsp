<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/26
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="sumORproduct" method=post>
    输入数字，用逗号分隔提交给servlet(post方式)：
    <br><input type=text name="number">
    <input type=submit value="提交">
</form>
<form action="sumORproduct" method=get>
    输入数字，用逗号分隔提交给servlet(get方式)：
    <br><input type=text name="number">
    <input type=submit value="提交">
</form>
</body>
</html>
