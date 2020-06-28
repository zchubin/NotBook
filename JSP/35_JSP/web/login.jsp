<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="loginBean" class="mybean.date.Login" scope="session" />

<html>
<head>
    <title>登录页面</title>
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
            <td><a class="menu-a" href="index.jsp">主  页</a></td>
            <td><a class="menu-a" href="lookgoods.jsp">浏览商品</a></td>
            <td><a class="menu-a" href="searchgoods.jsp">查询商品</a></td>
            <td><a class="menu-a" href="lookShoppingCar.jsp">查看购物车</a></td>
            <td><a class="menu-a" href="lookOrderForm.jsp">查看订单</a></td>
        </tr>
    </table>
    <div class="float-clear red-border min-width"></div>

    <center>
        <br/><br/>
        <table>登  录
            <tr class="tr-box">
                <th style="text-align: center"></th>
            </tr>
            <form class="min-width form-box red-border">
                <tr class="tr-box">
                    <td class="name-box">登录名称：</td>
                    <td><input class="red-border tex-box" type="text" name="loginBean"/></td>
                </tr>
                <tr class="tr-box">
                    <td class="name-box">输入密码：</td>
                    <td><input class="red-border tex-box" type="password" name="password"/></td>
                </tr>
                <br/>
                <tr class="tr-box">
                    <th><input class="tex-box submit-login bg-color float-right color-a" type="submit" name="g" value="提交" /></th>
                </tr>
            </form>
        </table>
        <br/><br/>
        <div class="min-width form-box red-border">
            <tr  class="tr-box">
                <a class="name-box">登录反馈信息：</a>
                <a class="tex-box">
                    <jsp:getProperty name="loginBean" property="backNews"/>
                </a>
                <br/>
                <a class="name-box">登录姓名：</a>
                <a class="tex-box">
                     <jsp:getProperty name="loginBean" property="logname"/>
                </a>
            </tr>
        </div>
        <br/><br/>
    </center>
    <br/><br/><br/><br/><br/><br/>
    <footer>
        <%@include file="02footer.jsp"%>
    </footer>

    <%@include file="03boderbox.txt"%>

</center>
</body>
</html>
