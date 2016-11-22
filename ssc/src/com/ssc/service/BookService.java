package com.ssc.service;

import com.ssc.model.Book;

public interface BookService {

	/**
	 * 예약 상세보기
	 */
	public Book selectBook(Book book) throws Exception;

	/**
	 * 예약 리스트 보기
	 */
	public Book selectBookList(Book book) throws Exception;

	/**
	 * 예약 추가
	 */
	public void insertBook(Book book) throws Exception;

	/**
	 * 예약 수정
	 */
	public void updateBook(Book book) throws Exception;

	/**
	 * 예약 삭제
	 */
	public void deleteBook(Book book) throws Exception;

}
