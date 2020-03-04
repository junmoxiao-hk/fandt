package com.Dao;

import com.pojo.Teacher;

public interface TeacherDao {
	public void addteacher(Teacher teacher);
	public int ishave(String teacher_user_name);
	public Teacher loginselect(String teacher_user_name);
}
