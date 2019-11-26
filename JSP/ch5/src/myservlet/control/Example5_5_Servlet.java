package myservlet.control;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(name = "Example5_5_Servlet",urlPatterns = {"/sumORproduct"},loadOnStartup = 1)
public class Example5_5_Servlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        out.println("<html><body bgcolor=#FFAA99>");
        String s=request.getParameter("number");
        String []a=s.split("[,，]");
        double sum = 0;
        for(String item:a) {
            if(item.length()>=1)
                sum+=Double.parseDouble(item);
        }
        out.print("用户的请求方式是"+request.getMethod()+"<br>") ;
        for(String item:a) {
            if(item.length()>=1)
                out.print(item+" ");
        }
        out.print("<br>的和是"+sum);
        out.println("</body></html>");
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        out.println("<html><body bgcolor=#EEFFCC>");
        String s=request.getParameter("number");
        String []a=s.split("[,，]");
        double product = 1;
        for(String item:a) {
            if(item.length()>=1)
                product*=Double.parseDouble(item);
        }
        out.print("用户的请求方式是"+request.getMethod()+"<br>") ;
        for(String item:a) {
            if(item.length()>=1)
                out.print(item+" ");
        }
        out.print("<br>的乘积是"+product);
        out.println("</body></html>");
    }
}
