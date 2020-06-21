# JSP学习笔记
## 1. JSP概述

Servlet是j2ee提供的动态资源开发技术，是以Java的程序的形式进行开发，
在Java中书写HTML标签是一件十分头疼的事，所以人们开发出了JSP。
看起来像是HTML一样，但是通过服务器的编译最终生成Servlet。
JSP技术有点像ASP技术，它是在传统技的网页HTML文件(\*.htm/\*.html)中插入
Java程序片(Scriptlet)和JSP标记(tag)，从形成JSP文件(\*.jsp)。

JSP 定义：
  1. Java Server Page, Java EE 组件，本质上是 Servlet。
  2. 运行在 Web Container.接收 Http Request,生成 Http Response(默认协议是 Http 请求和响应)
  3. JSP 使得我们能够分离页面的静态 HTML 和动态部分
  4. 使页面可以混和html代码、Java代码以及JSP标签；允许访问组件

用JSP开发Web应用是跨平台的。

JSP的本质就是Servlet，每个JSP页面就是一个Servlet实例，
JSP页面由系统编译成Servlet，Servlet负责响应用户请求。

**JSP运行过程：**

第一次访问\-\-\>helloServlet.jsp\-\-\>helloServlet.java\-\-\>编译运行

当我们新建一个项目并布置到tomcat服务器上运行时，
我们可以在tomcat目录下`\work\Catalina\localhost`找到相应的JSP页面编译生成的Servlet代码。
这些都是系统编译生成的Servlet类。

## 2. JSP组成部分
### -------------简单了解-------------
1.注释
* <%- JSP注释 -%>
* <\!–– HTML注释 ––>
* // Java单行注释
* /\* Java多行注释 \*/

2.基本元素
| 形式          | 含义               |
| :---:         | :---:              |
| <%@ \*\*\* %> | 指令标记和动作标记 |
| <%= \*\*\* %> | Java表达式         |
| <%  \*\*\* %> | Java程序片         |
| <%! \*\*\* %> | 变量和方法的声明   |

### -------------详细解释-------------
#### 2.1 模板元素
直接书写在JSP中的HTML内容，看起来就像写HTML一样的方便，但是最终会被翻译成Servlet的过程中`out.write()`直接输出。

#### 2.2 脚本表达式(expression)
`<%= 表达式 %>`
接受的是一段Java表达式，在jsp翻译到Servlet的过程中，将会计算表达式的值，利用`out.write()`输出出去。
> 效果上 <%= \*\*\* %> = "println="

#### 2.3 脚本片段
`<% 程序片 %>`
直接可以在脚本片段中书写Java源代码，其中的源代码会被直接拷贝到翻译过来的servlet中的相应位置上。

#### 2.4 JSP声明(statement)
`<%! 声明 %>`
> 声明时要加"\!"，属于类成员，最先加载，可写于任何位置；不加则是脚本的局部变量，必须调用前写。

在其中可以写Java代码，其中源代码会被拷贝servlet的service方法之外，可以利用它来为servlet增加成员方法、成员变量、静态代码块

用来定义在产生的类文件中的类的属性和方法(成员变量)。可声明类(即是内部类)。
由于servlet是工作在多线程环境下，所以尽量不要在service方法体外声明成员变量。

#### 2.5 JSP注释
`<%- 注释 -%>`

#### 2.6 JSP指令(direction)
1. 指令用于从JSP发送信息到容器上。用来设置全局变量，声明类，要实现的方法和输出内容等。
2. 指令在JSP整个文件内有效。它为翻译阶段提供了全局信息。
##### 2.6.1 page 指令
`<%@ page 属性="属性值" %>`
> 作用对整个JSP页面有效，与书写位置无关。习惯性把page指令写在JSP页面前面。

| 属性         | 属性值                                               | 含义                                                                          |
| --           | --                                                   | --                                                                            |
| contenType   | "text/html;charset=ISO-8859-1"/"application/msworld" | 响应MIME类型，jsp字符编码                                                     |
| language     | "java"                                               | jsp使用的脚本语言                                                             |
| import       | "java.io.\*","java.util.\*"                            | java运行环境运行提供的包的类                                                  |
| session      | "true"/"false"                                       | 是否内置"session"(会话)指令                                                   |
| buffer       | "8K"/"none"                                          | 缓冲区大小或不使用缓冲区                                                      |
| autoFulsh    | "true"/"false"                                       | 指定out的缓冲区填满时否自动刷新                                               |
| isThreadSafe | "true"/"false"                                       | 是否可以使用多线程                                                            |
| info         | "String字符串"                                       | 为jsp页面准备一个常用但可能要经常改变的字符串，**getServeletInfo()**;进行调用 |

#### 2.6.2 include 指令
`<%@ include file="URL" %>`(静态引入页面内容)
> 在jsp页面内某处整体嵌入一个文件（静态插入一个文件），被嵌入的文件必须是**可以访问或可以使用的**。
>> * 静态引入：在源文件级别进行合并，多个jsp生成一个servlet，最终由这一个servlet生成响应。
>> * 动态引入：在运行时讲过个输出进行合并，多个jsp分别生成多个servlet，最终由这多个servlet生成响应，组成一个输出流，提供响应。执行效率没有静态引入高。

#### 2.6.3 taglib 指令
`<%@ taglib uri="引入.tld文件的名称空间" prefix="对.tld文件的名称缩写" %>`
> 用来引入标签库。

### 2.7 九大隐式对象
1. config
2. application
3. request
4. response
5. session
6. out
7. page
8. pageContext
9. Exception

## 3. JSP 标签
JSP既可以用来生成HTML页面，也可以直接书写Java原代码处理逻辑，
这就会导致很多开发者在JSP出现初期，只用JSP做开发，
这个JSP页面十分庞大、充满了Java源代码和HTML标签、许多百分号，
逻辑结果混乱，不宜调试程序和页面美化。

于是人们希望将Java源代码从jsp页面中抽离，但是把所有的Java源代码都抽走是不现实的，
最基本的获取属性、简单的页面逻辑还是需要的，
于是，SUM公司就提供了JSP中的标签开发技术，以一个标签戴白哦一种功能的Java代码，
是整个JSP开起来就像一个HTML，并且不会丢失JSP进行逻辑处理功能。

### include指令标记
>> 如果插入的是jsp页面，则page指令标记的contentType的属性值必须相同。

### include动作标记
> 在jsp页面内动态的包含一个文件，jsp页面运行时才将页面加入。
```jsp
<jsp:include page="URL" />

<jsp:include page="URL">
	param 子标记
<jsp:include>
```
>> include不需要param子标记时，必须使用第一种形式。

### param动作标记
> 为其它标记提供附加信息，**不能独立使用**。
```jsp
<jsp:param name="调用的名称" value="调用的参数">
```
>> 必须作为以下的子标记使用。
- jsp:include
- jsp:forward
- jsp:plugin

```jsp
<jsp:include page="URL">
	// param 子标记
	<jsp:param name="调用的名称" value="调用的参数">
<jsp:include>
```
>> request获取内置对象param子标记中name属性所指定的值。
```jsp
<%
	String s=request.getParameter("name");
	out.println("value");
%>
```
### forward动作标记
> 从该指令停止当前页面的执行，转向执行page属性指定的jsp页面。
```jsp
<jsp:forward page="URL" />

<jsp:forward page="URL">
	param 子标记
<jsp:forward>
```
>> forward不需要param子标记时，必须使用第一种形式。

### useBean动作标记
> 以后补齐

## jsp内置对象
> 有些对象不用声明就可以在jsp页面的java程序片和表达式部分使用，这就是jsp的内置对象。

* 常见的内置对象有
	- **request**提交信息
	- **response**响应信息
	-- 以上两个对象提供了对服务器和浏览器通信方法的控制
	- session
	- application
	- out

### request对象
> HTTP通信协议是用户与服务器之间一种提交（请求）信息和响应信息的（request/response）的通信协议。
> 在jsp中，内置对象request封装了用户提交的信息，那么该对象调用的相应的方法可以获取封装的信息，即使用该对象可以获取用户提交的信息。
>> 内置request对象是实现ServletRequset接口类的一个实例，
>> 可以在Tomcat服务器的webapps/tomcat-docs/servletapi中查找ServletRequset接口的方法。
>> 用户通常使用HTTP服务表单向服务器的某个jsp页面提交信息。

- 表单的一般格式：

```html
<form action="提交信息的目的地页面" method=get | post >
	/*提交手段*/
	<input type="text" name="boy" value="ok" />
	<input type="submit" name="submit" value="送出" />
</form>
```
>> get方法提交的信息会在提交过程中显示在浏览器的地址栏中，而post方法不会。
>> request对象可以使用getParameter(String s)方法获取该表单通过text提交的信息：
>> request.getParameter("boy");

1. 常用getParameter(String s)获取用户提交的信息
2. 如果用户提交汉字字符，会出现乱码。可以使用指定编码的方式解决。
3. 对获取的信息重新编码
```java
//方法一
String str=request.getParameter("message");
byte b[]=str.getBytes("ISO-8859-1");
str=new String(b);
//方法二
s=new String(s.getByte("ISO-8859-1"),"UTF-8");
//方法三
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String str=request.getParameter("message");
```
- HTML标记

``` html
1. <form action="提交信息的目的页面" method=get | post name="表单的名字">数据提交手段部分</form>
2. <input type="输入对象的GUI类型" name="名字" />
3. <select name="myName">
		<option value="item1"></option>
		<option value="item2"></option>
   </select>
   <!--
   selct中增加size属性即可变成滚动列表，size的值是滚动列表的可见行数目。
   -->
4. <textArea name="#" rowas="可见行数" clos="可见列数">
        是一个能输入或显示多行文本的文本区，使用此标记作为子标记可以提交多行文本给服务器
   </textArea>
5. <table>
		<tr> <!-- 行 -->
			<th></th>
			<th></th> <!-- 列 -->
		</tr>
   </table>
6. <image src="图像文件url">描述文字</image>
7. <embed src="音频文件url" loop="-1">描述文字</embed>
```
