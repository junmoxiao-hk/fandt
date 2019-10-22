<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	window.onload=function(){
		var but=document.getElementById("but");
		but.onclick=function(){
			var request=new XMLHttpRequest();
			request.open("get", "${pageContext.request.contextPath}/names.action");
			request.send(null);
			request.onreadystatechange=function(){
					if(request.readyState==4){
					if(request.status==200||request.status==304){
						alert(request.statusText);
					}
				}
			}
			
		}
	}
	</script>

  </head>
  
  <body>
  注册成功！！！<br>
 	<table>
 		<tr>
   			<td>所教课程</td>
   			<td>
   				<select name="teacher_subject" >
   					<option selected="selected" >选择课程</option>
   					<option  value="语文" >语文</option>
   					<option  value="数学" >数学</option>
   					<option  value="英语" >英语</option>
   					<option  value="生物" >生物</option>
   					<option  value="政治" >政治</option>
   					<option  value="化学" >化学</option>
   					<option  value="历史" >历史</option>
   					<option  value="物理" >物理</option>
   					<option  value="地理" >地理</option>

   				</select>
   			</td>
   		</tr>
   		<tr>
   			<td>授课地址</td>
   			<td><input type="text" name="teacher_place"/></td>
   		</tr>
   		<tr>
   			<td>授课时间</td>
   			<td><input type="text" name="teacher_time"/></td>
   		</tr>
   		<tr>
   			<td>授课时长</td>
   			<td><input type="text" name="teacher_time_long"/></td>
   		</tr>
   		<tr>
   			<td>授课费用</td>
   			<td><input type="text" name="teacher_reward"/></td>
   		</tr>
 		
 	</table>
 	<input type="button" value="请求" id="but" />
  </body>
</html>
