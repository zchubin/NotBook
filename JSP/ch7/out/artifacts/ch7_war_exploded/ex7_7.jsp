<%--
  Created by IntelliJ IDEA.
  User: zou
  Date: 2019/11/19
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%  Connection con=null;
    Statement sql;
    ResultSet rs;
    try { Class.forName("com.mysql.jdbc.Driver");
    }
    catch(ClassNotFoundException e){}
    try{  int n=50;
        String uri=
                "jdbc:mysql://127.0.0.1/bank?"+ "user=root&password=&characterEncoding=utf-8";
        con=DriverManager.getConnection(uri);
        con.setAutoCommit(false);       //关闭自动提交模式
        sql=con.createStatement();
        rs=sql.executeQuery("SELECT userMoney FROM user WHERE name='geng'");
        rs.next();
        double gengMoney=rs.getDouble("userMoney");
        rs=sql.executeQuery("SELECT userMoney FROM user WHERE name='zhang'");
        rs.next();
        double zhangMoney=rs.getDouble("userMoney");
        out.print("转账前geng的userMoney的值是"+gengMoney+"<br>");
        out.print("转账前zhang的userMoney的值是"+zhangMoney+"<br>");
        gengMoney=gengMoney-n;
        if(gengMoney>=0) {
            zhangMoney=zhangMoney+n;
            sql.executeUpdate
                    ("UPDATE user SET userMoney ="+gengMoney+" WHERE name='geng'");
            sql.executeUpdate
                    ("UPDATE user SET userMoney="+zhangMoney+" WHERE name='zhang'");
            con.commit();                 //开始事务处理
        }
        rs=sql.executeQuery("SELECT * FROM user WHERE name='zhang'||name='geng'");
        out.println("<b>转账后的情况如下:<br>");
        while(rs.next()) {
            out.print(rs.getString(1)+"	");
            out.print(rs.getString(2));
            out.print("<br>");
        }
        rs.close();
        sql.close();
        con.close();
    }
    catch(SQLException e){
        try{ con.rollback();             //撤消事务所做的操作
        }
        catch(SQLException exp){}
        out.println(e);
    }
%>
</body>
</html>
