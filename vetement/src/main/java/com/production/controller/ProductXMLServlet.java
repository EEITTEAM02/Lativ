package com.production.controller;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;


import org.jdom2.Attribute;
import org.jdom2.Comment;
import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.output.Format;
import org.jdom2.output.XMLOutputter;
import org.json.simple.JSONValue;

import com.customer.model.CustomerService;
import com.customer.model.CustomerVO;
import com.production.model.ProductionDAO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;



public class ProductXMLServlet extends HttpServlet {

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductXMLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		PreparedStatement pstmt = null;
		String stringId= null;
		List l1 = new LinkedList();
		List<Integer> l2 = new LinkedList<Integer>();
		try {
			
			//use jdbc since we don't have category model yet
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=DB01";
		    conn = DriverManager.getConnection(url,"sa", "sa123456");
		    pstmt = conn.prepareStatement("select categoryId from category where class_top=?");
		   		    		    		    
			Integer id = Integer.parseInt(request.getParameter("id"));
			if (id ==1){
				stringId ="女";
			}
			else if (id ==2){
				stringId ="男";
			}
			else {
				stringId ="兒童";
			}
		    
			pstmt.setString(1, stringId);
		    ResultSet rs = pstmt.executeQuery();
			
		    
		    ProductionService psvc = new ProductionService();
		    while(rs.next()){
		    	
		    	List<ProductionVO> aList = psvc.findByCategoryId(rs.getInt(1));
		    	for (ProductionVO aProduct : aList){
		    		if(aProduct.getPicture_model1()!=null&&aProduct.isFor_sale()){
		    		   l2.add(aProduct.getProductId());
		    		}
		    	}
		    }
//		    System.out.println(l2);
		    for (Integer pno :l2){
		    	ProductionVO oneProduct = psvc.getOneProduct(pno);
		    	Map m1 = new HashMap(); 
		    	m1.put("name", oneProduct.getProductName());
		    	m1.put("price", oneProduct.getPrice());
		    	m1.put("pno",oneProduct.getProductId()); 
		    	 l1.add(m1);
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
		


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
