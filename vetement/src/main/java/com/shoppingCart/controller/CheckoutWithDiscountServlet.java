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
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.customer.model.CustomerService;
import com.customer.model.CustomerVO;
import com.discount.model.DiscountService;
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
public class CheckoutWithDiscountServlet extends HttpServlet {
	private static final Integer serialVersionUID = 1;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public CheckoutWithDiscountServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//   
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//		Writer out = response.getWriter();
//		response.setContentType("text/plain");  
//	    response.setCharacterEncoding("UTF-8");
//	    OrderService osrvc = new OrderService();
//	    OrderItemService oisrvc = new OrderItemService();
//	    Integer mno =(Integer) session.getAttribute("mno");
//	    CustomerService msrvc = new CustomerService();
//	    CustomerVO aCustomer = msrvc.getOneCustomer(mno);
//	    Set<OrderVO> orderList = msrvc.getOrderVOsByCustomerId(mno);
//	    
//	    
//	    
//	  	    
//	    JsonArray data =  new Gson().fromJson(request.getReader(), JsonArray.class);
////	    String id = data.get("id").getAsString();
//        int size = data.size();
//        Map pMap = new LinkedHashMap();
//        Map pMap2 = new LinkedHashMap();
//
//        JsonPrimitive key =null;
//    	JsonPrimitive value = null;
//    	String key1=null;
//    	String value1=null;
//
//        for (int i=0;i<size;i++){
//        	
//			if (i%2==0){
//        	   key  = (JsonPrimitive) data.get(i);
//			   key1 = key.getAsString();
//			}
//        	else{
//        	   value = (JsonPrimitive) data.get(i);
//        	   value1 = value.getAsString();
//        	   pMap.put(key1, value1);
//        	}
//        }
//        
//        ArrayList<String> keyList =  new ArrayList<String>(pMap.keySet());
//        ProductionService psrvc = new ProductionService();
//        ProductionVO aProduct = new ProductionVO();
//        java.util.Date utilDate = new java.util.Date();
//	    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
//        OrderVO order = osrvc.addOrder(sqlDate, mno, aCustomer.getAddr_customer(), 0.0d, true,"recipientName","123456789");
//        Integer orderNo = order.getOrderNo();
//        
//        int noOfCat1 = 0;
//        double maxPriceCat1 =0d;
//        Integer maxPno =0;
//        for(int i = 0; i < keyList.size(); i++) {
//            String key3 = keyList.get(i);
//            String value3 = (String) pMap.get(key3);
//            aProduct = psrvc.getOneProduct(Integer.parseInt(key3));
//                
//            Integer discountCat = aProduct.getPackageNo();	
//            
//            if(discountCat==1){
//            	noOfCat1+=Integer.parseInt(value3);
//            	maxPriceCat1 = Math.max(maxPriceCat1, aProduct.getPrice());
//            	if(maxPriceCat1 == aProduct.getPrice()){
//            		maxPno = aProduct.getProductId();
//            	}
//            }
//            
//            }
//        DiscountService dsrvc = new DiscountService();
//        Double cat1DiscountPercent = dsrvc.getOneDiscount(1).getDiscount1();
//        double sumOfCat1 = 0d;
//        double sumOfCat0 =0d;
//        double totalPayment =0d;
//        if(noOfCat1%2==0){
//        	 for(int i = 0; i < keyList.size(); i++) {
//                 String key3 = keyList.get(i);
//                 String value3 = (String) pMap.get(key3);
//                 aProduct = psrvc.getOneProduct(Integer.parseInt(key3));
//                 Integer discountCat = aProduct.getPackageNo();	
//                 
//                 if (discountCat == 1){
//                	 sumOfCat1+=aProduct.getPrice()*Integer.parseInt(value3);
//                	 oisrvc.addOrderItem(orderNo, Integer.parseInt(key3), Integer.parseInt(value3),
//                			 aProduct.getPrice()*Integer.parseInt(value3)*cat1DiscountPercent, true);
//                 }
//                 else{
//                	 sumOfCat0 +=aProduct.getPrice()*Integer.parseInt(value3);
//                	 oisrvc.addOrderItem(orderNo, Integer.parseInt(key3), Integer.parseInt(value3), aProduct.getPrice()*Integer.parseInt(value3), true);
//                 }                            
//
//                 }
//        	 
//             
//             totalPayment = sumOfCat0 + sumOfCat1*cat1DiscountPercent;
//             osrvc.updateOrder(orderNo, order.getOrderDate(), mno, order.getDeliveryAddr(), totalPayment, true,"recipientName",123456789);
//    	}
//        else {
//        	for(int i = 0; i < keyList.size(); i++) {
//                String key3 = keyList.get(i);
//                String value3 = (String) pMap.get(key3);
//                aProduct = psrvc.getOneProduct(Integer.parseInt(key3));
//                Integer discountCat = aProduct.getPackageNo();	
//                if (discountCat == 1){
//                	Integer discountedQ=0;
//                	System.out.println("maxPno:"+maxPno);
//                	System.out.println("pno:"+aProduct.getProductId());
//                	if (maxPno.equals(aProduct.getProductId())){
//                		System.out.println("hi");
//                		discountedQ = Integer.parseInt(value3)-1;
//                		oisrvc.addOrderItem(orderNo, Integer.parseInt(key3),  Integer.parseInt(value3), aProduct.getPrice()*discountedQ*cat1DiscountPercent+aProduct.getPrice(), true);
//                		System.out.println("price:"+aProduct.getPrice()*discountedQ*cat1DiscountPercent+aProduct.getPrice());
//                	}
//                	else {
//                		oisrvc.addOrderItem(orderNo, Integer.parseInt(key3),  Integer.parseInt(value3), aProduct.getPrice()*Integer.parseInt(value3)*cat1DiscountPercent, true);
//                	}
//               	 sumOfCat1+=aProduct.getPrice()*Integer.parseInt(value3);
//                }
//                else{
//               	 sumOfCat0 +=aProduct.getPrice()*Integer.parseInt(value3);
//               	oisrvc.addOrderItem(orderNo, Integer.parseInt(key3), Integer.parseInt(value3), aProduct.getPrice()*Integer.parseInt(value3), true);
//                }                            
//
//                }
//        	
//             totalPayment = sumOfCat0 + sumOfCat1*cat1DiscountPercent +maxPriceCat1*(1-cat1DiscountPercent);
//             osrvc.updateOrder(orderNo, order.getOrderDate(), mno, order.getDeliveryAddr(), totalPayment, true,"recipientName",123456789);
//        }
//        
//        
//        
//        Iterator<OrderVO> it = orderList.iterator();
//	    OrderVO target=null;
//	    
//	    while(it.hasNext()){
//	    	 target = it.next();
//	      if(!target.isStatus1()){	    	  
//	    	  break;
//	      }
//	    }
//        Integer ono = target.getOrderNo();
//        java.util.List<OrderItemVO> orderItems = osrvc.getShoppingCartOrderItemsByOno(ono);
//	    Iterator<OrderItemVO> oiit = orderItems.iterator();
//	    while(oiit.hasNext()){
//	    	OrderItemVO orderI = oiit.next();
//	    	oisrvc.deleteOrderItem(orderI.getOino());
//	    }
	  
	
	
	

        
        
      	
        	
            
        

        
	    
	    
	    

	    
	    

	 
	    
	    

       
        
        

       // session.setAttribute("pMap2", pMap2); 
      // request.getRequestDispatcher("checkoutCart.jsp").forward(request, response);
	
        
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
