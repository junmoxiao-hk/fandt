package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.TeacherDao;
import com.pojo.Teacher;

@Service("teacherservice")
public class TeacherServiceImpl implements com.service.TeacherService {
	@Autowired
	TeacherDao teacherDao;

	@Override
	public void addteacher(Teacher teacher) {
		teacherDao.addteacher(teacher);
		
	}
	
	
	
}
