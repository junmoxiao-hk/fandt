package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.StudentDao;
import com.Dao.TeacherDao;
import com.pojo.Student;
import com.pojo.Teacher;
import com.service.StudentService;

@Service("studentservice")
public class StudentServiceImpl implements StudentService {
	@Autowired
	StudentDao studentDao;

	@Override
	public void addstudent(Student student) {
		studentDao.addstudent(student);
		
	}

	
	
	
	
}
