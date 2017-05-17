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

import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;
import com.disc.model.DiscountService;
import com.disc.model.DiscountVO;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;
import com.production.model.ProductionService;

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
//	    CustomerVO aCustomer = msrvc.getOneCustomer(mno);
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
	    
		ProductionService psrvc = new ProductionService();    
	    List<OrderItemVO> a = osrvc.getShoppingCartOrderItemsByOno( target.getOrderNo());
	    List  l1 = new LinkedList();
	    for (OrderItemVO anOI:a){
	    	Integer id = anOI.getProductionVO().getProductId();
	    	String name = anOI.getProductionVO().getProductName();
	    	String size = anOI.getProductionVO().getSize();  
	    	Integer packageNo = psrvc.getOneProduct(id).getPackageNo();
            
	    	Double unitPriceO = anOI.getProductionVO().getPrice();
//	    	Double unitPriceD = anOI.getUnitPriceD();
	    	Double unitPriceD = 0d;
	    	Double totalPrice = anOI.getPrice_item();
	    	Integer quantity = anOI.getQuantity_order();
	    	String image = "productImages/"+id;
	    	DiscountService dsrvc = new DiscountService();
	    	Integer sumOfQuantity =0;

	  				Set<OrderItemVO> targetOI = target.getOrderItemVOs();
	  				Iterator it2 = targetOI.iterator();
	  				while (it2.hasNext()) {
	  					OrderItemVO oi = (OrderItemVO) it2.next();
	  					if (oi.getProductionVO().getPackageNo().equals(packageNo)) {
	  						sumOfQuantity += oi.getQuantity_order();
	  					}
	  				}
	  				DiscountVO myDiscount = dsrvc.getOneDiscount(packageNo);
	  				Integer discountNo = myDiscount.getQuantity_condition();
	  				if (discountNo==null){
	  					discountNo=1;
	  				}
	  				if (sumOfQuantity >= discountNo) {

	  					if (myDiscount.getDiscount1() != null)
	  						unitPriceD = unitPriceO * myDiscount.getDiscount1();
	  					else {
	  						
	  						unitPriceD = myDiscount.getDiscount2();
	  					}

	  				} else {
	  					unitPriceD = anOI.getProductionVO().getPrice();

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