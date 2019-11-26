<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/11/26
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<font size=2>

        <%
     String number= request.getParameter("number");
     if(number!=null)
     {
 %>
    <b><br>用户在example5_6.jsp输入的非负数是<%=number%>
        <%
           }
           else
               {
                   out.print("输入的是负数");
               }
        %>
    </font>
</body>
</html>
