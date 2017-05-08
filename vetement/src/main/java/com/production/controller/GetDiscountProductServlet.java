package com.production.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.discount.model.DiscountService;
import com.discount.model.DiscountVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;

public class GetDiscountProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		Integer discountCat= null;
		List l1 = new LinkedList();
		List<Integer> l2 = new LinkedList<Integer>();
		try {
		   		    		    		    
			Integer id = Integer.parseInt(req.getParameter("id"));
			discountCat = id-3;
		    DiscountService dsrvc = new DiscountService();
			Set<ProductionVO> setOfDiscountProd = dsrvc.getProductsByDiscountCat(discountCat);
			Iterator it = setOfDiscountProd.iterator();
			ProductionVO aProduct = null;
			while(it.hasNext()){
				aProduct =(ProductionVO) it.next();
				if (aProduct.getPicture_model1()!=null){
					if(aProduct.getPicture_model1().length!=0){
				Map m1 = new HashMap(); 
		    	m1.put("name", aProduct.getProductName());
		    	m1.put("price", aProduct.getPrice());
		    	m1.put("pno",aProduct.getProductId()); 
		    	 l1.add(m1);
					}
				}
			}
		    
		    String jsonString = JSONValue.toJSONString(l1);
//		    System.out.println(jsonString);
			 out.println(jsonString);
			 out.flush();
		     out.close();

			
//			List  l1 = new LinkedList();
//			ProductService psvc = new ProductService();
//			List<ProductVO> list =psvc.getAll();
//			
//			byte[] content = null;
//			for (ProductVO aProduct : list) {
//				
//			}	
			
			
//				if (stringCat1.equals(aProduct.getCat1())){
//					Map m1 = new HashMap();       
////					 m1.put("pno",aProduct.getPno());   
//					 m1.put("name", aProduct.getName()); 
////					 m1.put("size", aProduct.getSize());
////					 m1.put("color",aProduct.getColor()); 
//					 m1.put("price", aProduct.getPrice());
////					 m1.put("discountCat", aProduct.getDiscountCat());
////					 m1.put("noInStock", aProduct.getNoInStock());
//					 m1.put("for_sale", aProduct.isFor_sale());
//					 l1.add(m1);
//				}
//			}
//			String jsonString = JSONValue.toJSONString(l1);  
//			 out.println(jsonString);
//			 out.flush();
//		     out.close();

			/***************************��L�i�઺���~�B�z*************************************/
		} catch (Exception e) {
			out.write("dd" + e.getMessage());
			out.flush();
			out.close();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
