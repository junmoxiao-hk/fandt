package com.pojo;

public class Student {
	int student_id;
	String student_user_name;
	String student_user_password;
	String student_name;
	String student_sex ;
	String student_telephone ;
	String student_atcity ;
	String student_street ;
	String student_region ;
	String student_card ;
	String student_card_image ;
	String student_descr ;
	
	int check_status;

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

	public String getStudent_user_name() {
		return student_user_name;
	}

	public void setStudent_user_name(String student_user_name) {
		this.student_user_name = student_user_name;
	}

	public String getStudent_user_password() {
		return student_user_password;
	}

	public void setStudent_user_password(String student_user_password) {
		this.student_user_password = student_user_password;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_sex() {
		return student_sex;
	}

	public void setStudent_sex(String student_sex) {
		this.student_sex = student_sex;
	}

	public String getStudent_telephone() {
		return student_telephone;
	}

	public void setStudent_telephone(String student_telephone) {
		this.student_telephone = student_telephone;
	}

	public String getStudent_atcity() {
		return student_atcity;
	}

	public void setStudent_atcity(String student_atcity) {
		this.student_atcity = student_atcity;
	}

	public String getStudent_street() {
		return student_street;
	}

	public void setStudent_street(String student_street) {
		this.student_street = student_street;
	}

	public String getStudent_region() {
		return student_region;
	}

	public void setStudent_region(String student_region) {
		this.student_region = student_region;
	}

	public String getStudent_card() {
		return student_card;
	}

	public void setStudent_card(String student_card) {
		this.student_card = student_card;
	}

	public String getStudent_card_image() {
		return student_card_image;
	}

	public void setStudent_card_image(String student_card_image) {
		this.student_card_image = student_card_image;
	}

	public String getStudent_descr() {
		return student_descr;
	}

	public void setStudent_descr(String student_descr) {
		this.student_descr = student_descr;
	}

	public int getCheck_status() {
		return check_status;
	}

	public void setCheck_status(int check_status) {
		this.check_status = check_status;
	}

	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", student_user_name=" + student_user_name
				+ ", student_user_password=" + student_user_password + ", student_name=" + student_name
				+ ", student_sex=" + student_sex + ", student_telephone=" + student_telephone + ", student_atcity="
				+ student_atcity + ", student_street=" + student_street + ", student_region=" + student_region
				+ ", student_card=" + student_card + ", student_card_image=" + student_card_image + ", student_descr="
				+ student_descr + ", check_status=" + check_status + "]";
	}
	
	
}
