# abstract（抽象）
> Java 语言提供了两种类，分别为具体类和抽象类。
前面学习接触的类都是具体类。

> 在面向对象的概念中，所有的对象都是通过类来描绘的，
但是反过来，并不是所有的类都是用来描绘对象的，
如果一个类中没有包含足够的信息来描绘一个具体的对象，那么这样的类称为抽象类。

> 在 Java 中抽象类的语法格式如下：
```java
<abstract>class<class_name> {
    <abstract><type><method_name>(parameter-iist);
}
```
> * abstract 表示该类或该方法是抽象的；
> * class_name 表示抽象类的名称；
> * method_name 表示抽象方法名称，
> * parameter-list 表示方法参数列表。

- 如果一个方法使用 abstract 来修饰，则说明该方法是抽象方法，抽象方法只有声明没有实现。
- **需要注意的是 abstract 关键字只能用于普通方法，不能用于 static 方法或者构造方法中。**

抽象方法的 3 个特征如下：
1. 抽象方法没有方法体；
2. 抽象方法必须存在于抽象类中；
3. 子类重写父类时，必须重写父类所有的抽象方法。

##### 注意：在使用 abstract 关键字修饰抽象方法时不能使用 private 修饰，因为抽象方法必须被子类重写，而如果使用了 private 声明，则子类是无法重写的。

抽象类的定义和使用规则如下：
1. 抽象类和抽象方法都要使用 abstract 关键字声明。
2. 如果一个方法被声明为抽象的，那么这个类也必须声明为抽象的。
   而一个抽象类中，可以有 0~n 个抽象方法，以及 0~n 个具体方法。
3. 抽象类不能实例化，也就是不能使用 new 关键字创建对象。

## 列题
不同几何图形的面积计算公式是不同的，
但是它们具有的特性是相同的，都具有长和宽这两个属性，也都具有面积计算的方法。
那么可以定义一个抽象类，
在该抽象类中含有两个属性（width 和 height）和一个抽象方法 area( )，具体步骤如下。

1. 首先创建一个表示图形的抽象类 Shape，代码如下所示。
```java
public abstract class Shape {
    public int width; // 几何图形的长
    public int height; // 几何图形的宽

    public Shape(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public abstract double area(); // 定义抽象方法，计算面积
}
```
2. 定义一个正方形类，该类继承自形状类 Shape，并重写了 area( ) 抽象方法。正方形类的代码如下：
```java
public class Square extends Shape {
    public Square(int width, int height) {
        super(width, height);
    }

    // 重写父类中的抽象方法，实现计算正方形面积的功能
    @Override
    public double area() {
        return width * height;
    }
}
```
3. 定义一个三角形类，该类与正方形类一样，需要继承形状类 Shape，并重写父类中的抽象方法 area()。三角形类的代码实现如下：
```java
public class Triangle extends Shape {
    public Triangle(int width, int height) {
        super(width, height);
    }

    // 重写父类中的抽象方法，实现计算三角形面积的功能
    @Override
    public double area() {
        return 0.5 * width * height;
    }
}
```
4.最后创建一个测试类，分别创建正方形类和三角形类的对象，并调用各类中的 area() 方法，打印出不同形状的几何图形的面积。测试类的代码如下：
```java
public class ShapeTest {
    public static void main(String[] args) {
        Square square = new Square(5, 4); // 创建正方形类对象
        System.out.println("正方形的面积为：" + square.area());
        Triangle triangle = new Triangle(2, 5); // 创建三角形类对象
        System.out.println("三角形的面积为：" + triangle.area());
    }
}
```

* 在该程序中，创建了 4 个类，
  分别为图形类 Shape、正方形类 Square、三角形类 Triangle 和测试类 ShapeTest。
  其中图形类 Shape 是一个抽象类，创建了两个属性，
  分别为图形的长度和宽度，并通过构造方法 Shape( ) 给这两个属性赋值。

* 在 Shape 类的最后定义了一个抽象方法 area( )，用来计算图形的面积。
  在这里，Shape 类只是定义了计算图形面积的方法，而对于如何计算并没有任何限制。
  也可以这样理解，抽象类 Shape 仅定义了子类的一般形式。

* 正方形类 Square 继承抽象类 Shape，并实现了抽象方法 area( )。
  三角形类 Triangle 的实现和正方形类相同，这里不再介绍。


* 在测试类 ShapeTest 的 main( ) 方法中，
  首先创建了正方形类和三角形类的实例化对象 square 和 triangle，
  然后分别调用 area( ) 方法实现了面积的计算功能。

5. 运行该程序，输出的结果如下：
```trem
正方形的面积为：20.0
三角形的面积为：5.0
```
