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
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.customer.model.CustomerService;
import com.customer.model.CustomerVO;
import com.google.gson.Gson;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemService;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;

import antlr.collections.List;

/**
 * Servlet implementation class CheckoutServlet
 */
public class CheckoutServlet2 extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		Writer out = response.getWriter();
		response.setContentType("text/plain");  
	    response.setCharacterEncoding("UTF-8");
	    OrderService osrvc = new OrderService();
	    Integer mno =(Integer) session.getAttribute("mno");
	    CustomerService msrvc = new CustomerService();
	    CustomerVO customer = msrvc.getOneCustomer(mno);
        java.util.Date utilDate = new java.util.Date();
	    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

	    Double d = new Double(0);
	    
	    
	    JsonArray data =  new Gson().fromJson(request.getReader(), JsonArray.class);
//	    String id = data.get("id").getAsString();
        int size = data.size();
        Map pMap = new LinkedHashMap();
        JsonPrimitive key =null;
    	JsonPrimitive value = null;
    	String key1=null;
    	String value1=null;
    	int flag=1;
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
	    Double totalAmount = 0.0;
        ArrayList<String> keyList =  new ArrayList<String>(pMap.keySet());
        
        for(int i = 0; i < size/2; i++) {
            String key3 = keyList.get(i);
            String value3 = (String) pMap.get(key3);

        	ProductionService psrvc = new ProductionService();
            ProductionVO product = psrvc.getOneProduct(Integer.parseInt(key3));
            
            Integer newNoInStock = product.getQuantity_in_stock()-Integer.parseInt(value3);
            if(newNoInStock <0){
                
            	out.write( key3+" out of stock");
           	    out.flush();
                out.close();
                flag=2;
            }
            
        }

        if (flag==1){
        	OrderVO order = osrvc.addOrder(sqlDate, mno,customer.getAddr_customer(), d, true,"recipientName","0123456789");

        for(int i = 0; i < size/2; i++) {
            String key3 = keyList.get(i);
            String value3 = (String) pMap.get(key3);
            
            OrderItemService oisrvc = new OrderItemService();
        	ProductionService psrvc = new ProductionService();
            ProductionVO product = psrvc.getOneProduct(Integer.parseInt(key3));
            
            Integer newNoInStock = product.getQuantity_in_stock()-Integer.parseInt(value3);
        	    oisrvc.addOrderItem(order.getOrderNo(),Integer.parseInt(key3),Integer.parseInt(value3) , product.getPrice(),100d,200d);  //100d is the discounted price 
                psrvc.updateQuantity(Integer.parseInt(key3), newNoInStock);                                                          //200d is the total payment, to be calculated later
        	    totalAmount+=product.getPrice()*Integer.parseInt(value3);
               	
        }
        osrvc.updateOrder(order.getOrderNo(), order.getDealDate(), mno, order.getAddr_send(), totalAmount, true,"recipientName","123456789");
        out.write("thx for shopping");
        out.flush();
        out.close();
        }
	}
        
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
