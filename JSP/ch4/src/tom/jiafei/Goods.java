package tom.jiafei;

/**
 * Created by Administrator on 2019/11/12.
 */
public class Goods {
    String name="无名";
    double price=0;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        try{
//            byte [] bb = newName.getBytes("iso-8859-1");
//            newName = new String(bb);
            name=new String(name.getBytes("iso-8859-1"),"utf-8");
        }
        catch(Exception exp){}
        this.name = name;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
}
