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


@WebServlet("/book1.do")
public class Book2 extends BaseController {
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
		
		Zone zone = new Zone();
		List<Zone> item = new ArrayList<Zone>();
		try {
			item = zoneService.selectZoneList(zone);
		} catch (NullPointerException e) {
			web.redirect(null, "Null값");
			return null;
		} catch (Exception e) {
			web.redirect(null, "오류");
			return null;
		} finally {
			sqlSession.close();	
		}
		
//		JSONArray array = new JSONArray();
//		
//		for (int i = 0; i < item.size(); i++) {
//			//배열인데 왜 put이냐.. json배열에 담아주기 존이름을  
//			array.put(item.get(i).getZoneName());
//		}
//		PrintWriter out = response.getWriter();
//		out.println(array);
//		System.out.println(array.toString());
//		
		
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("rt", "OK");
		data.put("item", item);
		
		ObjectMapper mapper = new ObjectMapper();
		mapper.writeValue(response.getWriter(), data);
		
		return null;
	}
}
