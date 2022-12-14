package com.kosta.clothes.service;

import java.util.List;
import java.util.Map;

import com.kosta.clothes.bean.Business;
import com.kosta.clothes.bean.PageInfo;
import com.kosta.clothes.bean.Sell;
import com.kosta.clothes.bean.Sharing;
import com.kosta.clothes.bean.Users;



public interface MypageService {
	List<Sell> getSellList(Integer userno, int page, PageInfo pageInfo) throws Exception;
	List<Sharing> getSharingList(Integer userno, int spage, PageInfo spageInfo) throws Exception;
	List<Sell> getBuySellList(Integer userno, int bspage, PageInfo bspageInfo) throws Exception;
	List<Sharing> getBuySharingList(Integer userno, int ppage, PageInfo ppageInfo) throws Exception;

	List<Users> getSellapplylist(Integer ino) throws Exception;
	List<Users> getSharingapplylist(Integer sno) throws Exception;

	void selectSellApply(Integer userno, Integer ino) throws Exception;
	void selectSharingApply(Integer userno, Integer sno) throws Exception;

	String uintroduce(String introduce,Integer userno) throws Exception;
	String bintroduce(String introduce, Integer bno) throws Exception;
	
	void cancelDeal(Integer ino) throws Exception;
	void cancelSharingDeal(Integer sno) throws Exception;
	void completeDeal(Integer ino) throws Exception;
	void completeSeDeal(Integer ino) throws Exception;
	void completeSharingDeal(Integer sno) throws Exception;
	void completeShDeal(Integer sno) throws Exception;
	
	void sendIReview(Map map) throws Exception;
	void sendSReview(Map map) throws Exception;
	void sendUapplyReview(Map map) throws Exception;
	void uapplyReviewStatus(Integer ano) throws Exception;
	//
	Users getMypage(Integer userno) throws Exception;
	
	//userno 조건으로 좋아요 누른 무료나눔글 정보 조회
	List<Sharing> getLikeSharingList(Integer userno) throws Exception;
	//userno 조건으로 좋아요 누른 개인판매글 정보 조회
	List<Sell> getLikeSellList(Integer userno) throws Exception;
	//userno 조건으로 좋아요 누른 업체 정보 조회
	List<Business> getLikeBusinessList(Integer userno) throws Exception;
	
	//무료나눔 좋아요 취소
	void deletesLike(Integer userno, Integer sno) throws Exception;
	//개인판매 좋아요 취소
	void deleteiLike(Integer userno, Integer ino) throws Exception;
	//업체 좋아요 취소
	void deletebLike(Integer userno, Integer bno) throws Exception;
}


