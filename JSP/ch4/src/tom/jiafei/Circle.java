package tom.jiafei;

public class Circle {
    double r;
    public Circle() {
        this.r = 1;
    }

    public double getR() {
        return r;
    }

    public void setR(double r) {
        this.r = r;
    }
    public  double circleArea(){
        return  Math.PI*r*r;
    }
    public  double circlelength(){
        return  2*Math.PI*r;
    }

}
