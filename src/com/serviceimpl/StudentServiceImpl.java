package com.serviceimpl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.HashMap;
import java.util.Map;

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
	public Map<String, String> addstudent(Student student) {
		Map<String, String> map=new HashMap<String, String>();
		if(studentDao.ishave(student.getStudent_user_name())<=0){
			if(student.getStudent_user_name()!=null){
				if(student.getStudent_user_password()!=null){
					if(student.getStudent_telephone()!=null){
						if(student.getStudent_atcity()!=null){
							if(student.getStudent_street()!=null){
								if(student.getStudent_region()!=null){
									if(student.getStudent_card()!=null){
										if(student.getStudent_card_image()!=null){
											if(student.getStudent_name()!=null){
												if(student.getStudent_descr()!=null){
													studentDao.addstudent(student);
													map.put("msg", "注册成功!!请在两个工作日后再使用此账号登录！");
													map.put("stats","1");
												}else{
													map.put("msg", "注册不成功！自我描述不能为空");
													map.put("stats","0");
												}
											}else{
												map.put("msg", "注册不成功！真实姓名不能为空");

												map.put("stats","0");
											}
										}else{
											map.put("msg", "注册不成功！请选择上传身份证正面图");
											map.put("stats","0");
										}
									}else{
										map.put("msg", "注册不成功！请填写身份证号码");
										map.put("stats","0");
									}
								}else{
									map.put("msg", "注册不成功！所在区不能为空");
									map.put("stats","0");
								}
							}else{
								map.put("msg", "注册不成功！所在街道不能为空");
								map.put("stats","0");
							}
						}else{
							map.put("msg", "注册不成功！所在城市不能为空");
							map.put("stats","0");
						}
					}else{
						map.put("msg", "注册不成功！电话不能为空");
						map.put("stats","0");
					}
				}else{
					map.put("msg", "注册不成功！密码不能为空");
					map.put("stats","0");
				}
			}else{
				map.put("msg", "注册不成功！用户名不能为空");
				map.put("stats","0");
			}
		}
		
		else {
			map.put("msg", "注册不成功！该用户名已经存在");
			map.put("stats","0");
		}
		
		return map;
		
	}

	@Override
	public String ishave(String student_user_name) {
		int count=studentDao.ishave(student_user_name);
		String ishave=null;
		if(count>0){
			ishave="have";
		}
		
		return ishave;
	}

	

	
	
	
	
}
