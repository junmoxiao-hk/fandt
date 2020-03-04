<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'in.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </head>
  
  <body style="background-color: F0F0F0">
    <div class="container-fluid" >
    	<div class="row" style="hieght:30%;">
    		 <nav class="navbar" ><!-- navbar-inverse -->
            				<div class="navbar-collapse" style="background-color: #dff0d8;">
               					 <ul class="nav navbar-nav">
                 					   <p>欢迎您！${sessionScope.user}</p>
                 					   <a href="${pageContext.request.contextPath}/loginout.action">退出登录</a>
                  					  
               					 </ul>
             			    </div>
       					 </nav>
    	</div>
    	<div class="row" style="hieght:20%;">
    		 <nav class="navbar" ><!-- navbar-inverse -->
            				<div class="navbar-collapse" style="background-color:ffffff;">
               					 <ul class="nav navbar-nav">
                 					   <li class="active"><a href="#">预约管理</a></li>
                    				   <li><a href="#">学员库</a></li>
                  					   <li><a href="#">教员库</a></li>
                  					   <li><a href="#">视频管理</a></li>
                  					   <li><a href="#">个人信息</a></li>
                  					  
               					 </ul>
             			    </div>
       					 </nav>
    	</div>
    	<div class="row"  style="hieght:60%;" >
    	 <div class="col-md-8 col-md-offset-2">
    		<table>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    			<tr>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    				<td>111111111111</td>
    			</tr>
    		</table>
    		</div>
    	</div>
    </div>
  </body>
</html>
