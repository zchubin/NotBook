<center>
    <h1>Python 程序设计</h1>
</center>

## 第一章

1. 注释

    * `#`单行注释
    * ` ```多行注释``` ` / `"""多行缩注"""`

2. 缩进

    * 默认缩进 4 个字符

## 第二章

1. 数据类型

    * 数字类型
        * 整型
        * 复数
            * 实部+虚部(real+imag**j** ) eg: `5+3j`
            * 复数的实数和虚数都是浮点数
    * 布尔类型
        * 1      ==> ture
        * 0/none ==> flast
    * 字符串类型
    * 列表类型
    * 元组类型
    * 字典类型

2. 赋值符号

    * `=`

    ```py
    num      = 100
    age      = 20
    complexs = 1+4j
    floats   = 21.2
    height   = 100
    name     = "张三"
    booll    = True
    lists    = [1,2,3]
    tuples   = (1,2,3)
    dicts    = { "1":2,"age":20 }
    sets     = {1,2,3,4}

    print(type(sets))
    ```

3. 标识符

```py
# 类
class Person():
    pass
# 函数
def suml():
    pass
```

4. 命名规则

    * 字母(允许中文,但不建议)
    * 下划线_
    * 数字(不能开头)
        * 区分大小写
        * 避开关键字

        ```shell
        help()   # 进入帮助系统
        Keywords # 查看所有关键字
        return   # 查看return这个关键字说明
        quit     # 退出帮组系统
        ```

        * 见名知意
        * 驼峰命名法

        ```py
        age_1 = 10
        AGE_1 = 10
        学校  = "gzcc"
        ```

6. 进制(Python弱语言)

    * 二进制   0b
    * 八进制   00
    * 十进制
    * 十六进制 0x
        * `超出范围自动匹配相应的范围`

7. 内置函数

    * 数据转换

    | 函数                | 说明              |
    | ---                 | ---               |
    | int(x[,base])       | 将X转换为一个整数 |
    | float(x)            | 将X转换到浮点数   |
    | complex(real[,img]) | 创建一个复数      |

```py
num                  = 20
print(num,type(num))
str                  = 20
print(str,type(str))
result               = num * 2
print(result)
result1              = int(str) + 2
print(result1)
```

8. 运算符

    * 算数运算

    | 运算符 | 相关说明 |
    | ---    | ---      |
    | +      | 加       |
    | -      | 减       |
    | *      | 乘       |
    | **     | 幂       |
    | /      | 除       |
    | //     | 取整     |
    | %      | 取模     |

    ```py
    num1 = 1
    num2 = 2
    # 被除数不能为0
    print(num1+num2)
    print(num1-num2)
    print(num1*num2)
    print(num1**num2)
    print(num1/num2)
    print(num1//num2)
    print(num1%num2)

    str1 = "Hello "
    str2 = "World!"
    # "+"字符串拼接
    print(str1+str2)
    # 字符复制
    print(str1*3)
    ```

    * 赋值运算符 `=`

        * 为多个变量赋同值   `x = y = z = 1`
        * 为多个变量赋不同值 `x,y,z = 1,2,3`

    * 复合赋值运算符

    | 运算符 | 相关说明       | 实例              |
    | ---    | ---            | ---               |
    | +=     | 加法赋值运算符 | c+=a 等效 c=c+a   |
    | -=     | 减法赋值运算符 | c-=a 等效 c=c-a   |
    | *=     | 乘法赋值运算符 | c*=a 等效 c=c*a   |
    | /=     | 除法赋值运算符 | c/=a 等效 c=c/a   |
    | %=     | 取模赋值运算符 | c%=a 等效 c=c%a   |
    | **=    | 幂赋值运算符   | c**=a 等效 c=c**a |
    | //=    | 取整赋值运算符 | c//=a 等效 c=c//a |

    * 比较运算符 (结果仅为布尔类型)

    | 运算符 | 相关说明                                             |
    | ---    | ---                                                  |
    | ==     | 检查连个操作数值是否相等                             |
    | !=     | 检查连个操作数值是否相等                             |
    | >      | 检查左边操作数的值是否大于右边操作数的值             |
    | <      | 检查右边操作数的值是否大于左边操作数的值             |
    | >=     | 检查左边操作数的值是否大于或等操作数于右边操作数的值 |
    | <=     | 检查右边操作数的值是否大于或等操作数于左边操作数的值 |

    * 逻辑运算符 (结果仅为布尔类型)

    | 运算符 | 相关说明 | 记忆                |
    | ---    | ---      | ---                 |
    | and    | 与       | 同真为真,其余均为假 |
    | or     | 或       | 遇真为真            |
    | not    | 非       | 真变假,假变真       |

    * 成员运算符 (结果仅为布尔类型)

    | 运算符 | 相关说明                                           |
    | ---    | ---                                                |
    | in     | 如果在指定的序列中找到值返回Ture,否则返回False     |
    | not in | 如果在指定的序列中没有找到值返回Ture,否则返回False |

    ```py
    str3 = "abcdefg"
    print('1' in str3)
    ```
    * 位运算符

        * 按位左移: **二进制** 全部左移 **n** 位, **高位** ~~丢弃~~ ; **低位** 补 *0*
        * 按位右移: **二进制** 全部右移 **n** 位, **移出** ~~丢弃~~ ; **移进** 补 **符号位`0`**
        * 按位与/或/异或/取反

    * 优先级 (推荐:用`()`来代替优先级)

    | 运算符                               |
    | ---                                  |
    | **(指数)                             |
    | ~(按位翻转)  +(一元加号) -(一元减号) |
    | * / % //                             |
    | + -                                  |
    | >>(右移) <<(左移)                    |
    | &(位与)                              |
    | 位或/位异或                          |
    | <= < > >=                            |
    | = !=                                 |
    | =% /= //= -= += *= **=               |
    | is `is not`(身份运算符)              |
    | or and not(逻辑运算)                 |

## 第三章

1. 条件分支语句

```py
score = 80

# if 单分枝

if score >= 60:
    print("你的成绩及格了!")
# 没有输出

# if...else... 双分支

if score >= 60:
    print("你的成绩及格了!!")
else:
    print("你的成绩不及格!!")


# if...elif...elif... 多分枝

if score >= 90:
    print("你的成绩优秀!!!")
elif score >= 80:
    print("你的成绩良好!!!")
elif score >= 70:
    print("你的成绩中等!!!")
elif score >= 60:
    print("你的成绩合格!!!")
else:
    print("你的成绩不合格!!!")

# if嵌套 (建议嵌套不要超过5层)
# if Ture:
#     if Ture:
#         if Ture:
#         pass
#     pass
# pass
```

2. 循环语句

```py
# 输出三次Hello World!
print("Hello World!")
print("Hello World!")
print("Hello World!")

# while 条件

i = 0
while i < 10:
    print("Hello World!")
    i += 1

# for 变量 in 序列
for i in range(3):
    print("Hello World")

# 内置函数
# range(start,end,size)自动生成序列,start默认为0
# range(0,10)   = [0,1,2,3,4,5,6,7,8,9]
# range(10)     = [0,1,2,3,4,5,6,7,8,9]
# range(0,10,2) = [0,2,4,6,8]

```

* 求和 1+2+3+...+100

```py
sum = 0
i   = 1

while i <= 100:
    sum += i
    i += 1
print(sum)
```

```py
sum = 0

for i in range(1,101):
    sum += i
print(sum)
```

* 求1+3+5+7+...97+99的和

```py
sum = 0
i   = 1
while i <= 100:
    sum += i
    i   += 2
print(sum)
```

```py
sum = 0
for i in range(1,100,2):
    sum += i
print(sum)
```

3. break 跳出循环

```py
for i in range(0,10):
    if i = 5:
        break
    print(i)
```

4. continue 结束本次循环,接着执行洗一个循环

```py
for i in range(0,10):
    if i = 5:
        continue
    print(i)
```

5. pass 空语句,不做任何事情,用作占位,保持结构的完整性

6. else 在循环语句后执行,可以用来判断 break 和 循环 是否执行完毕

---
==习题==

- [ ] 编写程序,实现段落计算,如下所示:

    | 范围        | 值     |
    | ---         | ---    |
    | x           | y      |
    | x <0        | 0      |
    | 0 <= x < 5  | x      |
    | 5 <= x < 10 | 3x-5   |
    | 10<= x < 20 | 0.5x-2 |
    | 20<= x      | 0      |

    ```py
    x = eval(input("请输入一个数字:"))
    y = 0

    if x<0:
        y
    elif 0<=x<5:
        y = x
    elif 5<=x<10:
        y = 3*x-5
    elif 10<=x<20:
        y = 0.5*x-2
    elif 20<=x:
        y
    print(y)
    ```

- [ ] 已知 XYZ+YZZ=532 ,其中X,Y,Z为数字,编写程序求X,Y,Z的值

    ```py
    for x in range(10):
        for y in range(10):
            for z in range(10):
                if( x*100+y*10+z )+( y*100+z*10+z ) == 532:
                    print(x,y,z)
    ```

- [ ] 编写程序,输出 200-500 之间所有的素数

    ```py
    print("200-500之间所有的素数:")
    for i in range(200,501):
        for j in range(2,i):
            if i % j =0:
                print(i)
                break
    ```

