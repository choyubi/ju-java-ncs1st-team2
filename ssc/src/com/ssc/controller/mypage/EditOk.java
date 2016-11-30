package com.ssc.controller.mypage;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.ssc.dao.MyBatisConnectionFactory;
import com.ssc.helper.BaseController;
import com.ssc.helper.RegexHelper;
import com.ssc.helper.UploadHelper;
import com.ssc.helper.WebHelper;
import com.ssc.model.User;
import com.ssc.service.UserService;
import com.ssc.service.impl.UserServiceImpl;



@WebServlet("/EditOk")
public class EditOk extends BaseController {

    private static final long serialVersionUID = 2795858844506132691L;
    
    Logger logger;
    SqlSession sqlSession;
    WebHelper web;
    RegexHelper regex;
    UploadHelper upload;
    UserService userService;

    @Override
    public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	logger = LogManager.getFormatterLogger(request.getRequestURI());
	sqlSession = MyBatisConnectionFactory.getSqlSession();
	web = WebHelper.getInstance(request, response);
	regex = RegexHelper.getInstance();
	upload = UploadHelper.getInstance();
	userService = new UserServiceImpl(sqlSession, logger);
	
	// 로그인 검사
	User loginInfo = (User) web.getSession("loginInfo");
	
	if(loginInfo == null){
	    sqlSession.close();
	    web.redirect(web.getRootPath() + "/main.do", "로그인 후에 이용 가능합니다.");
	    return null;
	}
	
	try{
	    upload.multipartRequest(request);
	}catch(Exception e){
	    sqlSession.close();
	    web.redirect(null, "multipart 데이터가 아닙니다.");
	    return null;
	}
	
	// 맵에 값 추출
	Map<String, String> paramMap = upload.getParamMap();
	String uPw = paramMap.get("uPw");
	String newUPw = paramMap.get("new_u_pw");
	String newUPwRe = paramMap.get("new_u_pw_re");
	String name = paramMap.get("name");
	String email = paramMap.get("email");
	String tel = paramMap.get("tel");
	String gender = paramMap.get("gender");
	String postcode = paramMap.get("postcode");
	String addr1 = paramMap.get("addr1");
	String addr2 = paramMap.get("addr2");
	String imgDel = paramMap.get("img_del");
	
	logger.debug("uPw=" + uPw);
	logger.debug("newUPw=" + newUPw);
	logger.debug("newUPwRe=" + newUPwRe);
	logger.debug("name=" + name);
	logger.debug("email=" + email);
	logger.debug("tel=" + tel);
	logger.debug("gender=" + gender);
	logger.debug("postcode=" + postcode);
	logger.debug("addr1=" + addr1);
	logger.debug("addr2=" + addr2);
	logger.debug("imgDel=" + imgDel);
	
	return null;
    }
    
}
