package com.ssc.service;

public interface CommentService {
	
	/** 댓글 추가 */
	public void insertCommon(CommentService common) throws Exception;
	
	/** 댓글 수정 */
	public void updateCommon(CommentService common) throws Exception;

	/** 댓글 삭제 */
	public void deleteCommon(CommentService common) throws Exception;

	/** 댓글 읽기 */
	public int selectCommon(CommentService common) throws Exception;
	
}
