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
import java.util.Map;
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
		
		
		return "registToteacher";
	}
	@RequestMapping("/register_studentform")
	public String register_studentform(){
		
		
		return "registTostudent";
	}
	/**
	 * 注册成为教员
	 * @param teacher 注册表单数据实体
	 * @param IDcard_image 上传图片
	 * @return
	 */
	@RequestMapping("/register_teacher")
	public String register_teacher(HttpServletRequest request,Teacher teacher,MultipartFile IDcard_image){
		
		Map<String, String> map = null;
		try {
			//获取文件名
			String imgnameString=IDcard_image.getOriginalFilename();
			System.out.println(imgnameString.substring(imgnameString.lastIndexOf(".")));
			String filename="D:\\datebyuser\\image\\"+UUID.randomUUID()+imgnameString.substring(imgnameString.lastIndexOf("."));
			File file=new File(filename);
			
			IDcard_image.transferTo(file);
			
			teacher.setTeacher_card_image(filename);
			
			//添加新教员
			map= teacherservice.addteacher(teacher);
			
			
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(map.get("stats").equals("1")){
				request.setAttribute("msgbyre", map.get("msg"));
				return "success";
			}else{
				request.setAttribute("msgbyre", map.get("msg"));
				return "registToteacher";
			}
			
		
	}
	/**
	 * 
	 * @param student
	 * @return
	 */
	@RequestMapping("/register_student")
	public String register_student(Student student,HttpServletRequest request,MultipartFile IDcard_image){
		Map<String, String> map = null;
		try {
			//获取文件名
			String imgnameString=IDcard_image.getOriginalFilename();
			System.out.println(imgnameString.substring(imgnameString.lastIndexOf(".")));
			String filename="D:\\datebyuser\\image\\"+UUID.randomUUID()+imgnameString.substring(imgnameString.lastIndexOf("."));
			File file=new File(filename);
			
			IDcard_image.transferTo(file);
			
			student.setStudent_card_image(filename);
			
			//添加新学员
			map= studentservice.addstudent(student);
			
			
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(map.get("stats").equals("1")){
				request.setAttribute("msgbyre", map.get("msg"));
				return "success";
			}else{
				request.setAttribute("msgbyre", map.get("msg"));
				return "registTostudent";
			}
	}
	
	/**
	 * 
	 * @param request
	 * @param session
	 * @param username
	 * @param shenfen
	 * @param password
	 * @return
	 */
	
	/**
	 * 校验上传文件格式是否正确
	 * @param fileName
	 * @param request
	 * @param response
	 */
	@RequestMapping("/chect_img")
	public void  chect_img(String fileName,HttpServletRequest request,HttpServletResponse response){
		try {
			
			
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
	/**
	 * 校验用户名是否已经存在
	 * @param username
	 * @param request
	 * @param response
	 */
	@RequestMapping("/chect_username")
	public void  chect_username(String username,HttpServletRequest request,HttpServletResponse response){
		try {
			
			System.out.println(username);
			String ishave;
			String ishave_teacher=teacherservice.ishave(username);
			String ishave_student=studentservice.ishave(username);
			if(ishave_teacher==null&&ishave_student==null){
				ishave="";
			}else{
				ishave="have";
			}
			PrintWriter out=response.getWriter();
			System.out.println(ishave_teacher);
			System.out.println(ishave_student);
			System.out.println(ishave);
			out.write(ishave);
			
			
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
