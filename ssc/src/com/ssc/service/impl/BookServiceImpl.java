package com.ssc.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.Logger;

import com.ssc.model.Book;
import com.ssc.service.BookService;

public class BookServiceImpl implements BookService{
	
	/** 처리 결과를 기록할 Log4J 객체 생성 */
	// --> import org.apache.logging.log4j.Logger;
	Logger logger;

	/** MyBatis */
	// --> import org.apache.ibatis.session.SqlSession
	SqlSession sqlSession;

	/** 생성자를 통한 객체 생성 */
	public BookServiceImpl(SqlSession sqlSession, Logger logger) {
		this.sqlSession = sqlSession;
		this.logger = logger;
	}

    /** 예약 상세조회 */
	@Override
	public Book selectBook(Book book) throws Exception {
		Book result = null;
		
		try {
			result = sqlSession.selectOne("BookMapper.selectBook", book);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}

	/** 예약 조회 리스트 */
	@Override
	public List<Book> selectBookList(Book book) throws Exception {
		List<Book> result = null;
		
		try {
			result = sqlSession.selectList("BookMapper.selectBookList", book);
			if (result == null) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		
		return result;
	}
	
	/** 예약 추가 */
	@Override
	public void insertBook(Book book) throws Exception {
		try {
			int result = sqlSession.insert("BookMapper.insertBook", book);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			sqlSession.rollback();
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		} finally {
			sqlSession.commit();
		}
	}
	
	/** 예약 수정 */
	@Override
	public void updateBook(Book book) throws Exception {
		try {
			int result = sqlSession.update("BookMapper.updateBook", book);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			sqlSession.rollback();
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		} finally {
			sqlSession.commit();
		}
	}
	
	/** 예약 삭제 */
	@Override
	public void deleteBook(Book book) throws Exception {
		try {
			int result = sqlSession.delete("BookMapper.deleteBook", book);
			if (result == 0) {
				throw new NullPointerException();
			}
		} catch (NullPointerException e) {
			sqlSession.rollback();
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			sqlSession.rollback();
			logger.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		} finally {
			sqlSession.commit();
		}
	}
}
