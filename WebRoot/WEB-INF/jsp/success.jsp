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
  
  <body >
 <h2> <font color="green">${requestScope.msgbyre}</font></h2>
 <a href="http://localhost:8080/fandt">返回首页</a>
  
 	
  </body>
</html>
