package com.cust.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import com.cust.model.CustomerDAO;
import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;

@WebServlet("/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter ajax_out = res.getWriter();
		
		//取session裡面的內容
		HttpSession session = req.getSession();
		Object session_customer_object = session.getAttribute("login_customer_info");
		CustomerVO session_customer = (CustomerVO) session_customer_object;
		
		String act = req.getParameter("action");
		//System.out.println("do POST");
		
		if("getOne".equals(act)){
			
			/***************************開始查詢資料 ****************************************/
			
			Integer customerId = session_customer.getCustomerId();
			CustomerService customerSvc = new CustomerService();
			CustomerVO find_one_customer = customerSvc.getOneCustomer(customerId);
			
			/**********************查詢完成,準備轉交(Send the Success view)*************/
			
			session.setAttribute("login_customer_info", find_one_customer);    // 資料庫取出的one_customer物件,存入session,key是list
			// Send the Success view
			String url = "/customer/editCustomerInfo.jsp";
			RequestDispatcher updateView = req.getRequestDispatcher(url);
			
			updateView.forward(req, res);	
					//要RequestDispatcher才能forward //實際上導頁是forward
			return;
		}
		
		//Update customer's data
		if("updateOne".equals(act)){
			//Servlet接Form Post過來的資料
			//Integer customer_id = Integer.parseInt(req.getParameter("customerId"));
			Integer customer_id =  session_customer.getCustomerId();
			String update_name = req.getParameter("customerName");
			Boolean update_sex;
			
			if (req.getParameter("gender").equals("1")) {
				update_sex = true;
			}
			else if(req.getParameter("gender").equals("0")) {
				update_sex = false;
			}
			else {
				 throw new IllegalArgumentException("gender is not a boolean. Only 1 and 0 are.");
			}
			
			String update_email = req.getParameter("mail");
			String update_address = req.getParameter("add");
			String update_mobile = req.getParameter("tel");
			
				
			CustomerVO update_customer = new CustomerVO();
			CustomerService customerSvc =  new CustomerService();
			update_customer = customerSvc.updateCustomer(customer_id, update_name, update_sex, 
															update_email, update_address, update_mobile);
			
			session.setAttribute("list", update_customer);    // 資料庫取出的one_customer物件,存入session,key是list
			// Send the Success view
			String url = "/customer/customer_management.jsp";
			RequestDispatcher updateView = req.getRequestDispatcher(url);
			
			updateView.forward(req, res);	
					//要RequestDispatcher才能forward //實際上導頁是forward
			return;
		
		}
		
		//New customer register
		if("insert".equals(act)){
			//Servlet要接Register.jsp Form Post過來的資料
			//Integer customer_id = Integer.parseInt(req.getParameter("customerId"));
			
			String name = req.getParameter("qq_name");
			//String sex = req.getParameter("qq_sex");
			Boolean sex;
			//印出來會是男:1 女:0 radio有設value
			//System.out.println(req.getParameter("qq_sex"));
			if (req.getParameter("qq_sex").equals("1")) {
				sex = true;
			}
			else if(req.getParameter("qq_sex").equals("0")) {
				sex = false;
			}
			//防呆機制
			else {
				 throw new IllegalArgumentException("gender is not a boolean. Only 1 and 0 are.");
			}
			String mail = req.getParameter("qq_email");
			String password = req.getParameter("qq_member_password");
			String address = req.getParameter("qq_addr");
			String phone = req.getParameter("qq_phone_no");
			
//			CustomerDAO dao = new CustomerDAO();
//			Integer find_account_result_count = dao.findbyAccount(mail);	//find_account_result_count代表利用dao去findbyAccount有讀到幾筆資料(這是它的回傳值)
			CustomerVO exist_account = new CustomerVO();
			CustomerService customerSvc =  new CustomerService();
			exist_account = customerSvc.checkAccountExist(mail);
			
			//如果根據mail去查詢，有傳回資料的話，就是不等於null，就會印出99999，當前端收到99999，就會印出"此帳號已存在"
			if (exist_account != null){
				ajax_out.println("99999");	
				ajax_out.close();
				return;
			}
			
			Integer register_count = 0;	
			CustomerVO new_customer = new CustomerVO();
			
			new_customer = customerSvc.addCustomer(name,sex,mail,password,address,phone);
			
			if(new_customer != null ) {
				register_count = 1;
			}
			
			ajax_out.println(register_count);	
			ajax_out.close();				
		}
		
		//edit password
		if("editPswd".equals(act)){
			Integer customer_id =  session_customer.getCustomerId();
			String update_password = req.getParameter("new_pswd");
			CustomerService customerSvc =  new CustomerService();
			customerSvc.updatePswd(customer_id, update_password);
		}
				
	}

}
