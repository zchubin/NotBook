<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>细节展示</title>
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

    <%
        if(loginBean==null){
            response.sendRedirect("login.jsp");
        }else {
            boolean b = ( loginBean.getLogname() == null ) || ( loginBean.getLogname().length() == 0 );
            if(b){
                response.sendRedirect("login.jsp");
            }
        }
        String numberID=request.getParameter("xijie");
        out.print("<th class='name-box'>商品号"+numberID);
        if(numberID==null){
            out.print("编号不对，查无此类！！！");
            return;
        }
        Connection con;
        Statement sql;
        ResultSet rs;
        try{
            Class.forName("com.sun.jdbc.Driver");
        }catch (Exception e){}
        String uri="jdbc:mysql://127.0.0.1/shop";
        try{
            con= DriverManager.getConnection(uri,"root","");
            sql=con.createStatement();
            String cdn="SELECT * FROM cosmeticForm where cosmetic_number='"+numberID+"'";
            rs=sql.executeQuery(cdn);
            out.print("<table class='red-border'>");
            out.print("<tr>");
            out.print("<th class='name-box'>商品编号</th>");
            out.print("<th class='name-box'>商品名称</th>");
            out.print("<th class='name-box'>供应商</th>");
            out.print("<th class='name-box'>商品价格</th>");
            out.print("<th class='name-box color-a'>添加购物车</th>");
            out.print("</tr>");
            String picture="";
            String detailMess="";
            while (rs.next()){
                String number=rs.getString(1);
                String name=rs.getString(2);
                String maker=rs.getString(3);
                String price=rs.getString(4);
                detailMess=rs.getString(5);
                picture=rs.getString(6);
                String goods="("+number+","+maker+","+price+")#"+price;
                goods=goods.replaceAll("\\p{Blank}","");
                String button="<form action='putGoodsServlet' method='post' style='text-align: center;'>"+"<input type='hidden' name='java' value="+goods+">"+"<input class='name-box bg-color color-a' type='submit' value='放入购物车'></form>";
                out.print("<tr>");
                out.print("<td class='name-box'>"+number+"</td>");
                out.print("<td class='name-box'>"+name+"</td>");
                out.print("<td class='name-box'>"+maker+"</td>");
                out.print("<td class='name-box'>"+price+"</td>");
                out.print("<td class='name-box'>"+button+"</td>");
                out.print("</tr>");
            }
            out.print("</tabel>");
            out.print("<br/><br/><p class='color-b'>商品信息：</p><br/><br/>");
            out.print("<center style='font-size: 18px;text-align: center;'>"+detailMess+"</center>");
            String pic="<img src='img/"+picture+"'style='width: 200;height: 200px'/>";
            out.print(pic);
            rs.close();
            sql.close();
            con.close();
        }catch (SQLException exp){}
    %>

    <footer>
        <%@include file="02footer.jsp"%>
    </footer>

    <%@include file="03boderbox.txt"%>

</center>
</body>
</html>
