package com.shoppingCart.controller;

import java.io.IOException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;
import com.disc.model.DiscountService;
import com.disc.model.DiscountVO;
import com.google.gson.Gson;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemService;
import com.orderItem.model.OrderItemVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;

import antlr.collections.List;

/**
 * Servlet implementation class CheckoutServlet
 */
public class CartContentServlet extends HttpServlet {
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartContentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Writer out = response.getWriter();
		response.setContentType("text/plain");  
	    response.setCharacterEncoding("UTF-8");
	    OrderService osrvc = new OrderService();
	    OrderItemService oisrvc = new OrderItemService();
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
	    
	    Integer ono = target.getOrderNo();
	    java.util.List<OrderItemVO> orderItems = osrvc.getShoppingCartOrderItemsByOno(ono);
	    Iterator<OrderItemVO> oiit = orderItems.iterator();

	    while(oiit.hasNext()){
	    	OrderItemVO orderI = oiit.next();

	    	oisrvc.deleteOrderItem(orderI.getSeqNo());
	    }
    
	    JsonArray data =  new Gson().fromJson(request.getReader(), JsonArray.class);
        int size = data.size();
        Map pMap = new LinkedHashMap();
        Map pMap2 = new LinkedHashMap();

        JsonPrimitive key =null;
    	JsonPrimitive value = null;
    	String key1=null;
    	String value1=null;

        for (int i=0;i<size;i++){
        	
			if (i%2==0){
        	   key  = (JsonPrimitive) data.get(i);
			   key1 = key.getAsString();
			}
        	else{
        	   value = (JsonPrimitive) data.get(i);
        	   value1 = value.getAsString();
        	   pMap.put(key1, value1);
        	}
        }
        
        ArrayList<String> keyList =  new ArrayList<String>(pMap.keySet());
        ProductionService psrvc = new ProductionService();
        ProductionVO aProduct = new ProductionVO();
        Double ssum=0d;
        for(int i = 0; i < keyList.size(); i++) {
            String key3 = keyList.get(i);
            String value3 = (String) pMap.get(key3);
            aProduct = psrvc.getOneProduct(Integer.parseInt(key3));
            String pName = aProduct.getProductName();
            Integer pID = Integer.parseInt(key3);     
            DiscountService dsrvc = new DiscountService();                                           
            Double unitPriceD = 0d;
            Double unitPriceO = psrvc.getOneProduct(pID).getPrice();
            Double sum = 0d;
            Integer dc = aProduct.getPackageNo();
            LinkedList<Integer> l1 = new LinkedList<Integer>(); 
            Integer sumOfQuantity =0;
            DiscountVO myDiscount = dsrvc.getOneDiscount(dc);
			Integer discountNo = myDiscount.getQuantity_condition();
            if (discountNo==null){
            	discountNo=1;
            }
                    Set<OrderItemVO> targetOI = target.getOrderItemVOs();
                    Iterator it2 = targetOI.iterator();
                    while(it2.hasNext()){
                    	OrderItemVO oi=(OrderItemVO) it2.next();                    	                  	
                    	if(oi.getProductionVO().getPackageNo().equals(dc)){
                    		sumOfQuantity +=oi.getQuantity_order();
                    	}
                    }
                    sumOfQuantity+= Integer.parseInt(value3);
                	if(sumOfQuantity>=discountNo){
                		
                		if (myDiscount.getDiscount1() != null)
	  						unitPriceD = unitPriceO * myDiscount.getDiscount1();
	  					else {
	  						
	  						unitPriceD =myDiscount.getDiscount2();
	  					}
                		
                	sum = unitPriceD * Integer.parseInt(value3);
                	}
                	else {
                		unitPriceD =aProduct.getPrice();
                    	sum = unitPriceD * Integer.parseInt(value3);
                	}
                              
            	oisrvc.addOrderItem(ono, aProduct.getProductId(), Integer.parseInt(value3), aProduct.getPrice(),unitPriceD,sum);
            	ssum+=sum;
            }
        osrvc.updateOrder(target.getOrderNo(), target.getDealDate(), target.getCustomerVO().getCustomerId(), target.getAddr_send(), ssum, false, target.getName_send(), target.getTel_send());
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
