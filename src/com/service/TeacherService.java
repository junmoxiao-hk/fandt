package com.service;

import java.util.Map;

import com.pojo.Student;
import com.pojo.Teacher;

public interface TeacherService {
	
	public Map<String, String> addteacher(Teacher teacher);
	
	public String ishave(String  username);
	
}
