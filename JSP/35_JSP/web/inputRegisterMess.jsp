<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mybean.data.*" %>

<%--<jsp:useBean id="useBean" class="mybean.data.Register" scope="request" />--%>

<html>
<head>
    <title>注册页面</title>
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
                    <form class="min-width form-box red-border">
                        <table>注  册
                            <tr class="tr-box">
                                <td class="name-box"><a class="color-b">*</a>用户名称：</td>
                                <td><input class="red-border tex-box" type="text" name="logname" placeholder="     字母、数字、下划线构成" /></td>
                            </tr>
                            <tr class="tr-box">
                                <td class="name-box"><a class="color-b">*</a>用户密码：</td>
                                <td><input class="red-border tex-box" type="text" name="password" placeholder="    请输入密码" /></td>
                                <td class="name-box"><a class="color-b">*</a>确认密码：</td>
                                <td><input class="red-border tex-box" type="text" name="again_password" placeholder="    请输确认密码" /></td>
                            </tr>
                            <tr class="tr-box">
                                <td class="name-box">联系电话：</td>
                                <td><input class="red-border tex-box" type="text" name="phone"/></td>
                                <td class="name-box">邮寄地址：</td>
                                <td><input class="red-border tex-box" type="text" name="address"/></td>
                                <td class="name-box">真实姓名：</td>
                                <td><input class="red-border tex-box" type="text" name="realname"/></td>
                            </tr>
                            <br/>
                            <td><a class="color-b">*</a><a style="font-size: 11px;color: gray;">注释的项目必须填写</a></tr>
                            <br/>
                            <tr class="tr-box float-left">
                                <th><input class="tex-box submit-input red-border bg-color float-clear color-a" type="submit" name="g" value="提交" /></th>
                            </tr>
                        </table>
                    </form>
                    <br/><br/><br/>
                    <div class="min-width">
                        <p class="tr-box name-box color-b">注册反馈：</p>
<%--                        <jsp:getProperty name="useBean" property="backNews"/>--%>
                        <table>
                            <tr class="tr-box">
                                <td class="name-box">会员名称：</td>
                                <td class="red-border tex-box">
<%--                                    <jsp:getProperty name="useBean" property="logname"/>--%>
                                </td>
                            </tr>
                            <tr class="tr-box">
                                <td class="name-box">姓名：</td>
                                <td class="red-border tex-box">
<%--                                    <jsp:getProperty name="useBean" property="realname"/>--%>
                                </td>
                            </tr>
                            <tr class="tr-box">
                                <td class="name-box">地址：</td>
                                <td class="red-border tex-box">
<%--                                    <jsp:getProperty name="useBean" property="address"/>--%>
                                </td>
                            </tr>
                            <tr class="tr-box">
                                <td class="name-box">电话：</td>
                                <td class="red-border tex-box">
<%--                                    <jsp:getProperty name="useBean" property="phone"/>--%>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <br/>
                </center>

        <footer>
            <%@include file="02footer.jsp"%>
        </footer>

        <%@include file="03boderbox.txt"%>
    
    </center>
</body>
</html>