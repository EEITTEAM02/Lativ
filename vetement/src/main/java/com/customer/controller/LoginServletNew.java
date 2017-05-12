package com.customer.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.DatatypeConverter;

import com.customer.model.CustomerService;
import com.customer.model.CustomerVO;

import javax.servlet.http.Cookie;




public class LoginServletNew extends HttpServlet {
	/**
		 * 
		 */
	private static final long serialVersionUID = 1L;


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

			try {
				/***************************1.�����ШD�Ѽ� - ��J�榡�����~�B�z**********************/
				String email = request.getParameter("email2");
				String pw = request.getParameter("password2");
				String rm = request.getParameter("rm");
				
				/***************************2.�}�l�d�߸��*****************************************/
				CustomerService cSrv = new CustomerService();
				CustomerVO customerVO = cSrv.getCustomerByMail(email);
                if (customerVO == null) {
					String msg = "email doesn't exist";
					out.write(msg);
					out.flush();
					out.close();                	
				}
			
				// Send the use back to the form, if there were errors
                if (!cSrv.validate(email, pw)) {
					String msg = "wrong pwd";
					out.write(msg);
					out.flush();
					out.close();
				}
             
  
				
				/***************************3.�d�ߧ���,�ǳ����(Send the Success view)*************/
				    if(cSrv.validate(email, pw)&&customerVO!=null){
					String msg = customerVO.getName();
					Integer customerId= customerVO.getCustomerId();
					session.setAttribute("sName", msg);
					session.setAttribute("mno", customerId);
					session.setAttribute("user", "authenticated");

				    }

				/***************************��L�i�઺���~�B�z*************************************/
			} catch (Exception e) {
				 e.printStackTrace();
			
			}
		
		
	
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	

}