package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Student;
import com.pojo.Teacher;
import com.serviceimpl.StudentServiceImpl;
import com.serviceimpl.TeacherServiceImpl;

@Controller
public class Testcontroller {
	@Autowired
	TeacherServiceImpl teacherservice;
	@Autowired
	StudentServiceImpl studentservice;
	
	@RequestMapping("/register_teacherform")
	public String register_teacherform(){
		
		
		return "register_teacher";
	}
	@RequestMapping("/register_studentform")
	public String register_studentform(){
		
		
		return "register_student";
	}
	@RequestMapping("/register_teacher")
	public String register_teacher(Teacher teacher,MultipartFile IDcard_image){
		System.out.println(teacher.toString());
		try {
			
			String imgnameString=IDcard_image.getOriginalFilename();
			System.out.println(imgnameString.substring(imgnameString.lastIndexOf(".")));
			String filename="D:\\datebyuser\\image\\"+UUID.randomUUID()+imgnameString.substring(imgnameString.lastIndexOf("."));
			File file=new File(filename);

			
				IDcard_image.transferTo(file);
				teacher.setTeacher_card_image(filename);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println(teacher.toString());

		teacherservice.addteacher(teacher);
		return "success";
	}
	
	@RequestMapping("/register_student")
	public String register_student(Student student){
		System.out.println(student.toString());
		studentservice.addstudent(student);
		return "success";
	}
	
	
	@RequestMapping("/login")
	public String  msg(HttpServletRequest request,HttpSession session,String username,String shenfen,String password){
		System.out.println(username+shenfen+password);
		session.setAttribute("user", username);
		return "success";
	}
	
	@RequestMapping("/chect_img")
	public void  chect_img(String fileName,HttpServletRequest request,HttpServletResponse response){
		try {
			
			System.out.println(fileName);
			PrintWriter out=response.getWriter();
			
			if(fileName==null||"".equals(fileName)){
				out.write("no");
			}else{
				String filetype=fileName.substring(fileName.lastIndexOf("."));
				if(!".jpg".equals(filetype)&&!".png".equals(filetype)){
					out.write("no");
				}
			}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	@RequestMapping("/chect_username")
	public void  chect_username(String username,HttpServletRequest request,HttpServletResponse response){
		try {
			
			System.out.println(username);
			PrintWriter out=response.getWriter();
			
			out.write("");
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	@RequestMapping("/aaa/regis")
	public String regis(){
		
		
		return "success";
	}
}
