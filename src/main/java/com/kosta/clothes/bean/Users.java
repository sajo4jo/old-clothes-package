package com.kosta.clothes.bean;

import java.sql.Date;

//개인 사용자 가입(VO)
public class Users {
	private Integer userno; //번호(가입 회원 수)
	private String userid; //(아이디)
	private String nickname; //닉네임
	private String password; //비밀 번호
	private String phone;//전화 번호
	private String joinDate; //날짜
	private String introduce; //마이페이지 소개 수정
	private String sect; //개인/사업자 구분

	public Integer getUserno() {
		return userno;
	}
	public void setUserno(Integer userno) {
		this.userno = userno;
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
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getSect() {
		return sect;
	}
	public void setSect(String sect) {
		this.sect = sect;
	}

	public Users() {
		super();
	}
	
	
	public Users(Integer userno, String userid, String nickname, String password, String phone, String joinDate,
			String introduce, String sect) {
		super();
		this.userno = userno;
		this.userid = userid;
		this.nickname = nickname;
		this.password = password;
		this.phone = phone;
		this.joinDate = joinDate;
		this.introduce = introduce;
		this.sect = sect;
	}
	@Override
	public String toString() {
		return "Users [userno=" + userno + ", userid=" + userid + ", nickname=" + nickname + ", password=" + password
				+ ", phone=" + phone + ", joinDate=" + joinDate + ", introduce=" + introduce + ", sect=" + sect + "]";
	}
	
	

}
