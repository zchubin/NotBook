<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="mybean.data.Login" %>--%>
<%@ page import="java.util.*" %>
<%--<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session" />--%>
<html>
<head>
    <title>查看购物车</title>
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
            <td><a class="menu-a color-a bg-color" href="lookShoppingCar.jsp">查看购物车</a></td>
            <td><a class="menu-a" href="lookOrderForm.jsp">查看订单</a></td>
        </tr>
    </table>
    <div class="float-clear red-border min-width"></div>

    <%
        if(loginBean==null){
            response.sendRedirect("login.jsp");
        }else {
            boolean b =loginBean.getLogname()==null||loginBean.getLogname().length()==0;
             if(b) {
                response.sendRedirect("login.jsp");
             }
        }
        LinkedList car =loginBean.getCar();
        if(car==null)
            out.print("<h2> 购物车没有物品.</h2>");
        else {
            Iterator<String> iterator=car.iterator();
            StringBuffer buyGoods = new StringBuffer();
            int n=0;
            double priceSum =0;
            out.print("购物车中的物品：<table class='red-border'>");
            while(iterator.hasNext()) {
                String goods=iterator.next();
                String showGoods="";
                n++;
                int index=goods.lastIndexOf("#");
                if(index!=-1){
                    priceSum+=Double.parseDouble(goods.substring(index+1));
                    showGoods = goods.substring(0,index);
                }
                buyGoods.append(n+":"+showGoods);
                String del="<form  action='deleteServlet' method = 'post' class='form-box red-border'>"+
                        "<input type ='hidden' name='delete' value= "+goods+">"+
                        "<input type ='submit'  value='删除' class='bg-color color-a' /></form>";
                out.print("<tr><td class='name-box'>"+showGoods+"</td>");
                out.print("<td class='name-box'>"+del+"</td></tr>");
            }
            out.print("</table>");
            String orderForm = "<form action='buyServlet' method='post' lass='form-box red-border'>"+
                    " <input type ='hidden' name='buy' value= "+buyGoods+" >"+
                    " <input type ='hidden' name='price' value= "+priceSum+" >"+
                    "<input type ='submit'  value='生成订单' lass='name-box bg-color color-a'></form>";
            out.print(orderForm);
        }
    %>

    <footer>
        <%@include file="02footer.jsp"%>
    </footer>

    <%@include file="03boderbox.txt"%>

</center>
</body>
</html>
