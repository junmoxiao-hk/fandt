package com.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.serviceimpl.TeacherService;

public class ApplicationCon {
	
	public static void main(String[] args) {
		ApplicationContext app=new ClassPathXmlApplicationContext("Application-config.xml");
		TeacherService tea=(TeacherService) app.getBean("teacherservice");
		System.out.println(tea.getteache(1));
	}
	
		
	
}
