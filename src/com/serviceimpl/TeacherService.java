package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.TeacherDao;
import com.pojo.Teacher;

@Service("teacherservice")
public class TeacherService {
	@Autowired
	TeacherDao teacherDao;
	
	public Teacher getteache(int teacher_id){
		return teacherDao.selectbyid(teacher_id);
	}
	
}
