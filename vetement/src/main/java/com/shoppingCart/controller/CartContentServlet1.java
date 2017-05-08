package com.shoppingCart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.json.simple.JSONValue;

import com.customer.model.CustomerService;
import com.customer.model.CustomerVO;
import com.discount.model.DiscountService;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;

public class CartContentServlet1 extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain;charset=UTF-8");  
//	    response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(false);
		PrintWriter out = response.getWriter();
	    OrderService osrvc = new OrderService();
	    Integer mno =(Integer) session.getAttribute("mno");
	    CustomerService msrvc = new CustomerService();
	    CustomerVO aCustomer = msrvc.getOneCustomer(mno);
	    Set<OrderVO> orderList = msrvc.getOrderVOsByCustomerId(mno);
	    Iterator<OrderVO> it = orderList.iterator();
	    OrderVO target=null;
	    java.util.Date utilDate = new java.util.Date();
	    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
	   
	    while(it.hasNext()){
	    	target = it.next();
		      if(!target.isStatus1()){			    	  
		    	  break;
		      }     	      
		    }
		    
		    if (target.isStatus1()){	    	
			    	  target = osrvc.addOrder(sqlDate, mno, null, null, false, null, null);		      
		    }
	   
	    List<OrderItemVO> a = osrvc.getShoppingCartOrderItemsByOno( target.getOrderNo());
	    List  l1 = new LinkedList();
	    for (OrderItemVO anOI:a){
	    	Integer id = anOI.getProductionVO().getProductId();
	    	String name = anOI.getProductionVO().getProductName();
	    	String size = anOI.getProductionVO().getSize();  	
            
	    	Double unitPriceO = anOI.getProductionVO().getPrice();
//	    	Double unitPriceD = anOI.getUnitPriceD();
	    	Double unitPriceD = 0d;
	    	Double totalPrice = anOI.getPrice_item();
	    	Integer quantity = anOI.getQuantity_order();
	    	String image = "productImages/"+id;
	    	DiscountService dsrvc = new DiscountService();
	    	Integer dc = anOI.getProductionVO().getPackageNo();
	    	Integer sumOfQuantity =0;
//	    	System.out.println("sumO:"+sumOfQuantity);
	    		  if(dc.equals(1)){
	                	unitPriceD =anOI.getProductionVO().getPrice();       //if packno = 1 no discount

	                }
	                else if (dc.equals(2)){
	                	 Set<OrderItemVO> targetOI = target.getOrderItemVOs();
	                     Iterator it2 = targetOI.iterator();
	                     while(it2.hasNext()){
	                     	OrderItemVO oi=(OrderItemVO) it2.next();                    	                  	
	                     	if(oi.getProductionVO().getPackageNo().equals(2)){
	                     		sumOfQuantity +=oi.getQuantity_order();
	                     	}
	                     }
//	                     System.out.println("sum:"+sumOfQuantity);
	                 	if(sumOfQuantity>=2){
	                 		
	                 	unitPriceD =anOI.getProductionVO().getPrice()*dsrvc.getOneDiscount(2).getDiscount1();
	                 
	                 	}
	                 	else {
	                 		unitPriceD =anOI.getProductionVO().getPrice();
	                   
	                 	}
	                }
	                else if (dc.equals(3)){
	                	 Set<OrderItemVO> targetOI = target.getOrderItemVOs();
	                     Iterator it2 = targetOI.iterator();
	                     while(it2.hasNext()){
	                     	OrderItemVO oi=(OrderItemVO) it2.next(); 
	                     	
	                     	if(oi.getProductionVO().getPackageNo().equals(3)){
//	                     		System.out.println(oi.getProductionVO().getProductId());
	                     		sumOfQuantity +=oi.getQuantity_order();
	                     	}
	                     }
	                	if(sumOfQuantity>=3){
	                		unitPriceD =(dsrvc.getOneDiscount(3).getDiscount2())/(dsrvc.getOneDiscount(3).getQuantity_condition());       //if packno = 3 get a flat discount if you purchase more than three products.
	                	}
	                	else {
	                		unitPriceD =anOI.getProductionVO().getPrice();
	                	}
	                }
	    	
	    	 Map m1 = new HashMap();       
			 m1.put("id",id);   
			 m1.put("name", name); 
			 m1.put("summary", "");
			 m1.put("unitPriceO",unitPriceO);
			 m1.put("unitPriceD",unitPriceD);
			 m1.put("totalPrice",totalPrice);
			 m1.put("size", size);
			 m1.put("quantity", quantity);
			 m1.put("image",image);
			 l1.add(m1);
	    }

		 String jsonString = JSONValue.toJSONString(l1);   

		 out.print(jsonString);
       
}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doGet(request,response);
	}
}