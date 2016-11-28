package com.ssc.service;

import com.ssc.model.Comment;

public interface CommentService {
	
	/** 댓글 추가 */
	public void insertCommon(Comment commet) throws Exception;
	
	/** 댓글 수정 */
	public void updateCommon(Comment comment) throws Exception;

	/** 댓글 삭제 */
	public void deleteCommon(Comment comment) throws Exception;

	/** 댓글 읽기 */
	public int selectCommon(Comment comment) throws Exception;
	
}
