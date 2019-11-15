<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/12
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="iPhone" class="tom.jiafei.Goods" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" Method="post" >
    手机名称:<input type=text name="name">
    <br>手机价格:<input type=text name="price">
    <br><input type=submit value="提交给本页面">
</form>

<%--<jsp:setProperty name="iPhone" property="name" param ="name" />--%>
<%--<jsp:setProperty name="iPhone" property="price" param ="price"/>--%>
<jsp:setProperty name="iPhone" property="*"  />
<br><b>名称：<jsp:getProperty name="iPhone" property="name"/>
    <br><b>价格：<jsp:getProperty name="iPhone" property="price"/>
</body>
</html>
