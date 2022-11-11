package com.kosta.clothes.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kosta.clothes.bean.FileVO;

@Mapper
@Repository
public interface FileDAO {
	void insertFileInfo(FileVO fileVo) throws Exception;
	void modifyFileInfo(FileVO fileVo) throws Exception;
	void deleteFileInfo(Integer sno) throws Exception;
}
