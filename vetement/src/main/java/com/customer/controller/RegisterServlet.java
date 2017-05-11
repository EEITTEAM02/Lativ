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



public class RegisterServlet extends HttpServlet {
	/**
		 * 
		 */
	private static final long serialVersionUID = 1L;


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
//		HttpSession session = request.getSession();

			try {
				/***************************1.�����ШD�Ѽ� - ��J�榡�����~�B�z**********************/
				String email = request.getParameter("email1");
				String pw = request.getParameter("password1");
				String pn = request.getParameter("phoneno");
				String addr = request.getParameter("address");
				String name = request.getParameter("name");
				String gender = request.getParameter("gender");
				boolean genderX = false;
				if(gender.equals("male")){
					genderX = true;
				}
				
//				if ( name == null || ( name.trim()).length() == 0) {
//					String msg = "enter ur name";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
//				
//				if (email == null || (email.trim()).length() == 0) {
//					String msg = "enter email";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
//				
//				if (pw == null || (pw.trim()).length() == 0) {
//					String msg = "enter pw";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
//				^                 # start-of-string
//				(?=.*[0-9])       # a digit must occur at least once
//				(?=.*[a-z])       # a lower case letter must occur at least once
//				(?=.*[A-Z])       # an upper case letter must occur at least once
//				(?=.*[@#$%^&+=])  # a special character must occur at least once
//				(?=\S+$)          # no whitespace allowed in the entire string
//				.{8,}             # anything, at least eight places though
//				$                 # end-of-string
//				else if (!pw.matches("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$")){
//					String msg = "pw format error";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
				
//				if (addr == null || (addr.trim()).length() == 0) {
//					String msg = "enter address";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
				
//				if (pn == null || (pn.trim()).length() == 0) {
//					String msg = "enter #";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
//					else if(!pn.matches("\\d+")){
//					String msg = "# format error";
//					out.write(msg);
//					out.flush();
//					out.close();
//				}
				
				
				/***************************2.�}�l�d�߸��*****************************************/
				CustomerService cSrv = new CustomerService();
				CustomerVO customerVO = cSrv.getCustomerByMail(email);
                if (customerVO != null) {
					String msg = "email already in use";
					out.write(msg);
					out.flush();
					out.close();

				}
                Integer pni = Integer.parseInt(pn);
                cSrv.addCustomer(name, pw, email, addr, pn, genderX);
                
                
                	
				
				/***************************3.�d�ߧ���,�ǳ����(Send the Success view)*************/
				    
				
                String msg = "Success";
				out.write(msg);
				out.flush();
				out.close();
            

				/***************************��L�i�઺���~�B�z*************************************/
			} catch (Exception e) {
//				out.write(  e.printStackTrace(););
//				out.flush();
//				out.close();
				e.printStackTrace();
			}
		
		
	
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	

}