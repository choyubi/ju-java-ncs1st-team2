package com.ssc.controller.car;

import java.io.IOException;
import java.util.List;
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
import com.ssc.helper.FileInfo;
import com.ssc.helper.RegexHelper;
import com.ssc.helper.UploadHelper;
import com.ssc.helper.WebHelper;
import com.ssc.model.Car;
import com.ssc.service.CarService;
import com.ssc.service.FileService;
import com.ssc.service.impl.CarServiceImpl;
import com.ssc.service.impl.FileServiceImpl;


@WebServlet("/car_ok.do")
public class CarOk extends BaseController {
  

    private static final long serialVersionUID = -62796451649479736L;

    Logger logger;
    SqlSession sqlSession;
    WebHelper web;
    UploadHelper upload;
    CarService carService;
    FileService fileService;
    RegexHelper regex;
    
    @Override
    public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	logger = LogManager.getFormatterLogger(request.getRequestURL());
	web = WebHelper.getInstance(request, response);
	sqlSession = MyBatisConnectionFactory.getSqlSession();
	upload = UploadHelper.getInstance();
	carService = new CarServiceImpl(sqlSession, logger);
	fileService = new FileServiceImpl(sqlSession, logger);
	regex = RegexHelper.getInstance();
	
	try{
	    upload.multipartRequest(request);
	}catch(Exception e){
	    sqlSession.close();
	    web.redirect(null, "멀티파트데이터가 아닙니다.");
	    return null;
	}
	
	Map<String, String> paramMap = upload.getParamMap();
	String carId = paramMap.get("car_id");
	String carName = paramMap.get("car_name");
	String carKind = paramMap.get("car_kind");
	String carPay1 = paramMap.get("car_pay");
	String zoneName = paramMap.get("zone_name");
	
	logger.debug("carId=" + carId);
	logger.debug("carName=" + carName);
	logger.debug("carKind=" + carKind);
	logger.debug("carPay=" + carPay1);
	logger.debug("zoneName=" + zoneName);
	
	// 유효성 검사
	
	if (!regex.isValue(carName)) {
		sqlSession.close();
		web.redirect(null, "차 이름를 입력하세요.");
		return null;
	}
	
	if (!regex.isValue(carKind)) {
		sqlSession.close();
		web.redirect(null, "차종을 입력하세요.");
		return null;
	}
	
	if (!regex.isValue(carPay1)) {
		sqlSession.close();
		web.redirect(null, "차 요금을 입력하세요.");
		return null;
	}
	
	if (!regex.isValue(zoneName)) {
		sqlSession.close();
		web.redirect(null, "존이름을 입력하세요.");
		return null;
	}
	
	List<FileInfo> fileList = upload.getFileList();
	String carImage = null;
	if(fileList.size() > 0){
	    FileInfo info = fileList.get(0);
	    carImage = info.getFileDir() + "/" + info.getFileName();
	}
	
	logger.debug("carImage=" + carImage);
	
	int carPay = Integer.parseInt(carPay1);
	
	// 빈즈 셋팅
	Car car = new Car();
	car.setCarName(carName); 
	car.setCarKind(carKind);
	car.setCarPay(carPay);
	car.setZoneName(zoneName);
	car.setCarImage(carImage);
	
	
	
	try{
	    carService.insertCar(car);
	}catch(Exception e){
	    sqlSession.close();
	    web.redirect(null, e.getLocalizedMessage());
	    return null;
	}
	
	sqlSession.close();
	web.redirect(web.getRootPath() + "/??", "차 추가가 완료되었슴");
	
	
	
	
	
	return null;
    }
    
}
