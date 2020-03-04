<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 're.jsp' starting page</title>
    
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
	  
	  	var ishave="";
	  
		window.onload=function(){
		
			var usname=document.getElementById("usname");
			var pwd=document.getElementById("pwd");
			var name=document.getElementById("name");
			var tel=document.getElementById("tel");
			var city=document.getElementById("city");
			var reg=document.getElementById("reg");
			var stre=document.getElementById("stre");
			var car=document.getElementById("car");
			var img=document.getElementById("img");
			var self=document.getElementById("self"); 
			var span=document.getElementById("span_msg"); 
			
			
			function isnotnull(){
				span.innerHTML="<font color='red'></font>";
			}
			
		
				
			
			usname.onblur=function(){
				if(usname.value==""){
					span.innerHTML="<font color='red'>用户名不能为空</font>";
					
		          }else{
		          		var request=new XMLHttpRequest();
		          		var username=usname.value;
		          		var l="${pageContext.request.contextPath}/chect_username.action?username="+username
		          		request.open("get",l);
						request.setRequestHeader("ContentType","application/x-www-form-urlencoded");
						request.send(null);
						request.onreadystatechange=function(){
							//检查请求状态是否完成
							if(request.readyState==4){
								if(request.status==200||request.status==304){
									//打印响应结果
										 ishave=request.responseText
									
									//var msg=doucument.createTextNode(request.responseText);
										if("have"==ishave){
												span.innerHTML="<font color='red'>用户名已存在</font>";
											}else{
													span.innerHTML="<font color='red'></font>";
												}
									
									
									
								}
							}
								
						}
		          		
		          		
		          }
			}
			pwd.onblur=function(){
				if(pwd.value==""){
					span.innerHTML="<font color='red'>密码不能为空</font>";
		          }else{
		          	isnotnull();
		          }
			}
			name.onblur=function(){
				if(name.value==""){
					span.innerHTML="<font color='red'>真实姓名不能为空</font>";
		          }else{
		          		isnotnull();
		          }
			}
			tel.onblur=function(){
			
				if(tel.value==""){
				
					span.innerHTML="<font color='red'>联系方式不能为空</font>";
		          }else{
		          		isnotnull();
		          }
			}
			city.onblur=function(){
				if(city.value==""){
					span.innerHTML="<font color='red'>所在城市不能为空</font>";
		          }else{
		          		isnotnull();
		          }
			}
			reg.onblur=function(){
				if(reg.value==""){
					span.innerHTML="<font color='red'>所在区不能为空</font>";
		          }else{
		          		isnotnull();
		          }
			}
			stre.onblur=function(){
				if(stre.value==""){
					span.innerHTML="<font color='red'>所在街道不能为空</font>";
		          }else{
		          		isnotnull();
		          }
			}
			car.onblur=function(){
				if(car.value==""){
					span.innerHTML="<font color='red'>身份证号码不能为空</font>";
		          }else{
		          		if(car.value.length<18)
		          		{
		          			span.innerHTML="<font color='red'>身份证号码格式错误</font>";
		          		}else{
		          			isnotnull();
		          		}
		          		
		          }
			}
			self.onblur=function(){
				if(self.value==""){
					span.innerHTML="<font color='red'>自我描述不能为空</font>";
		          }else{
		          	isnotnull();
		          }
			}
			

			
			 img.onchange=function(){
			var request=new XMLHttpRequest;
				var fileName=img.value.substr(img.value.lastIndexOf("."));
				
				
				//var l="${pageContext.request.contextPath}"+geturl(username);
				
				request.open("get","${pageContext.request.contextPath}/chect_img.action?fileName="+fileName);
				request.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=UTF-8");
				request.send(null);
				request.onreadystatechange=function(){
							//检查请求状态是否完成
							if(request.readyState==4){
								if(request.status==200||request.status==304){
									//打印响应结果
									
									var isimg=request.responseText;
									
									if("no"==isimg){
										document.getElementById("span_msg").innerHTML="<font color='red'>请选择图片（格式为jpg或png）</font>";
									}else
										{
												isnotnull();
										}
									
									
									
									
								}
							}
								
						}
				
			} 
		}
		
function check(){
	
	var usname=document.getElementById("usname");
	var pwd=document.getElementById("pwd");
	var name=document.getElementById("name");
	var tel=document.getElementById("tel");
	var city=document.getElementById("city");
	var reg=document.getElementById("reg");
	var stre=document.getElementById("stre");
	var car=document.getElementById("car");
	var img=document.getElementById("img");
	var self=document.getElementById("self");
	var sbu=img.value.substr(img.value.lastIndexOf("."));
	
	
	if(usname.value==""){
			document.getElementById("span_msg").innerHTML="<font color='red'>用户名不能为空</font>";
			return false;
		}
		else if(pwd.value==""){
		
		document.getElementById("span_msg").innerHTML="<font color='red'>密码不能为空</font>";
			return false;}
		else if(name.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>真实姓名不能为空</font>";
			return false;}
		else if(tel.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>联系电话不能为空</font>";
			return false;}
		else if(city.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>所在城市不能为空</font>";
			return false;}
		else if(reg.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>所在区不能为空</font>";
			return false;}
		else if(stre.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>所在街道不能为空</font>";
			return false;}
		else if(car.value==""){
			
		document.getElementById("span_msg").innerHTML="<font color='red'>身份证号码不能为空</font>";
			return false;}
		else if(img.value==""||(sbu!=".jpg"&&sbu!=".png")){
		
		document.getElementById("span_msg").innerHTML="<font color='red'>请选择图片（格式为jpg或png）</font>";
			return false;}
		else if(self.value==""){
		
		document.getElementById("span_msg").innerHTML="<font color='red'>自我描述不能为空</font>";
			return false;}
			
		else if(ishave=="have"){
				
			document.getElementById("span_msg").innerHTML="<font color='red'>用户名已存在</font>";
						
			return false;
		}
		else {
			return true;
		}
		
	}
		
	</script>
	
    
  </head>
  
  <body style="background-image: url(${pageContext.request.contextPath}/image/bg.jpg);background-size:cover; ">
   <div class="container-fluid">
   		<div class="row" style="hieght:100%;">
   				<div class="col-md-10 col-md-offset-1">
   	<form  action="${pageContext.request.contextPath}/register_student.action" method="post"   enctype="multipart/form-data"   onsubmit="return check()">
   	 <span id="span_msg" ></span>
   	 <span>
   	 <h3><font color='red'>${requestScope.msgbyre}</font></h3>
   	 	
   	 </span>
   	<table class="table table-striped"  width="50%" align="center">
   	 <tr>
  		<div class="form-group" >
    		<td><label for="exampleInputEmail1">账号：</label></td>
    		<td><input type="text" class="form-control" id="usname" placeholder="账号" name="student_user_name"></td>
    		<td> <label for="exampleInputPassword1">密码：</label></td>
    		<td><input type="password" class="form-control" id="pwd" placeholder="Password" name="student_user_password"></td>
  		</div>
  	</tr>
  	<!-- <tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">密码：</label></td>
    		<td><input type="text" class="form-control" id="pwd" placeholder="Password" name="teacher_user_password"></td>
  		</div>
  	</tr>	 -->
  	<tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">真实姓名：</label></td>
    		<td><input type="text" class="form-control" id="name" name="student_name"></td>
    		
    		<td> <label for="exampleInputPassword1">联系电话：</label></td>
    		<td><input type="text" class="form-control" id="tel" name="student_telephone"></td>
  		</div>
  	</tr>	
  	<tr>
  			
  		<div class="radio">
  			<td> <label for="exampleInputPassword1">性别：</label></td>
    		<td>
    		<input type="radio" name="student_sex" id="teacher_sex" value="男" checked>男
    		<input type="radio" name="student_sex" id="teacher_sex" value="女" >女
    		</td>	
    		
    		<td> <label for="exampleInputPassword1">接受预约：</label></td>
    		<td>
    		<input type="radio" name="isorder"  value="0" checked>是
    		<input type="radio" name="isorder"  value="1" >否
    		</td> 
		</div>
  	</tr>	
  	<!-- <tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">联系电话：</label></td>
    		<td><input type="text" class="form-control" id="tel" name="teacher_telephone"></td>
  		</div>
  	</tr>	 -->
  	
  	<tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">所在市：</label></td>
    		<td><input type="text" class="form-control" id="city" name="student_atcity"></td>
    		<td> <label for="exampleInputPassword1">所在区：</label></td>
    		<td><input type="text" class="form-control" id="reg" name="student_region"></td>
  		</div>
  	</tr>	
  	<!-- <tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">所在街道：</label></td>
    		<td><input type="text" class="form-control" id="reg" name="teacher_region"></td>
  		</div>
  	</tr> -->
  	<tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">所在街道：</label></td>
    		<td><input type="text" class="form-control" id="stre" name="student_street"></td>
    		
    		<td> <label for="exampleInputPassword1">身份证号码：</label></td>
    		<td><input type="text" class="form-control" maxlength="18"  id="car" name="student_card"></td>
  		</div>
  	</tr>	
  	<!-- <tr>	
  		<div class="form-group" >
   			<td> <label for="exampleInputPassword1">身份证号码：</label></td>
    		<td><input type="text" class="form-control" id="car" name="teacher_card"></td>
  		</div>
  	</tr> -->	
  	
  	<tr>
  		<div class="form-group" >
    		<td><label for="exampleInputFile">身份证正面照</label></td>
    		<td><input type="file" id="img"  name="IDcard_image"></td>
    		
    		<td> <label for="exampleInputPassword1">个人描述：</label></td>
    		<td><textarea class="form-control"  id="self" rows="3" name="student_descr"></textarea></td>
   			 
 		 </div>
 	</tr> 
 	<!-- <tr>
 	
 	<div class="form-group" >
   			<td> <label for="exampleInputPassword1">个人描述：</label></td>
    		<td><textarea class="form-control"  id="self" rows="3" name="teacher_descr"></textarea></td>
  		</div>
  		
  	</tr>	 -->
 	<!-- <tr>	
  		<div class="radio">
  			<td> <label for="exampleInputPassword1">接受预约：</label></td>
    		<td>
    		<input type="radio" name="isorder"  value="0" checked>是
    		<input type="radio" name="isorder"  value="1" >否
    		</td>
   				 
  			<button type="submit" class="btn btn-default">注册</button>
		</div>
  	</tr> -->	
 	
 	 <tr>
 	
   			
    </tr>	 
  		
  	</table>
  	<button  type="submit" class="btn btn-default">注册</button>
</form>
   				</div>
   		</div>
   </div>
  </body>
</html>
