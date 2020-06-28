<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="mybean.data.DataByPage" %>--%>
<%--<%@ page import="com.sun.rowset.*" %>--%>
<%--<jsp:useBean id="dataBean" class="mybean.data.DataByPage" scope="session" />--%>

<html>
<head>
    <title>浏览商品</title>
    <link rel="stylesheet" type="text/css" href="./css/clear.css">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="icon" type="image/x-icon" class="js-site-favicon" href="./favicon.ico" />
</head>
<body>
<center>

    <p class="color-b tr-box">当前显示的内容是：</p>
    <table class="form-box">
        <tr class="red-border">
            <th class="name-box red-border">商品编号</th>
            <th class="name-box red-border">商品名称</th>
            <th class="name-box red-border">商品供应商</th>
            <th class="name-box red-border">商品价格</th>
            <th class="name-box red-border">查看详情</th>
            <td class="name-box red-border"><a class="color-b" style="font-size: 14px;">添加到购物车</a></td>
        </tr>
<%--        <jsp:setProperty name="dateBeawn" property="pageSize" param="pageSize" />--%>
<%--        <jsp:setProperty name="dateBeawn" property="currentPage" param="currentPage" />--%>
<%--        <%--%>
<%--            CachedRowSetImpl rowSet = dataBean.getRowSet();--%>
<%--            if(rowSet==null){--%>
<%--                out.print("没有可查询的信息！！！");--%>
<%--                return;--%>
<%--            }--%>
<%--            int totalRecord=rowSet.getRow();--%>
<%--            out.print("全部记录数" +totalRecord);--%>
<%--            int pageSize=dateBean.getPageSize();--%>
<%--            int totalPages=dataBean.getTotalPages();--%>
<%--            if(totalRecord%pageSize==0){--%>
<%--                totalPages=totalRecord/pageSize;--%>
<%--            }else{--%>
<%--                totalPages=totalRecord/pageSize+1;--%>
<%--            }--%>
<%--            dateBean.setPageSzie(pageSize);--%>
<%--            dateBean.setTotalPages(totalPages);--%>
<%--            if(totalPages>=1){--%>
<%--                if(dateBean.getCurrentPage()<1){--%>
<%--                    dateBean.setCurrentPage(dataBean.getTotalpages());--%>
<%--                }--%>
<%--                if(dateBean.getCurrentPage()>dataBean.getTotalpages()){--%>
<%--                    dateBean.setCurrentPage(1);--%>
<%--                }--%>
<%--                int index=(dataBean.getCurrentPage()-1)*pageSize+1;--%>
<%--                rowSet.absolute(index);--%>
<%--                boolean boo=true;--%>
<%--                for(int i=1;i<=pageSize&&boo;i++) {--%>
<%--                    String number = rowSet.getString(1);--%>
<%--                    String name = rowSet.getString(2);--%>
<%--                    String maker = rowSet.getString(3);--%>
<%--                    String price = rowSet.getString(4);--%>
<%--                    String goods = "(" + number + "," + name + "," + maker + "," + price + ")#" + price;--%>
<%--                    goods = goods.replaceAll("\\p{Blank}", "");--%>
<%--                    String button = "<form class="min-width form-box red-border" action='putGoodsServlet' method = 'post'>" + "<input type ='hidden' name='java' value= " + goods + ">" + "<input type ='submit'  value='放入购物车' ></form>";--%>
<%--                    String detail = "<form class="min-width form-box red-border" action='showDetail.jsp' method = 'post'>" + "<input type ='hidden' name='xijie' value= " + number + ">" + "<input type ='submit'  value='查看细节' ></form>";--%>
<%--                    out.print("<tr calss='tr-box'>");--%>
<%--                    out.print("<td class="name-box">" + number + "</td>");--%>
<%--                    out.print("<td class="name-box">" + name + "</td>");--%>
<%--                    out.print("<td class="name-box">" + maker + "</td>");--%>
<%--                    out.print("<td class="name-box">" + price + "</td>");--%>
<%--                    out.print("<td class="name-box">" + detail + "</td>");--%>
<%--                    out.print("<td class="name-box">" + button + "</td>");--%>
<%--                    out.print("</tr>");--%>
<%--                    boo = rowSet.next();--%>
<%--                }--%>
<%--            }--%>
<%--        %>--%>
    </table>
    </table>
        <br/>
        <a>每页最多显示<%--<jsp:getProperty name="dataBean" property="pageSize"/>--%>条信息</a>
        <br/>
        <p>
            当前显示第<a class="color-b"><%--<jsp:getProperty name="dataBean" property="currentPage"/>--%></a>页,共有<a class="color-b"><%--<jsp:getProperty name="dataBean" property="totalPages"/>--%></a>页。
        </p>
        <Table>
            <tr>
                <td class="name-box">
                    <form action="" method="post">
                        <Input type=hidden name="currentPage" value="下面语句">
<%--                        <%=dataBean.getCurrentPage()-1 %>--%>
                        <Input class="bg-color color-a up-next" type=submit name="g" value="上一页">
                    </form>
                </td>
                <td class="name-box">
                    <from action="" method=post>
                        <Input type=hidden name="currentPage" value="下面语句">
<%--                        <%=dataBean.getCurrentPage()+1 %>--%>
                        <Input class="bg-color color-a up-next" type=submit name="g" value="下一页">
                    </from>
                </td>
            </tr>
            <tr>
                <td class="name-box">
                    <form action="" method=post class="table-right">
                        每页显示
                        <Input class="red-border" type=text name="pageSize" value =1 size=3>
                        条记录
                        <Input class="submit-login bg-color color-a" type=submit name="g" value="确定">
                    </form>
                </td>
                <td class="name-box">
                    <FORM action="" method=post>
                        输入页码：
                        <Input class="red-border tex-box" type=text name="currentPage" size=2 >
                        <Input class="tex-box submit-login bg-color color-a" type=submit name="g" value="提交">
                    </FORM>
                </td>
            </tr>
        </Table>
</center>
</html>
