package com.ssc.controller.bbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssc.helper.BaseController;


@WebServlet("/bbs/document_write.do")
public class DocumentWrite extends BaseController {
	private static final long serialVersionUID = -6555558569175786287L;

	@Override
	public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "bbs/document_write";
	}
}
