package com.test;

import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

import javax.jms.Session;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.Dao.TeacherDao;
import com.pojo.Teacher;

public class Mybatistest {
	
	@Test
	public void linkdatabase(){
		/*SqlSessionFactory sqlfFactory=null;
		String resouce="Mybatis-config.xml";
		Reader reader;
		try {
			reader = Resources.getResourceAsReader(resouce);
			 sqlfFactory=new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		SqlSession session=sqlfFactory.openSession();
		Teacher teacher=session.selectOne("selectbyid",1);
		System.out.println(teacher);
		session.close();
		
		TeacherDao mapper=session.getMapper(TeacherDao.class);
		System.out.println(mapper.selectbyid(1));*/
		
	}
	
	
}
