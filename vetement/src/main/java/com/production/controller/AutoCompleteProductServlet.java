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


/**
 * Servlet implementation class XMLServlet
 */

public class AutoCompleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutoCompleteProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		Integer pno = Integer.parseInt(request.getParameter("pno"));
		
		try {
			
			
			ProductionService psvc = new ProductionService();
			
			
			ProductionVO aProduct= psvc.getOneProduct(pno);
			String a = "";
			         if (aProduct.isFor_sale()){
			        	 a ="1";
			         }
			         else
			        	 a ="0";
					 Map m1 = new HashMap();       
					 m1.put("pno",aProduct.getProductId()); 
					 m1.put("name", aProduct.getProductName()); 
					 m1.put("size", aProduct.getSize());
					 m1.put("color",aProduct.getColor()); 
					 m1.put("price", aProduct.getPrice());
					 m1.put("discountCat", aProduct.getPackageNo());
					 m1.put("categoryId", aProduct.getCategoryId());
					 m1.put("descript", aProduct.getDescribe());
					 m1.put("noInStock", aProduct.getQuantity_in_stock());
					 m1.put("for_sale", a);
					
			 String jsonString = JSONValue.toJSONString(m1);  
			 out.println(jsonString);

			/***************************��L�i�઺���~�B�z*************************************/
		} catch (Exception e) {
			out.write("dd" + e.getMessage());
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
