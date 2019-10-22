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

  </head>
  
  <body>
   <form action="${pageContext.request.contextPath}/register_teacher.action" method="post"  >
   	<table border="1" width="50%" align="center">
   		<tr>
   			<td>账号</td>
   			<td><input type="text" name="Teacher_user_name" /></td>
   		</tr>
   		<tr>
   			<td>密码</td>
   			<td><input type="password" name="teacher_user_password"  /></td>
   		</tr>
   		<tr>
   			<td>真实姓名</td>
   			<td><input type="text" name="Teacher_name" /></td>
   		</tr>
   		
   		<tr>
   			<td>性别</td>
   			<td>
   			<input type="radio" name="teacher_sex" value="男" checked="checked" />男
   			<input type="radio" name="teacher_sex" value="女" />女
   			</td>
   			
   		</tr>
   		<tr>
   			<td>联系电话</td>
   			<td><input type="text" name="teacher_telephone" /></td>
   		</tr>
   		<tr>
   			<td>所在市</td>
   			<td><input type="text" name="teacher_atcity" value="东莞市" readonly="readonly" /></td>
   		</tr>
   		<tr>
   			<td>所在区</td>
   			<td><input type="text" name="teacher_region"/></td>
   		</tr>
   		<tr>
   			<td>所在街道</td>
   			<td><input type="text" name="teacher_street"/></td>
   		</tr>
   		<tr>
   			<td>身份证号码</td>
   			<td><input type="text" name="teacher_card"/></td>
   		</tr>
   		<tr>
   			<td>上传身份证正面图</td>
   			<td><input type="file" name="teacher_card_image"/></td>
   		</tr>
   		
   		<tr>
   			<td>个人描述</td>
   			<td><input type="text" name="teacher_descr"/></td>
   		</tr>
   		<tr>
   			<td>是否接受预约</td>
   			<td>
   			<input type="radio" name="isorder" value="0" checked="checked" />是
   			<input type="radio" name="isorder" value="1" />否
   			</td>
   			
   		</tr>
   		
   	</table>
   	<input type="submit" value="提交"/>
   </form>
   
   	
  </body>
</html>
