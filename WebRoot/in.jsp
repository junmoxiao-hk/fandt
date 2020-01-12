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
                 					   <p>欢迎您！</p>
                 					   <a>退出登录</a>
                  					  
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
    	<div class="row" style="hieght:60%;">
    	
    		<div class="col-md-8 col-md-offset-2">
  					<form class="form-horizontal" style="margin-top: 5rem;">
  						<div class="form-group">
   							 <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    							<div class="col-sm-10">
     								 <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
   								 </div>
 						 </div>
  						<div class="form-group">
   							 <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
   								 <div class="col-sm-10">
     								 <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
   								 </div>
  						</div>
  						<div class="form-group">
    						<div class="col-sm-offset-2 col-sm-10">
      							<div class="radio">
      						 		<label>
   									 <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>学员
  										
 									 </label>
       								<label>
   									
  										<input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" >教员
 									 </label>
       								 <label>
          							
          							<input type="button" class="btn btn-info" name="re" value="成为教员" onclick="forward()"> 
       								 </label>
       								 <label>
          							
          							<input type="button" class="btn btn-info" name="red" value="成为学员" onclick="forward()"> 
       								 </label>
     							 </div>
    						</div>
 						 </div>
  						<div class="form-group">
    						<div class="col-sm-offset-2 col-sm-10">
     							 <button type="submit" class="btn btn-primary">Sign in</button>
    						</div>
 						 </div>
					</form>
  				</div>
    	</div>
    </div>
  </body>
</html>
