package com.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.serviceimpl.LoginServiceImpl;
import com.serviceimpl.TeacherServiceImpl;

@Controller
public class LogoinController {
	@Autowired
	LoginServiceImpl loginservice;
	
	@RequestMapping("/login")
	public String  login(HttpServletRequest request,HttpSession session,String username,String role,String password){
		System.out.println(username+role+password);
		Map<String, String> result=loginservice.login(username, password, role);
		if("0".equals(result.get("loginstat"))){
			session.setAttribute("msg", result.get("msg"));
			session.setAttribute("user", username);
			session.setAttribute("password", password );
			
			return "redirect:index.jsp";
		}else{
			session.setAttribute("msg","");
			session.setAttribute("user", username);
			return "in";
		}
		
	}
	
	@RequestMapping("/loginout")
	public String  loginout(HttpServletRequest request,HttpSession session){
		session.invalidate();
		return "redirect:index.jsp";
	}
	
}
