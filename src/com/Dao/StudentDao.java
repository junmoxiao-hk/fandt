package com.Dao;

import com.pojo.Student;
import com.pojo.Teacher;

public interface StudentDao {
	public void addstudent(Student student);
	public int ishave(String student_user_name);
	public Student loginselect(String student_user_name);
}
