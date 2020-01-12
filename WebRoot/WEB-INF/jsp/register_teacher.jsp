<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <script type="text/javascript" src="${pageContext.request.contextPath}/js/check.js"></script> 
	<script type="text/javascript">
	  
	  	var ishave="";
	  
		window.onload=function(){
		
			var usname=document.getElementById("usname");
			var pwd=document.getElementById("pwd");
			var name=document.getElementById("name");
			var tel=document.getElementById("tel");
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
		          		isnotnull();
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
		alert(ishave);
		document.getElementById("span_msg").innerHTML="<font color='red'>密码不能为空</font>";
			return false;}
		else if(name.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>真实姓名不能为空</font>";
			return false;}
		else if(tel.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>联系电话不能为空</font>";
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
		alert(ishave);
		alert(ishave=="have");
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
  
  <body>
  <form  action="${pageContext.request.contextPath}/register_teacher.action" method="post"   enctype="multipart/form-data"   onsubmit="return check()">
  	 <span id="span_msg" ></span>
  		<table border="1" width="50%" align="center">
   		<tr>
   			<td>账号</td>
   			<td><input id="usname" type="text" name="Teacher_user_name" /></td>
   		</tr>
   		<tr>
   			<td>密码</td>
   			<td><input id="pwd" type="password" name="teacher_user_password"  /></td>
   		</tr>
   		<tr>
   			<td>真实姓名</td>
   			<td><input id="name" type="text" name="Teacher_name" /></td>
   		</tr>
   		
   		<tr>
   			<td>性别</td>
   			<td>
   			<input  type="radio" name="teacher_sex" value="男" checked="checked" />男
   			<input  type="radio" name="teacher_sex" value="女" />女
   			</td>
   			
   		</tr>
   		<tr>
   			<td>联系电话</td>
   			<td><input id="tel" type="text" name="teacher_telephone" /></td>
   		</tr>
   		<tr>
   			<td>所在市</td>
   			<td><input id="city" type="text" name="teacher_atcity" value="东莞市" readonly="readonly" /></td>
   		</tr>
   		<tr>
   			<td>所在区</td>
   			<td><input id="reg" type="text" name="teacher_region"/></td>
   		</tr>
   		<tr>
   			<td>所在街道</td>
   			<td><input id="stre" type="text" name="teacher_street"/></td>
   		</tr>
   		<tr>
   			<td>身份证号码</td>
   			<td><input id="car" type="text" name="teacher_card"/></td>
   		</tr>
   		<tr>
   			<td>上传身份证正面图</td>
   			<td><input id="img" type="file" name="IDcard_image"  /></td>
   		</tr>
   		
   		<tr>
   			<td>个人描述</td>
   			<td><input id="self" type="text" name="teacher_descr"/></td>
   		</tr>
   		<tr>
   			<td>是否接受预约</td>
   			<td>
   			<input type="radio" name="isorder" value="0" checked="checked" />是
   			<input type="radio" name="isorder" value="1" />否
   			</td>
   			
   		</tr>
   		
   	</table>
   	<input type="submit" value="提交"          onclick="return check()" />
  </form>
 
  <%-- <form action="${pageContext.request.contextPath}/register_teacher.action" method="post"   enctype="multipart/form-data"   onsubmit="return check()">
  	 
  </form> --%>
 
  
   	
  </body>
</html>
