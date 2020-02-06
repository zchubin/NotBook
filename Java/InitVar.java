//InitVar.java
public class InitVar{
    public static void main(String[] args){
        byte a = 10;
        // 声明一个短整型变量b,初始化为 10;
        short b = 20;
        // 声明一个整数型变量c,初始化为 20;
        int c = 30;
        long d = 40L;
        // 声明一个单精度型变量e,初始化为 50F;
        float e = 50F;
        // 声明一个双精度型变量f,初始化为 60D;
        double f = 60.63D;
        // 声明一个字符型变量g,初始化为 'A';
        char g = 'A';
        // 声明一个布尔型变量h,初始化为 true;
        boolean h = true;
        // 声明一个双精度常量pi,初始化为 3.14;
        final double PI = 3.1415926;
        System.out.println("字节型,a=" + a);
        System.out.println("短整型,b=" + b);
        System.out.println("整数型,c=" + c);
        System.out.println("长整型,d=" + d);
        System.out.println("单精度型,e=" + e);
        System.out.println("双精度型,f=" + f);
        System.out.println("字符型,g=" + g);
        System.out.println("布尔型,h=" + h);
        System.out.println("圆周率,PI=" + PI);
    }
}
//final 定义一个常量
//javac -encoding utf-8 *.java
