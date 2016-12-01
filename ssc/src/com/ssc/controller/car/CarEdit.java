package com.ssc.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssc.helper.BaseController;
import com.ssc.helper.WebHelper;


@WebServlet("/car_edit.do")
public class CarEdit extends BaseController {


    private static final long serialVersionUID = -7357296657805089971L;
    
    WebHelper web;
    @Override
    public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	web = WebHelper.getInstance(request, response);
	
	
	return "car/car_edit";
    }
    
}
