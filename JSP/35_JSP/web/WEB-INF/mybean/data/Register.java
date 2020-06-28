package myservlet.control;
import mybean.data.Login;
import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
//import javax.servlet.annotation.WebServlet;

public class Register{
    String  logname=null,phone=null,address=null,realname=null,backNews="请输入信息";
    public void setLogname(String logname){
        this.logname=logname;
    }
    public String getLogname(){
        return logname;
    }
    public void setPhone(String phone){
        this.phone=phone;
    }
    public String getPhone(){
        return phone;
    }
    public void setAddress(String address){
        this.address=address;
    }
    public String getAddress(){
        return address;
    }
    public void setRealname(String realname){
        this.realname=realname;
    }
    public String getRealname(){
        return realname;
    }
    public void setBackNews(String backNews){
        this.backNews=backNews;
    }
    public String getBackNews(){
        return backNews;
    }
}