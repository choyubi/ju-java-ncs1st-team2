package com.ssc.controller.book;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssc.helper.BaseController;


@WebServlet("/book.do")
public class Book extends BaseController {
	private static final long serialVersionUID = -1186301444288244115L;

	@Override
	public String doRun(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "book/book";
	}
}
