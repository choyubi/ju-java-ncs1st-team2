package com.ssc.service;

import java.util.List;

import com.ssc.model.Comment;

public interface CommentService {
	
	/** 댓글 추가 */
	public void insertComment(Comment comment) throws Exception;
	
	/** 댓글 수정 */
	public void updateComment(Comment comment) throws Exception;

	/** 댓글 삭제 */
	public void deleteComment(Comment comment) throws Exception;

	/** 하나의 댓글 읽기 */
	public Comment selectComment(Comment comment) throws Exception;
	
	/** 하나의 게시물에 속한 여러개의 댓글 읽기 */
	public List<Comment> selectCommentList(Comment comment) throws Exception;
}
