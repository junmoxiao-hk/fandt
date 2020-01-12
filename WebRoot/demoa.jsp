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
	<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
  </head>
  
  <body>
  
  <form action="${pageContext.request.contextPath}/login.action" method="post" >
  	<!-- <table border="1" width="30%" align="left"> -->
  	
  		<!-- <tr> -->
  			用户名
  			
  			 <div class="form-group">
  			<input type="text" name="username"/>
  			</div>
  			
  		<!-- </tr> -->
  		<!-- <tr> -->
  			密码
  			<input type="password" name="password"/>
  		<!-- </tr> -->
  		<!-- <tr> -->
  			选择登陆身份
  			<input type="radio" name="shenfen" value="teacher"/>我是教员<input type="radio" name="shenfen" value="student"/>我是学员
  		<!-- </tr> -->
  		<!-- <tr> -->
  			<input type="submit" value="登录"/>
  			
  		<!-- </tr> -->
  		<!-- <tr> -->
  			 <a href="${pageContext.request.contextPath}/register_teacherform.action ">成为教员</a>
  			 <a href="${pageContext.request.contextPath}/register_studentform.action ">成为学员</a>
  		<!-- </tr> -->
  	<!-- </table> -->
  	
  </form>
  <input type="button" value="sasd"  class="btn btn-primary"/>
  </body>
</html>
