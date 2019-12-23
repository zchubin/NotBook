<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="queryAllServlet" method=post>
    <b>数据库:<input type="text" name="dataBase" size=22 value =warehouse>
        <br>表名：<input type="text" name="tableName" size=23 value=product>
        <br>用户名(默认root)：<input type="text" name="user" size=10 value=root>
        <br>用户密码(默认空)：<input type="text" name="password" size=10>
        <br><input type="submit" name="b" value="提交">
    </b>
</form>
</body>
</html>