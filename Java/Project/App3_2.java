//filename:App3_2.java  整数与浮点类型的转化
public class App3_2{
    public static void main (String[] args){
        int a=155,b=9;
        float g,h;
        System.out.println("a="+a+",b="+b); //输出a,b的值；
        g=a/b;                              //将a除以b的结果放在g中；
        System.out.println("a/b="+g+"\n");  //输出g的值；
        System.out.println("a="+a+",b="+b); //输出a,b的值；
        h=(float)a/b;                       //先将a强制转换成float类型后再参加运算；
        System.out.println("a/b="+h);       //输出h的值；
    }
}
