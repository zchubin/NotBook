<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="java.sql.*" %>--%>
<html>
<head>
    <title>浏览商品</title>
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
            <td><a class="menu-a color-a bg-color" href="lookgoods.jsp">浏览商品</a></td>
            <td><a class="menu-a" href="searchgoods.jsp">查询商品</a></td>
            <td><a class="menu-a" href="lookShoppingCar.jsp">查看购物车</a></td>
            <td><a class="menu-a" href="lookOrderForm.jsp">查看订单</a></td>
        </tr>
    </table>
    <div class="float-clear red-border min-width"></div>

    <center>
<%--        <%--%>
<%--            try{--%>
<%--                Class.forName("com.mysql.jdbc.Driver");--%>
<%--             }catch (Exception e){}--%>
<%--            String uri="jdbc:mysql://127.0.0.1/shop?"+"user=root&password=&characterEncoding=utf-8";--%>
<%--            con=DriverManager.getConnection(uri);--%>
<%--            Connection con;--%>
<%--            Statement sql;--%>
<%--            ResultSet rs;--%>
<%--            try{--%>
<%--                con=DriverManager.getConnection(uri);--%>
<%--                sql=con.createStatement();--%>
<%--                rs=aql.executeQuery("SELECT * FROM **");--%>
<%--                out.print("<select name='fenleiNumber'>");--%>
<%--                out.print("<form class="min-width form-box red-border" action='queryServlet' method='post'" );--%>
<%--                while (rs.next()){--%>
<%--                    int id=rs.getInt(1);--%>
<%--                    String name=rs.getString(2);--%>
<%--                    out.print("<option class="name-box" value=" +id+ ">" +name+ "</option>");--%>
<%--                }--%>
<%--                out.print("</select>");--%>
<%--                out.print("<input class="red-border tex-box" type='submit' value='提交'/");--%>
<%--                out.print("</form>");--%>
<%--            }catch (SQLException e){--%>
<%--                out.print(e);--%>
<%--            }--%>
<%--        %>--%>
    </center>
    <br/><br/><br/>
    <%@include file="byPageShow.jsp"%>
    <br/><br/><br/>
    <footer>
        <%@include file="02footer.jsp"%>
    </footer>

    <%@include file="03boderbox.txt"%>

</center>
</body>
</html>
