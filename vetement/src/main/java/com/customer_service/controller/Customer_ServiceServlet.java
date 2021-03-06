package com.customer_service.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.customer_service.model.*;

public class Customer_ServiceServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setHeader("Access-Control-Allow-Origin", "*");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("utf-8");
		
		
		HttpSession session = req.getSession();
		PrintWriter out = res.getWriter();
		Customer_ServiceService customer_serviceSvc = new Customer_ServiceService();
		String action = req.getParameter("action");
		
		System.out.println(action);
		
		if ("ins".equals(action)){
			
			Integer customerId = Integer.parseInt(req.getParameter("customerId"));
			System.out.println(customerId);
			
			String title_service = req.getParameter("title_service");
			System.out.println(title_service);
	
			
			String content_service = req.getParameter("content_service");
			System.out.println(content_service);
	
			
			String receive_date = req.getParameter("receive_date");
			System.out.println(receive_date);
	
			java.sql.Date pubdate = null;
			
			try {
				pubdate =java.sql.Date.valueOf(receive_date);
			} catch (IllegalArgumentException e) {
				
			}
			
			Customer_ServiceVO customer_serviceVO = new Customer_ServiceVO();
			
			customer_serviceVO.setCustomerId(customerId);
			customer_serviceVO.setTitle_service(title_service);
			customer_serviceVO.setContent_service(content_service);
			customer_serviceVO.setReceive_date(pubdate);
			
			
			customer_serviceVO = customer_serviceSvc.addCustomer_Service(customerId,title_service,content_service,"",pubdate);

			session.setAttribute("aaa", "del3");
//			res.sendRedirect("/vetement/memberPage.jsp");
			return;
		}
		try{
			if ("upd".equals(action)){
				Integer no_service = new Integer(req.getParameter("no_service").trim());
				String title_service = req.getParameter("title_service");
				Integer customerId = Integer.parseInt(req.getParameter("customerId"));
				String content_service = req.getParameter("content_service");
				String reply_service = req.getParameter("reply_service");
				String receive_date = req.getParameter("receive_date");
				System.out.println(no_service);
				System.out.println(customerId);
				System.out.println(title_service);
				System.out.println(content_service);
				System.out.println(reply_service);
				System.out.println(receive_date);
				
				java.sql.Date pubdate = null;
				
				try {
					pubdate =java.sql.Date.valueOf(receive_date);
				} catch (IllegalArgumentException e) {
				}
				
				Customer_ServiceVO customer_serviceVO = new Customer_ServiceVO();
				customer_serviceVO.setNo_service(no_service);
				customer_serviceVO.setCustomerId(customerId);
				customer_serviceVO.setTitle_service(title_service);
				customer_serviceVO.setContent_service(content_service);
				customer_serviceVO.setReply_service(reply_service);
				customer_serviceVO.setReceive_date(pubdate);
				
				
				customer_serviceVO = customer_serviceSvc.updateCustomer_Service(no_service,customerId,title_service,content_service,reply_service,pubdate);
	//			req.setAttribute("customer_serviceVO", customer_serviceVO);
				session.setAttribute("bbb", "del4");
//				RequestDispatcher successView = req.getRequestDispatcher("/mangerPage.jsp");// 刪除成功後,轉交回送出刪除的來源網頁
//				successView.forward(req, res);

				res.sendRedirect("/vetement/mangerPage.jsp");
			}
		}catch (Exception e) {
			res.sendRedirect("/vetement/mangerPage.jsp#letter");
		}
		
		if ("del".equals(action)){
			Integer no_service = new Integer(req.getParameter("no_service"));
			System.out.println(no_service);
			
			customer_serviceSvc.deleteCustomer_Service(no_service);
			
			session.setAttribute("bbb", "del4");
//			RequestDispatcher successView = req.getRequestDispatcher("/mangerPage.jsp");// 刪除成功後,轉交回送出刪除的來源網頁
//			successView.forward(req, res);
			res.sendRedirect("/vetement/mangerPage.jsp#letter");

		}
		if ("del1".equals(action)){
			Integer no_service = new Integer(req.getParameter("no_service"));
			System.out.println(no_service);
			
			customer_serviceSvc.deleteCustomer_Service(no_service);
			
			
			session.setAttribute("aaa", "del3");
//			RequestDispatcher successView = req.getRequestDispatcher("/memberPage.jsp");// 刪除成功後,轉交回送出刪除的來源網頁
//			successView.forward(req, res);
			res.sendRedirect("/vetement/memberPage.jsp");

		}
		
	}
}