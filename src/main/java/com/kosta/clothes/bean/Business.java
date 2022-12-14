package com.kosta.clothes.bean;

import java.sql.Date;


//판매 업체 가입(VO)
public class Business {
	private Integer bno; //가입한 업체 수 표시
	private String bname; //상호명
	private String businessid; //업체 아이디
	private String baddress; //업체 주소
	private String bdetailadd;//상세 주소
	private String bkakaoid; //업체 오픈 카톡 아이디
	private String bphone; //업체대표 전화번호
	private String bpassword; //업체 비밀번호
	private String bnumber; //사업자 번호
	private Double bstar; //별점
	private Date regDate; //날짜
	private String sect;//개인과사업의 구분
	private Long reviewcount;		
	private Long likescheck;		
	private String category; //카테고리 종류
	private String bintroduce; //옷장소개
	
	
		
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Long getReviewcount() {
		return reviewcount;
	}
	public void setReviewcount(Long reviewcount) {
		this.reviewcount = reviewcount;
	}
	public Long getLikescheck() {
		return likescheck;
	}
	public void setLikescheck(Long likescheck) {
		this.likescheck = likescheck;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBusinessid() {
		return businessid;
	}
	public void setBusinessid(String businessid) {
		this.businessid = businessid;
	}
	public String getBaddress() {
		return baddress;
	}
	public void setBaddress(String baddress) {
		this.baddress = baddress;
	}
	public String getBdetailadd() {
		return bdetailadd;
	}
	public void setBdetailadd(String bdetailadd) {
		this.bdetailadd = bdetailadd;
	}
	public String getBkakaoid() {
		return bkakaoid;
	}
	public void setBkakaoid(String bkakaoid) {
		this.bkakaoid = bkakaoid;
	}
	public String getBphone() {
		return bphone;
	}
	public void setBphone(String bphone) {
		this.bphone = bphone;
	}
	public String getBpassword() {
		return bpassword;
	}
	public void setBpassword(String bpassword) {
		this.bpassword = bpassword;
	}
	public String getBnumber() {
		return bnumber;
	}
	public void setBnumber(String bnumber) {
		this.bnumber = bnumber;
	}
	
	public Double getBstar() {
		return bstar;
	}
	public void setBstar(Double bstar) {
		this.bstar = bstar;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public String getBintroduce() {
		return bintroduce;
	}
	public void setBintroduce(String bintroduce) {
		this.bintroduce = bintroduce;
	}

	
	
	public Business(String businessid, String bpassword) {
		super();
		this.businessid = businessid;
		this.bpassword = bpassword;
	}

	

	public String getSect() {
		return sect;
	}
	public void setSect(String sect) {
		this.sect = sect;
	}
	
	public Business(Integer bno, String bname, String businessid, String baddress, String bdetailadd, String bkakaoid,
			String bphone, String bpassword, String bnumber, Double bstar, Date regDate, String sect, Long reviewcount,
			Long likescheck, String category, String bintroduce) {
		super();
		this.bno = bno;
		this.bname = bname;
		this.businessid = businessid;
		this.baddress = baddress;
		this.bdetailadd = bdetailadd;
		this.bkakaoid = bkakaoid;
		this.bphone = bphone;
		this.bpassword = bpassword;
		this.bnumber = bnumber;
		this.bstar = bstar;
		this.regDate = regDate;
		this.sect = sect;
		this.reviewcount = reviewcount;
		this.likescheck = likescheck;
		this.category = category;
		this.bintroduce = bintroduce;
	}
	
	
	public Business() {
		super();
	}
	@Override
	public String toString() {
		return "Business [bno=" + bno + ", bname=" + bname + ", businessid=" + businessid + ", baddress=" + baddress
				+ ", bdetailadd=" + bdetailadd + ", bkakaoid=" + bkakaoid + ", bphone=" + bphone + ", bpassword="
				+ bpassword + ", bnumber=" + bnumber + ", bstar=" + bstar + ", regDate=" + regDate + ", sect=" + sect
				+ ", reviewcount=" + reviewcount + ", likescheck=" + likescheck + ", category=" + category
				+ ", bintroduce=" + bintroduce + "]";
	}
	
}
