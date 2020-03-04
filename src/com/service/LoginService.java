package com.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.pojo.Student;
import com.pojo.Teacher;

public interface LoginService {
	
	public Map<String, String> login(String username,String password,String role);

}
