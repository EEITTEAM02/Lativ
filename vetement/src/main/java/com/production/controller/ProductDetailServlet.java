package com.production.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.simple.JSONValue;

import com.category.model.CategoryService;
import com.category.model.CategoryVO;
import com.disc.model.DiscountService;
import com.disc.model.DiscountVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;

public class ProductDetailServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Integer pno = Integer.parseInt(request.getParameter("pno"));
		
		Integer pno1 = pno;
		
		List<Integer> l1= new LinkedList<Integer>();          //list of pnos/productId with the same name
		List<Integer> l2= new LinkedList<Integer>();          //list of pnos/productId with color images
		
		
		try{
			ProductionService psrvc = new ProductionService();
			int size = psrvc.getAll().size();
			ProductionVO aProduct = psrvc.getOneProduct(pno);
			String pName = aProduct.getProductName();
			Integer pno2 = size;
			CategoryService csrvc = new CategoryService();
			CategoryVO category = csrvc.findByPrimaryKey(aProduct.getCategoryId());
			String mainCat = category.getClass_top();
			
			List<Integer> usedUpPno = new LinkedList<Integer>();
			
			for(;pno1<=pno+25;pno1++){
				
				if(pName.equals(psrvc.getOneProduct(pno1).getProductName())){
					l1.add(pno1);
				}
				else{
					break;
				}
				
				usedUpPno.add(pno1);
				if (pno1==size) break;
			}
			
			for(;pno2>size-10;pno2--){
				
				if (usedUpPno.contains(pno2)) break;
				if(pName.equals(psrvc.getOneProduct(pno2).getProductName())){
					l1.add(pno2);
				}
			}
			
			
			for (Integer pno3 : l1){
				byte[] cImg = psrvc.getOneProduct(pno3).getPicture_color();
				if (cImg!=null){
				    if (cImg.length!=0){
					l2.add(pno3);					
				   }
				}
			}				
			
			int l2Size = l2.size();
		    List<ArrayList<String>> array1 = new ArrayList();
		    List<ArrayList<Integer>> array4 = new ArrayList();
		    List<ArrayList<Integer>> array7 = new ArrayList();
		    List<ArrayList<Double>> array10 = new ArrayList();

		    String color = "";
		    String prodName ="";
		    ArrayList<String> array2 = null;
		    ArrayList<Integer> array5 = null;
		    ArrayList<Integer> array8 = null;
		    ArrayList<Double> array11 = null;
		    for (int j=0;j<l2Size;j++){
		    	array2 =new ArrayList<String>();
		    	array5 =new ArrayList<Integer>();
		    	array8 =new ArrayList<Integer>();
		    	array11 =new ArrayList<Double>();
		    	color = psrvc.getOneProduct(l2.get(j)).getColor();
		    	prodName = psrvc.getOneProduct(l2.get(j)).getProductName();
//		    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Lativ";
//			    conn = DriverManager.getConnection(url,"sa", "sa123456");
		    	
//		    	envContext = new InitialContext();
//				Context initContext  = (Context)envContext.lookup("java:/comp/env");
//
//				DataSource ds = (DataSource)initContext.lookup("jdbc/TestDB");
//				
//			    conn = ds.getConnection();
//		    	
//			    pstmt = conn.prepareStatement("select size,quantity_in_stock,productId,price from production where color=? and productName=?");
//		    	pstmt.setString(1, color);
//		    	pstmt.setString(2, prodName);
//			    ResultSet rs = pstmt.executeQuery();
//			    
//			    while(rs.next()){
//			    	array2.add(rs.getString(1));
//			    	array5.add(rs.getInt(2));
//			    	array8.add(rs.getInt(3));
//			    	array11.add(rs.getDouble(4));
//			    }
//			    rs.close();
//			    pstmt.close();
//			    conn.close();
		    	
		    	List<Object[]> listOfDetails = psrvc.getProductDetails(color, prodName);
		    	for (Object[] aArray:listOfDetails){
		    		
		    		int counter1 =0;
		    		for (Object aColumn:aArray){
		    			
		    			switch (counter1) {		    			
		    			case 0: {String size1 = (String) aColumn;
		    			array2.add(size1);
		    			counter1++;
		    			break;
		    			}
		    			case 1: {Integer quantity1 = (Integer) aColumn;
		    			array5.add(quantity1);
		    			counter1++;
		    			break;
		    			}
		    			case 2: {Integer prodId1 = (Integer) aColumn;
		    			array8.add(prodId1);
		    			counter1++;
		    			break;
		    			}
		    			case 3: {Double price1 = (Double) aColumn;
		    			array11.add(price1);
		    			counter1++;
		    			break;
		    			}
		    			
		    			}
		    		}
		    	}
			    array1.add(array2);
		    	array4.add(array5);
		    	array7.add(array8);
		    	array10.add(array11);
		    }
//		    System.out.println("array1:"+array1);
//		    System.out.println("array4:"+array4);

		    DiscountService dsrvc = new DiscountService();
		    Integer packageNo = aProduct.getPackageNo();
			DiscountVO myDiscount =  dsrvc.getOneDiscount(aProduct.getPackageNo());
			String discountDescript = myDiscount.getDescript();
			Integer discountNo = myDiscount.getQuantity_condition();
		    Double unitPriceDiscounted = aProduct.getPrice();
		
				if(myDiscount.getDiscount1()!=null)
				    unitPriceDiscounted = unitPriceDiscounted*myDiscount.getDiscount1();
				else{
					
					unitPriceDiscounted = myDiscount.getDiscount2();
				}
						
			Map m1 = new HashMap();
            m1.put("pName", pName);
            m1.put("l1", l1);               //list of all pnos related to the main product
            m1.put("l2", l2);               //list of all pnos with colorImgs
            m1.put("array1", array1);
            m1.put("array4", array4);
            m1.put("array7", array7);
            m1.put("array10", array10);
            m1.put("discountType", discountDescript);
            m1.put("unitPriceDiscounted", unitPriceDiscounted);
            m1.put("mainCat", mainCat);
            String jsonString = JSONValue.toJSONString(m1); 
            out.println(jsonString);
			 out.flush();
		     out.close();
            
//			System.out.println(l1);
		}catch(Exception e){
			e.printStackTrace();
		}
}}
