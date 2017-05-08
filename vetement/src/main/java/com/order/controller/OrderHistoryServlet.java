package com.order.controller;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONValue;

import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;
 

public class OrderHistoryServlet extends HttpServlet {
     
	private static final long serialVersionUID = 1L;

     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Integer mno =null;   //mno == customerId
		HttpSession session = request.getSession(false);
		if (session==null){
			out.write("oops");
			out.flush();
			out.close();
		}
		else if (!("authenticated").equals(session.getAttribute("user"))){
	    	out.write("oops");
	    	out.flush();
			out.close();
	    }
	    else
	    {
	    	mno = (Integer) session.getAttribute("mno");

	    }
		
		try {
			
			List  l1 = new LinkedList();
			OrderService osvc = new OrderService();

			List<OrderVO> list =osvc.getOrdersByCustomerId(mno);

			for (OrderVO anOrder : list) {
				
				
					Map m1 = new HashMap();       
					 m1.put("ono",anOrder.getOrderNo());   
					 m1.put("deliveryAddr", anOrder.getAddr_send()); 
					 m1.put("orderDate", (anOrder.getDealDate()).toString());   //toString needed to convert date
					 m1.put("orderSum",anOrder.getPrice_total()); 
					 l1.add(m1);

				
			}
			String jsonString = JSONValue.toJSONString(l1);  
			 out.println(jsonString);
			 out.flush();
		     out.close();

			/***************************��L�i�઺���~�B�z*************************************/
		} catch (Exception e) {
			out.write("dd" + e.getMessage());
			out.flush();
			out.close();
		}
	}
    
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	doPost(request,response);
    }
    }
