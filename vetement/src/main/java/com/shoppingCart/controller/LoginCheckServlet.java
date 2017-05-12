package com.shoppingCart.controller;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Writer out = response.getWriter();
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		if (session == null) {

			out.write("oops");
			out.flush();
			out.close();

		} else {
			//if (session.getAttribute("user") == null) {
			if (session.getAttribute("login_customer_info") == null) {		
				out.write("oops");
				out.flush();
				out.close();
			} 
//			else if (session.getAttribute("user").equals("authenticated"))
//				out.write("1");
			else {
				out.write("1");
//				out.write("oops");
//				out.flush();
//				out.close();
			}

		}

	}
}
