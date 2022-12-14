package com.kosta.clothes.service;


import java.util.List;
import java.util.Map;

import com.kosta.clothes.bean.Business;
import com.kosta.clothes.bean.Users;

public interface UsersService {

		public void certifiedPhoneNumber(String phone, String cerNum) throws Exception; //본인인증 
		public boolean checkId(String checknick) throws Exception; //닉네임 중복 확인[개인]
		public boolean checkBname(String checkname) throws Exception; //닉네임 중복 확인[업체]
		public boolean checkuserid(String checkuserid) throws Exception; //아이디 중복 확인[개인]
		public boolean businessidCheck(String businessidcheck) throws Exception; //아이디 중복 확인[업체]
		public void insertUsers(Users users) throws Exception;//회원가입[개인]
		public void insertBusiness(Business business) throws Exception;//회원가입[업체]

		public Users login(String userid,String password) throws Exception;//로그인[개인]
		public Business blogin(String businessid,String bpassword) throws Exception;//로그인[업체]
		
		public List<String> findUserId(String phone) throws Exception;//아이디 찾기[개인]
		public List<String> findBusinessId(String bphone) throws Exception;//아이디 조회[업체]
		
		public String checkUserIdnPhone(String userid, String phone) throws Exception;//아이디 전화번호 체크[개인]
		public String checkBusinessIdnPhone(String businessid, String bphone) throws Exception;//아이디 전화번호 체크[업체]
		
		public void changePass(String userid, String password) throws Exception;//비밀번호수정[개인]
		public void changebPass(String businessid, String bpassword) throws Exception;//비밀번호수정[업체]
		
		public boolean countPN(String phone) throws Exception;//번호로 가입된 아이디 수 체크
		
		public boolean checkupass(String id, String pass) throws Exception; //개인비밀번호 확인용
		public void modifyuser(Users user) throws Exception; //개인회원정보수정 
		public void deleteuser(Integer userno) throws Exception; //개인탈퇴
		
		public boolean checkbpass(String id, String pass) throws Exception; //업체비밀번호 확인용
		public void modifybusiness(Business business) throws Exception; //개인회원정보수정
		public void deletebusiness(Integer bno) throws Exception; //업체탈퇴
		
		public Users selectuAll(Integer userno) throws Exception;//유저넘버로 모든 정보 가져오기
		public Business selectbAll(Integer bno) throws Exception;//업체넘버로 모든 정보 가져오기
		
		
}
