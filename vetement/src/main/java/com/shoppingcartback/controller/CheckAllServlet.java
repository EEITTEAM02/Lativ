package com.shoppingcartback.controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProductBack/CheckAll.do")
public class CheckAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckAllServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		Map<String,String> dealInformation = new LinkedHashMap<String,String>();
		session.setAttribute("dealInformation", dealInformation);
		
		String send_way = request.getParameter("send");
		String name_send = request.getParameter("name_send");
		String phone_send = request.getParameter("phone_send");
		String addr_send = request.getParameter("addr_send");
		String mail_send = request.getParameter("mail_send");
		String invoice = request.getParameter("invoice");
		String help_selected = request.getParameter("help_selected");
		
		dealInformation.put("send_way",send_way);
		dealInformation.put("name_send",name_send);
		dealInformation.put("phone_send",phone_send);
		dealInformation.put("addr_send",addr_send);
		dealInformation.put("mail_send",mail_send);
		dealInformation.put("invoice",invoice);
		dealInformation.put("help_selected",help_selected);
		
		response.sendRedirect(request.getContextPath()+"/ProductBack/CheckAll.jsp");
	}

}
