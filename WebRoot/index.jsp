<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
  
  <form action="${pageContext.request.contextPath}/login.action" method="post" >
  	<table border="1" width="30%" align="left">
  		<tr>
  			<td>用户名</td>
  			<td><input type="text" name="username"/></td>
  		</tr>
  		<tr>
  			<td>密码</td>
  			<td><input type="password" name="password"/></td>
  		</tr>
  		<tr>
  			<td>选择登陆身份</td>
  			<td><input type="radio" name="shenfen" value="teacher"/>我是教员<input type="radio" name="shenfen" value="student"/>我是学员</td>
  		</tr>
  		<tr>
  			<td><input type="submit" value="登录"/></td>
  			
  		</tr>
  		<tr>
  			<td> <a href="${pageContext.request.contextPath}/register_teacherform.action ">成为教员</a></td>
  			<td> <a href="${pageContext.request.contextPath}/register_studentform.action ">成为学员</a></td>
  		</tr>
  	</table>
  </form>
  
  </body>
</html>
