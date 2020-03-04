package com.service;

import java.util.Map;

import com.pojo.Student;
import com.pojo.Teacher;

public interface StudentService {
	
	public Map<String, String> addstudent(Student student);
	public String ishave(String student_user_name);
	
	
}
