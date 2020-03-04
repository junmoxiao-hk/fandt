package com.serviceimpl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.TeacherDao;
import com.pojo.Teacher;

@Service("teacherservice")
public class TeacherServiceImpl implements com.service.TeacherService {
	@Autowired
	TeacherDao teacherDao;

	@Override
	public Map<String, String> addteacher(Teacher teacher) {
		Map<String, String> map=new HashMap<String, String>();
		if(teacherDao.ishave(teacher.getTeacher_user_name())<=0){
			if(teacher.getTeacher_user_name()!=null){
				if(teacher.getTeacher_user_password()!=null){
					if(teacher.getTeacher_telephone()!=null){
						if(teacher.getTeacher_atcity()!=null){
							if(teacher.getTeacher_street()!=null){
								if(teacher.getTeacher_region()!=null){
									if(teacher.getTeacher_card()!=null){
										if(teacher.getTeacher_card_image()!=null){
											if(teacher.getTeacher_name()!=null){
												if(teacher.getTeacher_descr()!=null){
													teacherDao.addteacher(teacher);
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
	/**
	 * 通过用户名查询用户是否存在
	 */
	@Override
	public String ishave(String  username) {
		int count=teacherDao.ishave(username);
		String ishave=null;
		if(count>0){
			ishave="have";
		}
		
		return ishave;
		
		
		
	}
	
	
	
	
}
