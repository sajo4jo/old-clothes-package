package com.kosta.clothes.bean;

import java.sql.Date;

//개인 사용자 가입(VO)
public class Users {
	private Long no; //번호(가입 회원 수)
	private String userid; //(아이디)
	private String nickname; //닉네임
	private String password; //비밀 번호
	private String phone;//전화 번호
	private Long grade; //옷점(레벨)
	private Date joinDate; //날짜
	public Long getNo() {
		return no;
	}
	public void setNo(Long no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Long getGrade() {
		return grade;
	}
	public void setGrade(Long grade) {
		this.grade = grade;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public Users(Long no, String userid, String nickname, String password, String phone, Long grade, Date joinDate) {
		super();
		this.no = no;
		this.userid = userid;
		this.nickname = nickname;
		this.password = password;
		this.phone = phone;
		this.grade = grade;
		this.joinDate = joinDate;
	}
	public Users() {
		super();
	}
<<<<<<< HEAD
	@Override
	public String toString() {
		return "Users [no=" + no + ", userid=" + userid + ", nickname=" + nickname + ", password=" + password
				+ ", phone=" + phone + ", grade=" + grade + ", joinDate=" + joinDate + "]";
=======
	public Users(String email, String password) {
		super();
		this.email = email;
		this.password = password;
>>>>>>> e66b4b78ef2b59c90846da7fad90efd4ee664bf5
	}
	
	
	
}
