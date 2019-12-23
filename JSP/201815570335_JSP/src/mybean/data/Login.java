package mybean.date;
import java.util.*;

public class Login{
    String logname=null, backNews="未登录";
    LinkedList<String> car;
    public Login(){
        car = new LinkedList<String>();
    }

    public void setLogname(String logname) {
        this.logname = logname;
    }
    public String getLogname() {
        return logname;
    }

    public void setBackNews(String backNews) {
        this.backNews = backNews;
    }
    public String getBackNews() {
        return backNews;
    }

    public LinkedList<String> getCar() {
        return car;
    }
}
