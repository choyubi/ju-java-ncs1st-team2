package com.ssc.controller.book;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.JSONArray;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssc.dao.MyBatisConnectionFactory;
import com.ssc.helper.BaseController;
import com.ssc.helper.WebHelper;
import com.ssc.model.Zone;
import com.ssc.service.ZoneService;
import com.ssc.service.impl.ZoneServiceImpl;


@WebServlet("/book.do")
public class Book extends BaseController {
	private static final long serialVersionUID = -1186301444288244115L;
	
	/** (1) 사용하고자 하는 Helper 객체 선언 */
	Logger logger;
	SqlSession sqlSession;
	WebHelper web;
	ZoneService zoneService;
	
	@Override
	public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/** (2) 사용하고자 하는 Helper+Service 객체 생성 */
		logger = LogManager.getFormatterLogger(request.getRequestURI());
		sqlSession = MyBatisConnectionFactory.getSqlSession();
		web = WebHelper.getInstance(request, response);
		zoneService = new ZoneServiceImpl(sqlSession, logger);
		
		
		return "book/book";
	}
}
