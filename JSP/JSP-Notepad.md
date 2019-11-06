# JSP学习笔记

## 基础语法

1.注释
<！–– HTML注释 ––>
// Java单行注释
/* Java多行注释 */

2.基本元素
* 指令标记和动作标记

<%@ %>

* 变量和方法的声明

<%! %>

* Java程序片

<% %>

* Java表达式

<%= %> = "println="

### page指令标记
> 作用对整个JSP页面有效，与书写位置无关。习惯性把page指令写在JSP页面前面。
```jsp
<%@ page 属性="属性值" %>
```
>> 建议一行一个page指令。

|属性|属性值|含义|
|--|--|--|
|contenType   |"text/html;charset=ISO-8859-1"/"application/msworld"|响应MIME类型，jsp字符编码                                                |
|language     |"java"                                              |jsp使用的脚本语言                                                        |
|import       |"java.io.*","java.util.*"                           |java运行环境运行提供的包的类                                              |
|session      |"true"/"false"                                      |是否内置"session"(会话)指令                                              |
|buffer       |"8K"/"none"                                         |缓冲区大小或不使用缓冲区                                                  |
|autoFulsh    |"true"/"false"                                      |指定out的缓冲区填满时否自动刷新                                           |
|isThreadSafe |"true"/"false"                                      |是否可以使用多线程                                                       |
|info         |"String"                                            |为jsp页面准备一个常用但可能要经常改变的字符串，**getServeletInfo()**;进行调用|

### include指令标记
> 在jsp页面内某处整体嵌入一个文件（静态插入一个文件），被嵌入的文件必须是**可以访问或可以使用的**。
```jsp
<%@ include file="URL" %>
```
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
>> 内置对象request对象是实现ServletRequset接口类的一个实例，
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
