package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Student;
import com.pojo.Teacher;
import com.serviceimpl.TeacherService;

@Controller
public class Testcontroller {
	@Autowired
	TeacherService teacherservice;
	
	@RequestMapping("/register_teacherform")
	public String register_teacherform(){
		
		
		return "register_teacher";
	}
	@RequestMapping("/register_studentform")
	public String register_studentform(){
		
		
		return "register_student";
	}
	@RequestMapping("/register_teacher")
	public String register_teacher(Teacher teacher){
		System.out.println(teacher.toString());
		
		return "success";
	}
	
	@RequestMapping("/register_student")
	public String register_student(Student student){
		System.out.println(student.toString());
		
		return "success";
	}
	
	@RequestMapping("/register_student")
	public String register_student(){
		
		
		return "success";
	}
	@RequestMapping("/login")
	public String  msg(HttpServletRequest request,HttpSession session,String username,String shenfen,String password){
		System.out.println(username+shenfen+password);
		session.setAttribute("user", username);
		return "success";
	}
	
	@RequestMapping("/names")
	public void  names(@ModelAttribute("request")HttpServletRequest request){
		
		List<String> list=new ArrayList<String>();
		list.add("sad");
		list.add("sads");
		list.add("sad");
		list.add("sadas");
		System.out.println("asd");
		request.setAttribute("names", list);
		request.setAttribute("name", "saasad");
		
		return ;
	}
	
	@RequestMapping("/aaa/regis")
	public String regis(){
		
		
		return "success";
	}
}
