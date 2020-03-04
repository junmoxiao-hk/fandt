<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo.jsp' starting page</title>
    
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
    <script type="text/javascript">
    
    		function check(){
    			var username=document.getElementById("username");
    			var password=document.getElementById("password");
    			if(username.value==null||username.value==""){
    				span.innerHTML="<font color='red'>用户名不能为空</font>";
    				return false;
    			}else if(password.value==null||password.value==""){
    				span.innerHTML="<font color='red'>密码不能为空</font>";
    				return false;
    			}else{
    					span.innerHTML="";
    					return true;
    			}
    			
    			
    		}
    
    
          function forward(){
               
               location.href = "<%=request.getContextPath()%>/register_teacherform.action";
			}
 		function forwardtwo(){
               
               location.href = "<%=request.getContextPath()%>/register_studentform.action";
			}
</script>
  </head>
  
  <body>
 
   <div class="container-fluid"  >
    <!--  图片-->
    <div class="row" style="hieght:40%;">
    		 <div id="slidershow" class="carousel slide" data-ride="carousel" data-interval = 2000 data-pause = "hover" data-wrap="true"  width: 100%;height: 30%;margin-left:auto; margin-right:auto;">
    		 	 <!-- 设置图片轮播的顺序 -->
    		 	 <ol class="carousel-indicators">
    		 		 	 <li class="active" data-target="#slidershow" data-slide-to="0" ></li>
    		 		 	 <li data-target="#slidershow" data-slide-to="1"></li>
    		 		 	 <li data-target="#slidershow" data-slide-to="2"></li>
    		 	 </ol>		
    		 	 <!--设置轮播的图片-->	
    		 	<div class="carousel-inner">
    		 		  <div class="item active">
    		 		 	 <img src="${pageContext.request.contextPath}/image/1.jpg" alt="cat1">
    		 		 </div>		
    		 		 <div class="item">
    		 		 	<img src="${pageContext.request.contextPath}/image/2.jpg" alt="cat2">
    		 		  </div>	
    		 		<div class="item">	
    		 		 	<img src="${pageContext.request.contextPath}/image/3.jpg" alt="cat3">
    		 		</div>	
    		 	</div>	
    		 		 	<a class="left carousel-control" href="#slidershow" role="button" data-slide="prev" >
    		 		 	<span class="glyphicon glyphicon-chevron-left"></span>	
    		 		 	</a>
						 <a class="right carousel-control" href="#slidershow" role="button" data-slide="next">	
	     				 <span class="glyphicon glyphicon-chevron-right"></span>	
	          			 </a> 		
	           </div>

  		<!-- <div class="row" style="hieght:30%;">
 				<div class="col-md-12">
 				<img alt="" src="" height="30%">
 				</div>
  				-->
  		</div> 
  		<!--内容  -->
  		<div class="row" style="height:10%;">
 						 <nav class="navbar" ><!-- navbar-inverse -->
            				<div class="navbar-collapse" style="background-color:#F0F0F0;">
               					 <ul class="nav navbar-nav">
                 					   <li class="active"><a href="#">语文</a></li>
                    				   <li><a href="#">数学</a></li>
                  					   <li><a href="#">英语</a></li>
                  					   <li><a href="#">化学</a></li>
                  					   <li><a href="#">政治</a></li>
                  					   <li><a href="#">历史</a></li>
                  					   <li><a href="#">生物</a></li>
                  					   <li><a href="#">物理</a></li>
                  					   <li><a href="#">地理</a></li>
               					 </ul>
             			    </div>
       					 </nav>
 					</div>
  		<div class="row" style="height:50%; background-color: #ffffff" >
  		<!--左边  -->
 				<div class="col-md-7">
 				<!-- 导航条 -->
 					<!-- <div class="row" >
 						 <nav class="navbar" >navbar-inverse
            				<div class="navbar-collapse" style="background-color:#F0F0F0;">
               					 <ul class="nav navbar-nav">
                 					   <li class="active"><a href="#">语文</a></li>
                    				   <li><a href="#">数学</a></li>
                  					   <li><a href="#">英语</a></li>
                  					   <li><a href="#">化学</a></li>
                  					   <li><a href="#">政治</a></li>
                  					   <li><a href="#">历史</a></li>
                  					   <li><a href="#">生物</a></li>
                  					   <li><a href="#">物理</a></li>
                  					   <li><a href="#">地理</a></li>
               					 </ul>
             			    </div>
       					 </nav>
 					</div> -->
 					<!-- 表格 -->
 					<div class="row" ">
 					<!-- 左 -->
 						<div class="col-md-5 ">
 						<form action="">
 						<label>教员库<a><<更多</a></label>
 						<table class="table table-striped" style="background-color:ffffff ">
  							<tr>
 									<td>课程</td>
 									<td>地区</td>
 									<td>发布时间</td>
 									<td>操作</td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
						</table>
 						</form>
 							
 						</div>
 						<!-- 右 -->
 						<div class="col-md-5 col-md-offset-1" >
 							<label>学员库 <a><<更多</a></label>
 							<table class="table table-striped" style="background-color:ffffff ">
  							<tr>
 									<td>课程</td>
 									<td>地区</td>
 									<td>发布时间</td>
 									<td>操作</td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
 								<tr>
 									<td>语文</td>
 									<td>南城</td>
 									<td>2019.12.02</td>
 									<td><a>详情</a></td>
 									
 								</tr>
						</table>
 						</form>
 						</div>
 					</div>
 				</div>
 				<!-- 右边 -->
  				<div class="col-md-5" style="background-color:#ffffff;">
  						<form  action="${pageContext.request.contextPath}/login.action" method="post"   class="form-horizontal" style="margin-top: 5rem;background-color:#ffffff "   onsubmit="return check()">
  					<%-- <form class="form-horizontal" style="margin-top: 5rem;background-color:#ffffff " action="${pageContext.request.contextPath}/login.action" onsubmit="return check()" > --%>
  						<span id="msg"><font color="red">${sessionScope.msg }</font></span>
  						<div class="form-group">
   							 <label for="inputEmail3" class="col-sm-2 control-label">账号：</label>
    							<div class="col-sm-10">
     								 <input type="text" class="form-control" id="username" name="username" value="${sessionScope.user }" placeholder="账号">
   								 </div>
 						 </div>
  						<div class="form-group">
   							 <label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
   								 <div class="col-sm-10">
     								 <input type="password" class="form-control" id="password" name="password" value="${sessionScope.password }" placeholder="密码">
   								 </div>
  						</div>
  						<div class="form-group">
    						<div class="col-sm-offset-2 col-sm-10">
      							<div class="radio">
      						 		<label>
   									 <input type="radio" name="role" id="optionsRadios1" value="student" checked>学员
  										
 									 </label>
       								<label>
   									
  										<input type="radio" name="role" id="optionsRadios1" value="teacher" >教员
 									 </label>
       								 <label>
          							
          							<input type="button" class="btn btn-info" name="re" value="成为教员" onclick="forward()"> 
       								 </label>
       								 <label>
          							
          							<input type="button" class="btn btn-info" name="red" value="成为学员" onclick="forwardtwo()"> 
       								 </label>
     							 </div>
    						</div>
 						 </div>
  						<div class="form-group">
    						<div class="col-sm-offset-2 col-sm-10">
     							 <button type="submit" class="btn btn-primary">登录</button>
    						</div>
 						 </div>
					</form>
					<img src="${pageContext.request.contextPath}/image/4.png"  class="img-rounded">
  				</div>
  		</div>
  		
</div>
  </body>
</html>
