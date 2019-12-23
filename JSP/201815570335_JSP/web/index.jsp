<%--
  Created by IntelliJ IDEA.
  User: zhong
  Date: 2019/12/1
  Time: 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>广州市水果销售网</title>
    <link rel="stylesheet" type="text/css" href="./css/clear.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="icon" type="image/x-icon" class="js-site-favicon" href="./favicon.ico" />
</head>
<body>
    <center>
        <%@include file="01header.jsp"%>
        <table class="float-clear float-left">
            <tr>
                <td><div style="width: 120px;"></div></td>
                <td><a class="menu-a color-a bg-color" href="index.jsp">主  页</a></td>
                <td><a class="menu-a" href="lookgoods.jsp">浏览商品</a></td>
                <td><a class="menu-a" href="searchgoods.jsp">查询商品</a></td>
                <td><a class="menu-a" href="lookShoppingCar.jsp">查看购物车</a></td>
                <td><a class="menu-a" href="lookOrderForm.jsp">查看订单</a></td>
            </tr>
        </table>
        <div class="float-clear red-border min-width"></div>

        <img src="./img/welcome.jpg" id="static-img"/>

        <footer>
            <%@include file="02footer.jsp"%>
        </footer>

        <%@include file="03boderbox.txt"%>
    
    </center>
</body>
</html>