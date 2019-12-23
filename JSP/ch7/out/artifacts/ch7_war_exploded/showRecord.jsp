<%--
  Created by IntelliJ IDEA.
  User: zou
  Date: 2019/11/19
  Time: 7:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="resultBean" class="mybean.data.Example7_2_Bean" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border=1>
    <%  String []columnName=resultBean.getColumnName();
    %>
    <tr>
        <%  for(String s:columnName) {
        %>    <th><%= s %></th>
        <%  }
        %>  </tr>
    <%  String [][] record = resultBean.getTableRecord();
        for(int i=0;i<record.length;i++) {
    %>    <tr>
    <%     for(int j=0;j<record[i].length;j++) {
    %>        <td><%= record[i][j] %> </td>
    <%     }
    %>    </tr>
    <%  }
    %>
</table>
</body>
</html>
