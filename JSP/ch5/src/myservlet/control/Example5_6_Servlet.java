package myservlet.control;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

/**
 * Created by Administrator on 2019/11/26.
 */
@WebServlet(name = "Example5_6_Servlet", urlPatterns = {"/twoPath"}, loadOnStartup = 1)
public class Example5_6_Servlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number = request.getParameter("number");//获取表单中number的值
        try {
            double n = Double.parseDouble(number);//把number转化为双精度的浮点类型
            if (n < 0)
                response.sendRedirect("example5_6_show.jsp");  //重定向
            else {
                RequestDispatcher dispatcher =
                        request.getRequestDispatcher("example5_6_show.jsp");
                dispatcher.forward(request, response);//转发到example5_6_show.jsp
            }
        } catch (NumberFormatException e) {
            response.sendRedirect("ex5_6.jsp");  //重定向
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
