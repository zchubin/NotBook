<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>--%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>查看订单</title>
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
            <td><a class="menu-a color-a bg-color" href="lookOrderForm.jsp">查看订单</a></td>
        </tr>
    </table>
    <div class="float-clear red-border min-width"></div>

    <%  if(loginBean==null){
        response.sendRedirect("login.jsp");
    }
    else {
        boolean b =loginBean.getLogname()==null||loginBean.getLogname().length()==0;
        if(b)
            response.sendRedirect("login.jsp");
    }
        Connection con;
        Statement sql;
        ResultSet rs;
        try{  Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e){}
        try {
            String uri= "jdbc:mysql://127.0.0.1/shop";
            String user="root";
            String password="";
            con=DriverManager.getConnection(uri,user,password);
            sql=con.createStatement();
            String cdn="SELECT id,mess,sum FROM orderform where logname= '"+loginBean.getLogname()+"'";
            rs=sql.executeQuery(cdn);
            out.print("<table>");
            out.print("<tr class='tr-box'>");
            out.print("<th class='name-box'>"+"订单号");
            out.print("<th class='name-box'>"+"信息");
            out.print("<th class='name-box'>"+"价格");
            out.print("</tr>");
            while(rs.next()){
                out.print("<tr class='tr-box'>");
                out.print("<td class='name-box'>"+rs.getString(1)+"</td>");
                out.print("<td class='name-box'>"+rs.getString(2)+"</td>");
                out.print("<td class='name-box'>"+rs.getString(3)+"</td>");
                out.print("</tr>") ;
            }
            out.print("</table>");
            con.close();
        }
        catch(SQLException e){
            out.print(e);
        }
    %>

    <footer>
        <%@include file="02footer.jsp"%>
    </footer>

    <%@include file="03boderbox.txt"%>

</center>
</body>
</html>
