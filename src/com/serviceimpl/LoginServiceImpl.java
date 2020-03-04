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
import com.service.LoginService;
@Service("loginservice")
public class LoginServiceImpl implements LoginService {
	@Autowired
	StudentDao studentDao;
	@Autowired
	TeacherDao teacherDao;


	@Override
	public Map<String, String> login(String username, String password, String role) {
		Map<String, String> result=new HashMap<String, String>();
		
		//判断用户名啥时候为空
		if(username!=null&&username!=""){
			//判断用户是存在
			if(getuserbyusername(role, username)>0){
				if("teacher".equals(role)){
					Teacher user=teacherDao.loginselect(username);
					teacherlogin(user, result, password);
				}else{
					Student user=studentDao.loginselect(username);
					studentlogin(user, result, password);
				}
				
			}else{
				result.put("loginstat", "0");
				result.put("msg", "该用户不存在");
			}
		}else{
			result.put("loginstat", "0");
			result.put("msg", "用户名不能为空");
		}
		
		
		
		return result;
	}
	
	//根据身份和用户名查询用户
	public int getuserbyusername(String role,String username){
		int count;
		if("teacher".equals(role)){
			 count=teacherDao.ishave(username);
		}else{
			count=studentDao.ishave(username);
		}
		
		return count;
	}
	
	//教员登录检查
	public void teacherlogin(Teacher teacher ,Map<String, String> map,String password){
		//检查账号审核状态
		if(teacher.getCheck_status()>0){
			//检查密码是否为空
			if(password!=null&&password!=""){
				//检查密码是否正确
				if(teacher.getTeacher_user_password().equals(password)){
					map.put("loginstat", "1");
					map.put("msg", "登录成功！");
				}else{
					map.put("loginstat", "0");
					map.put("msg", "密码不正确！");
				}
			}else{
				map.put("loginstat", "0");
				map.put("msg", "密码不能为空");
			}
		}else{
			map.put("loginstat", "0");
			map.put("msg", "账号审核未通过");
		}
		
	}
	//学员登录检查
	public void studentlogin(Student student ,Map<String, String> map,String password){
		//检查账号审核状态
				if(student.getCheck_status()>0){
					//检查密码是否为空
					if(password!=null&&password!=""){
						//检查密码是否正确
						if(student.getStudent_user_password() .equals(password)){
							map.put("loginstat", "1");
							map.put("msg", "登录成功！");
						}else{
							map.put("loginstat", "0");
							map.put("msg", "密码不正确！");
						}
					}else{
						map.put("loginstat", "0");
						map.put("msg", "密码不能为空");
					}
				}else{
					map.put("loginstat", "0");
					map.put("msg", "账号审核未通过");
				}
		
	}
}
