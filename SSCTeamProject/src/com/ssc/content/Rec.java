package com.ssc.content;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssc.helper.BaseController;


@WebServlet("/rec.do")
public class Rec extends BaseController {
	private static final long serialVersionUID = 7593346503203591263L;

	@Override
	public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "content/rec";
	}
}
