package com.cust.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONValue;

import com.cust.model.CustomerDAO;
import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;
import com.customer_service.model.Customer_ServiceService;
import com.disc.model.DiscountService;

@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		PrintWriter ajax_out = res.getWriter();
		
		String action = req.getParameter("action");
		if ("login".equals(action)) {
		/*******************************開始查詢資料*******************************/
			//Servlet接Ajax傳過來 的資料
			String account = req.getParameter("account");
			String password = req.getParameter("password");
			
			CustomerVO login_customer = new CustomerVO();
			CustomerService customerSvc = new CustomerService();
			login_customer = customerSvc.checkAcctAndPswd(account, password);
			
//			CustomerDAO dao = new CustomerDAO();
//			CustomerVO login_customer = dao.findbyAccountAndPassword(account, password);
			//System.out.println(login_customer);
			
			//把VO轉成json，直接轉要利用gson，所以設一個map物件，先把VO轉map再把map轉json，這邊是要給Ajax用的
			Map login_customer_map = new HashMap();	//宣告一個HashMap物件，叫做login_customer_map
			
			if(login_customer != null) {
				//把VO的值塞到Map物件裡面:
				//key:"customerId" ; value:login_customer.getCustomerId()
				login_customer_map.put("customerId", login_customer.getCustomerId());   
				login_customer_map.put("name", login_customer.getName()); 
				login_customer_map.put("gender", login_customer.getGender()); 
				login_customer_map.put("mail", login_customer.getMail());
				login_customer_map.put("addr_customer", login_customer.getAddr_customer());
				login_customer_map.put("tel", login_customer.getTel());	
				
				HttpSession session = req.getSession();
				//key:"login_customer_info" ; value:login_customer(這是VO)
				session.setAttribute("login_customer_info", login_customer);    //資料庫取出的login_customer物件,存入session,key是login_customer_info				
				
				//依照顧客ID取出留言用於view_letter.jsp
				Customer_ServiceService customer_serviceSvc = new Customer_ServiceService();
				session.setAttribute("customer_service_list", customer_serviceSvc.getOneCustomerId(login_customer.getCustomerId()));
			}
			
			//System.out.println(discount_map);
			
			//把剛才的Map物件轉成json
			String login_customer_json = JSONValue.toJSONString(login_customer_map); 
			
			ajax_out.println(login_customer_json);
			ajax_out.close();			
			
//			ajax_out.println(result_count);	
//			ajax_out.close();
			//System.out.println(find_result_count);
	
			//0筆的時候導回原頁，1筆的時候導向會員頁面
//			if (find_result_count == 0){
//				HttpSession session = req.getSession();
//				session.setAttribute("error_msg", "帳號或密碼錯誤，請重新輸入");
//				req.setAttribute("error_msg", "帳號或密碼錯誤，請重新輸入");   
//				String url = "/customer/login.jsp";
//				RequestDispatcher error_view = req.getRequestDispatcher(url);
//				error_view.forward(req, res);
//				return;
//			}
//			else if(find_result_count > 0){
//				String url = "/customer/customer_management.jsp";
//				RequestDispatcher error_view = req.getRequestDispatcher(url);
//				error_view.forward(req, res);
//				return;
//			}
		}
		
		if("logout".equals(action)){
			
			HttpSession session = req.getSession();
			session.removeAttribute("login_customer_info");
		}
	
	}

}
