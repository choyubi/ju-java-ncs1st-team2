package com.ssc.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

import com.ssc.model.File;
import com.ssc.service.FileService;

public class FileServiceImpl implements FileService {
	
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	Logger logger;
	/** MyBatis */
	SqlSession sqlSession;
	
	public FileServiceImpl(SqlSession sqlSession, Logger logger) {
		this.sqlSession = sqlSession;
		this.logger = logger;
	}

	@Override
	public void insertFile(File file) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<File> selectFileList(File file) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFileAll(File file) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public File selectFile(File file) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteFile(File file) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
