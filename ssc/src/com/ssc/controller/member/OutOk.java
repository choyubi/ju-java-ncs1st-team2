package com.ssc.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssc.dao.MyBatisConnectionFactory;
import com.ssc.helper.BaseController;
import com.ssc.helper.UploadHelper;
import com.ssc.helper.WebHelper;
import com.ssc.model.Comment;
import com.ssc.model.Document;
import com.ssc.model.User;
import com.ssc.service.CommentService;
import com.ssc.service.DocumentService;
import com.ssc.service.UserService;
import com.ssc.service.impl.CommentServiceImpl;
import com.ssc.service.impl.DocumentServiceImpl;
import com.ssc.service.impl.UserServiceImpl;



@WebServlet("/user/out_ok.do")
public class OutOk extends BaseController {
	
	private static final long serialVersionUID = 1L;
	
	
	/** (1) 사용하고자 하는 Helper 객체 선언 */
	Logger logger;
	SqlSession sqlSession;
	WebHelper web;
	UploadHelper upload;
	UserService userService;
	DocumentService documentService;
	CommentService commentService;

	@Override
	public String doRun(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		/** (2) 사용하고자 하는 Helper+Service 객체 생성 */
		logger = LogManager.getFormatterLogger(request.getRequestURI());
		sqlSession = MyBatisConnectionFactory.getSqlSession();
		web = WebHelper.getInstance(request, response);
		upload = UploadHelper.getInstance();
		userService = new UserServiceImpl(sqlSession, logger);
		documentService = new DocumentServiceImpl(sqlSession, logger);
		commentService = new CommentServiceImpl(sqlSession, logger);

		/** (3) 로그인 여부 검사 */
		// 로그인 중이 아니라면 탈퇴할 수 없다.
		if (web.getSession("loginInfo") == null) {
			web.redirect(web.getRootPath() + "/main.do", "로그인 후에 이용 가능합니다.");
			return null;
		}
		
		
/** 이미 마이페이지 들어올때 비밀번호를 받았으므로 검사안함 */
//		/** (4) 파라미터 받기 */
//		String userPw = web.getString("user_pw");
//		logger.debug("userPw=" + userPw);
//
//		if (userPw == null) {
//			sqlSession.close();
//			web.redirect(null, "비밀번호를 입력하세요.");
//			return null;
//		}

		/** (5) 서비스에 전달하기 위하여 파라미터를 Beans로 묶는다. */
		// 회원번호는 세션을 통해서 획득한 로그인 정보에서 취득.
		User loginInfo = (User) web.getSession("loginInfo");
		User user = new User();
		user.setuId(loginInfo.getuId());
//		user.setUserPw(userPw);
		
		// 게시판과의 참조 관계 해제를 위한 조건값 설정
		Document document = new Document();
		document.setUserId(loginInfo.getId());
		
		// 덧글과의 참조 관계 해제를 위한 조건값 설정
		Comment comment = new Comment();
		comment.setUserId(loginInfo.getId());

		
		logger.debug("==========="+loginInfo.getId());
		
		/** (6) Service를 통한 탈퇴 시도 */
		try {
//			// 비밀번호 검사 --> 비밀번호가 잘못된 경우 예외발생
//			userService.selectUserPasswordCount(user);
			
			// 참조관계 해제
			commentService.updateCommentUserOut(comment);
			documentService.updateDocumentUserOut(document);
			
			// 탈퇴처리
			userService.deleteUser(user);
		} catch (Exception e) {
			web.redirect(null, e.getLocalizedMessage());
			return null;
		} finally {
			sqlSession.close();
		}
		
		// 탈퇴되었다면 프로필 이미지를 삭제한다.
		upload.removeFile(loginInfo.getProfileImg());

		/** (7) 정상적으로 탈퇴된 경우 강제 로그아웃 및 페이지 이동 */
		web.removeAllSession();
		web.redirect(web.getRootPath() + "/main.do", "탈퇴되었습니다.");
		return null;
	}

}
