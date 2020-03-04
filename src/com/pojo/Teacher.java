package com.pojo;

import java.io.Serializable;

public class Teacher implements Serializable {
	
	int teacher_id;  				//主键
	String teacher_user_name;       //用户名
	String teacher_user_password;   //密码
	String teacher_name;			//真实姓名
	String teacher_sex ;			//性别
	String teacher_telephone ;		//电话号码
	String teacher_atcity ;			//所在城市
	String teacher_street ;			//所在街区
	String teacher_region ;			//所在街道
	String teacher_card ;			//身份证号码
	String teacher_card_image ;		//身份证照片
	String teacher_descr ;			//自我描述
	int isorder;					//是否接受预约
	int check_status;				//账号可用状态
	public int getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getTeacher_user_name() {
		return teacher_user_name;
	}
	public void setTeacher_user_name(String teacher_user_name) {
		this.teacher_user_name = teacher_user_name;
	}
	public String getTeacher_user_password() {
		return teacher_user_password;
	}
	public void setTeacher_user_password(String teacher_user_password) {
		this.teacher_user_password = teacher_user_password;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getTeacher_sex() {
		return teacher_sex;
	}
	public void setTeacher_sex(String teacher_sex) {
		this.teacher_sex = teacher_sex;
	}
	public String getTeacher_telephone() {
		return teacher_telephone;
	}
	public void setTeacher_telephone(String teacher_telephone) {
		this.teacher_telephone = teacher_telephone;
	}
	public String getTeacher_atcity() {
		return teacher_atcity;
	}
	public void setTeacher_atcity(String teacher_atcity) {
		this.teacher_atcity = teacher_atcity;
	}
	public String getTeacher_street() {
		return teacher_street;
	}
	public void setTeacher_street(String teacher_street) {
		this.teacher_street = teacher_street;
	}
	public String getTeacher_region() {
		return teacher_region;
	}
	public void setTeacher_region(String teacher_region) {
		this.teacher_region = teacher_region;
	}
	public String getTeacher_card() {
		return teacher_card;
	}
	public void setTeacher_card(String teacher_card) {
		this.teacher_card = teacher_card;
	}
	public String getTeacher_card_image() {
		return teacher_card_image;
	}
	public void setTeacher_card_image(String teacher_card_image) {
		this.teacher_card_image = teacher_card_image;
	}
	public String getTeacher_descr() {
		return teacher_descr;
	}
	public void setTeacher_descr(String teacher_descr) {
		this.teacher_descr = teacher_descr;
	}
	
	public int getIsorder() {
		return isorder;
	}
	public void setIsorder(int isorder) {
		this.isorder = isorder;
	}
	public int getCheck_status() {
		return check_status;
	}
	public void setCheck_status(int check_status) {
		this.check_status = check_status;
	}
	@Override
	public String toString() {
		return "Teacher [teacher_id=" + teacher_id + ", teacher_user_name=" + teacher_user_name
				+ ", teacher_user_password=" + teacher_user_password + ", teacher_name=" + teacher_name
				+ ", teacher_sex=" + teacher_sex + ", teacher_telephone=" + teacher_telephone + ", teacher_atcity="
				+ teacher_atcity + ", teacher_street=" + teacher_street + ", teacher_region=" + teacher_region
				+ ", teacher_card=" + teacher_card + ", teacher_card_image=" + teacher_card_image + ", teacher_descr="
				+ teacher_descr + ", isorder=" + isorder + ", check_status=" + check_status + "]";
	}
	
	
	
	
	
}
