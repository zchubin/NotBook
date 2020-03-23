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
            * 实部 + 虚部 (real+imag**j** ) eg: `5+3j`
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

    * 字母（允许中文，但不建议）
    * 下划线_
    * 数字（不能开头）
        * 区分大小写
        * 避开关键字

        ```shell

        help()   # 进入帮助系统
        Keywords # 查看所有关键字
        return   # 查看 return 这个关键字说明
        quit     # 退出帮组系统

        ```

        * 见名知意
        * 驼峰命名法

        ```py
        age_1 = 10
        AGE_1 = 10
        学校  = "gzcc"
        ```

6. 进制 (Python 弱语言）

    * 二进制   0b
    * 八进制   00
    * 十进制
    * 十六进制 0x
        * `超出范围自动匹配相应的范围`

7. 内置函数

    * 数据转换

    | 函数                | 说明              |
    | ---                 | ---               |
    | int(x[,base])       | 将 X 转换为一个整数 |
    | float(x)            | 将 X 转换到浮点数   |
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
    # 被除数不能为 0
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

    * 比较运算符 （结果仅为布尔类型）

    | 运算符 | 相关说明                                             |
    | ---    | ---                                                  |
    | ==     | 检查连个操作数值是否相等                             |
    | !=     | 检查连个操作数值是否相等                             |
    | >      | 检查左边操作数的值是否大于右边操作数的值             |
    | <      | 检查右边操作数的值是否大于左边操作数的值             |
    | >=     | 检查左边操作数的值是否大于或等操作数于右边操作数的值 |
    | <=     | 检查右边操作数的值是否大于或等操作数于左边操作数的值 |

    * 逻辑运算符 （结果仅为布尔类型）

    | 运算符 | 相关说明 | 记忆                |
    | ---    | ---      | ---                 |
    | and    | 与       | 同真为真，其余均为假 |
    | or     | 或       | 遇真为真            |
    | not    | 非       | 真变假，假变真       |

    * 成员运算符 （结果仅为布尔类型）

    | 运算符 | 相关说明                                           |
    | ---    | ---                                                |
    | in     | 如果在指定的序列中找到值返回 Ture, 否则返回 False     |
    | not in | 如果在指定的序列中没有找到值返回 Ture, 否则返回 False |

    ```py
    str3 = "abcdefg"
    print('1' in str3)
    ```
    * 位运算符

        * 按位左移：**二进制** 全部左移 **n** 位，**高位** ~~丢弃~~ ; **低位** 补 *0*
        * 按位右移：**二进制** 全部右移 **n** 位，**移出** ~~丢弃~~ ; **移进** 补 **符号位`0`**
        * 按位与 / 或 / 异或 / 取反

    * 优先级 （推荐：用`()`来代替优先级）

    | 运算符                               |
    | ---                                  |
    | **（指数）                             |
    | ~（按位翻转）  +（一元加号） -（一元减号） |
    | * / % //                             |
    | + -                                  |
    | >>（右移） <<（左移）                    |
    | &（位与）                              |
    | 位或 / 位异或                          |
    | <= < > >=                            |
    | = !=                                 |
    | =% /= //= -= += *= **=               |
    | is `is not`（身份运算符）              |
    | or and not（逻辑运算）                 |

## 第三章

1. 条件分支语句

```py
score = 80

# if 单分枝

if score >= 60:
    print("你的成绩及格了！")
# 没有输出

# if...else... 双分支

if score >= 60:
    print("你的成绩及格了！!")
else:
    print("你的成绩不及格！!")


# if...elif...elif... 多分枝

if score >= 90:
    print("你的成绩优秀！!!")
elif score >= 80:
    print("你的成绩良好！!!")
elif score >= 70:
    print("你的成绩中等！!!")
elif score >= 60:
    print("你的成绩合格！!!")
else:
    print("你的成绩不合格！!!")

# if 嵌套 （建议嵌套不要超过 5 层）
# if Ture:
#     if Ture:
#         if Ture:
#         pass
#     pass
# pass
```

2. 循环语句

```py
# 输出三次 Hello World!
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
# range(start,end,size) 自动生成序列，start 默认为 0
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

* 求 1+3+5+7+...97+99 的和

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

4. continue 结束本次循环，接着执行洗一个循环

```py
for i in range(0,10):
    if i = 5:
        continue
    print(i)
```

5. pass 空语句，不做任何事情，用作占位，保持结构的完整性

6. else 在循环语句后执行，可以用来判断 break 和 循环 是否执行完毕

---
== 习题 ==

- [ ] 编写程序，实现段落计算，如下所示：

    | 范围        | 值     |
    | ---         | ---    |
    | x           | y      |
    | x <0        | 0      |
    | 0 <= x < 5  | x      |
    | 5 <= x < 10 | 3x-5   |
    | 10<= x < 20 | 0.5x-2 |
    | 20<= x      | 0      |

    ```py
    x = eval(input("请输入一个数字："))
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

- [ ] 已知 XYZ+YZZ=532 , 其中 X,Y,Z 为数字，编写程序求 X,Y,Z 的值

    ```py
    for x in range(10):
        for y in range(10):
            for z in range(10):
                if( x*100+y*10+z )+( y*100+z*10+z ) == 532:
                    print(x,y,z)
    ```

- [ ] 编写程序，输出 200-500 之间所有的素数

    ```py
    print("200-500 之间所有的素数：")
    for i in range(200,501):
        for j in range(2,i):
            if i % j =0:
                print(i)
                break
    ```
## 第四章

1. 字符串介绍

字符串是一种表示**文本**数据的类型
- 内部出现单引号 / 双引号，需要转义字符`\`

| 转义字符     | 代表含义   |
| ---          | ---        |
| \ （在尾行时） | 反斜杠符号 |
| `\\`         | 反斜杠符号 |
| `\"`         | 双引号     |
| \n           | 换行       |
| \b           | 退格       |
| \t           | 横向制表符 |

2. 字符串输出

常见的格式化符号

| 格式化符号 | 转换                        |
| ---        | ---                         |
| `%s`       | 通过 str() 字符串转换来格式化 |
| `%d`       | 有符号是十进制整数          |
| `%f`       | 浮点实数                    |

```py
name = "小明"
age = 19
school = "gzcc"

print("大家好，我叫小明，年龄为 19，学校是 gzcc")
print("大家好，我叫"+name+"，年龄为"+str(age)+"，学校是"+school)
print("大家好，我叫 %s，年龄为 %d，学校是 %s"%(name,age,school))
print("大家好，我叫{}，年龄为{}，学校是{}".format(name,age,school))
```

3. **切片**『起始：结束：步长』

```py
str1 = "hello world"
print(str1[0])
print(str1[1])
print(str1[2])
print(str1[3])
print(str1[4])

print(str1[-1])
print(str1[-2])

print(str1[0:5:1])
print(str1[5:0:-1])
```

字符串中的每个字符都对应一个下标，下标编号从`0`开始，从右往左取从`-1`开始

切片选区的区间属于左闭右开型，即从"起始"位置开始，到"结束"位的前一位结束（不包括结束位本身）

4. 内置函数

> * str -- 指定检索的字符串
> * beg -- 开始索引，默认为 0
> * end -- 结束索引，默认为字符串长度

- str.find(str,beg=0,end=len(string))
> 找到返回下标值，没找到返回 -1

- str.index(str,beg=0,end=len(string))
> 找到返回下标值，没找到返回错误信息

- str.count(str,beg=0,end=len(string))
> 统计返回个数，没找到返回错误信息

- str.startwith(str,beg=0,end=len(string))
> 检查字符串是否以定制字符串开头，返回真假值

- str.endwith(str,beg=0,end=len(string))
> 检查字符串是否以定制字符串结尾，返回真假值

- str.replace(old,new[,max])
> * old -- 将被替换的字符串
> * new -- 新字符串，用于替换 old 字符串
> * max -- 可选字符串，替换不超过 max 次

- str.split(str="",num=string.count(str))
> * str -- 分隔符，默认为所有空字符
> * num -- 分割次

> 根据分隔符，对字符串进行切片，得到列表

- str.capitalize()
    * 第一个字符大写，其他字母小写
- str.title()
    * 所有单词首字母大写，其他字母小写

- str.upper()
    * 将小写字母转换为大写字母
- str.lower()
    * 将大写字母转换为小写字母

- str.ljsut(width[,fillchar])
    * 左对齐，使用空格填充至指定长度的新字符串
- str.rjsut(width[,fillchar])
    * 右对齐，使用空格填充至指定长度的新字符串
- str.center(width[,fillchar])
    * 居中对齐，使用空格填充至指定长度的新字符串
> width -- 指定字符串长度
> fillchar -- 填充字符，默认为空格

- str.lstrip([chars])
- str.rstrip([chars])
- str.strip([chars])
> chars -- 指定删除字符

5. 字符串运算符

| 操作符 | 描述                                               |
| ---    | ---                                                |
| +      | 字符串拼接                                         |
| *      | 重复输出                                           |
| []     | 通过索引获取字符串中的字符                         |
| [:]    | 截取字符串的一部分                                 |
| in     | 成员运算符号，包含，返回真                         |
| not in | 成员运算符，不包含，返回真                         |
| r/R    | 原始字符，还原字符串，没有转义特殊或不能打印的字符 |

## 第 5 章

1. 列表 -- 是 Python 中的一种数据结构，它可以存储不同类型的数据，可嵌套

```py
A = ['XiaoMing','XiaoZhang','XiaoHua']
print(A[0])
print(type(A[-1]))
print(A[1:2]) #切片
```

* 增
    1. .append（内容） 追加一个元素
    2. .insert（位置，内容） 插入
    3. .extend（其它 list) 合并所有元素
* 删
    1. .pop(n) 默认删除最后一个，可指定
    2. .remove(N) 根据类容删除
    3. del list(n)
* 查
    1. in
    2. not in
* 改
    1. `list[n]='XX'`

* 排序
    1. .sort 从小到大排列
    2. .revers 逆置列表
        `list.sort(revers=ture)` 从大到小

2. 元组：同列表，但不能修改

```py
tuple1=(1,2,3,4,5,6,7,8,9,0)
tuple2=('xiaoming',1997,'a',2000)
tuple3=(1,) #一个数据的元组后加`,`
```

* len() 计算元组的个数
* max(),min() 返回元组最大 / 小值
* tuple() 将列表转换为元组

3. 字典：是一种存储数据的容器，它和列表一样，都可以存储多个数据

```py
info={'name':'赵','sex':'男','bron':'广州'}
# 键 key 值 values 对 items
info['name']='李'
print('name' in info.key())
print('赵' in info.values())

```

<++>
