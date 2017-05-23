package com.production.controller;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;
import com.sun.glass.ui.Application;

public class CheckPurchaseServlet2 extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	HttpSession session = request.getSession(false);
	Writer out = response.getWriter();
	response.setContentType("text/plain");  
    response.setCharacterEncoding("UTF-8");
    ServletContext sctx = this.getServletConfig().getServletContext();
       Integer mno =(Integer) session.getAttribute("mno");
       Integer pno =  Integer.parseInt(request.getParameter("pno"));
       
       ProductionService psrvc = new ProductionService();
       ProductionVO aProduct = psrvc.getOneProduct(pno);
       int size = psrvc.getAll().size();
       String pname = aProduct.getProductName();
       
   
       
       Set<String> l3;       
       String mno1 = mno.toString();
	    if (sctx.getAttribute(mno1)==null){      
	    	    l3 = new LinkedHashSet<String>();
	           sctx.setAttribute(mno1, l3);
	       }
	       else{		    	   
	    	   l3 = (Set<String>) sctx.getAttribute(mno1);
	       }
	      
//	      System.out.println("l3:"+l3);
       
       OrderService osrvc = new OrderService();
       List<OrderVO> listOfOrders = osrvc.getOrdersByCustomerId(mno);
       Iterator it =listOfOrders.iterator();
       boolean flag =false;
       while(it.hasNext()){
    	   OrderVO anOrder =(OrderVO) it.next();
    	   Set<OrderItemVO> setOfOIs =anOrder.getOrderItemVOs();
    	   Iterator it2 = setOfOIs.iterator();

    	   outerloop:
    	   while(it2.hasNext()){
    		   OrderItemVO anOI = (OrderItemVO) it2.next();
    		   String pName = anOI.getProductionVO().getProductName();
               
    		   
    		   if (pname.equals(pName)) {
    			   flag=true;
    			   break outerloop;
    		   }
    		 
    	   }
	   
       }
       Iterator it3 = l3.iterator();
       while(it3.hasNext()){
    	   String rated = (String) it3.next();
    	   
    	   if (pname.equals(rated))
    		   flag=false;
       }
       if (flag){
		   out.write("1");
		   out.flush();
		   out.close();
	   }
	   else {
		   out.write("0");
		   out.flush();
		   out.close();
	   }
	
}
}
