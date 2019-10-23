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
		if(img.value!=""){
			var Name=img.value; 
			var suffixIndex=fileName.lastIndexOf("."); 
			var suffix=fileName.substring(suffixIndex+1).toUpperCase();
		
		}
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
		else if(reg.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>所在区不能为空</font>";
			return false;}
		else if(stre.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>所在街道不能为空</font>";
			return false;}
		else if(car.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>身份证号码不能为空</font>";
			return false;}
		else if(img.value==""||suffix!="PNG"||suffix!="JPG"){
		document.getElementById("span_msg").innerHTML="<font color='red'>请选择图片（格式为jpg或png）</font>";
			return false;}
		else if(self.value==""){
		document.getElementById("span_msg").innerHTML="<font color='red'>自我描述不能为空</font>";
			return false;}
		else {
			return true;
		}
		
	}	