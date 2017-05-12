package com.production.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.production.model.ProductionService;
import com.production.model.ProductionVO;

public class GetMostInStockProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		PrintWriter out = resp.getWriter();
		ProductionService psrvc = new ProductionService();
		Integer noOfProducts = psrvc.getAll().size();	
		String id = req.getParameter("id");
		String category = "1";
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt1 = null;
		if (id.equals("1"))
			category ="女";
		else if (id.equals("2"))
			category = "男";
		else 
			category = "兒童";
		try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Lativ";
		conn = DriverManager.getConnection(url,"sa", "sa123456");
		pstmt = conn.prepareStatement("select categoryId from category where class_top=?");
	    pstmt.setString(1,category);
	    ResultSet rs = pstmt.executeQuery();
	    List<Integer> listOfCatId = new LinkedList<Integer>();
		while(rs.next()){
			listOfCatId.add(rs.getInt(1));
		}
		
		rs.close();
		pstmt.close();
		int size1 = listOfCatId.size();
		String stringList = "(";
		Iterator itId = listOfCatId.iterator();
		int counter = 1;
		while(itId.hasNext()){
			String stringid= itId.next().toString();
			if (counter < size1)
			   stringList += (stringid+",");
			if (counter == size1)
				stringList += stringid + ")";
			counter++;
		}
		
		
		
		pstmt1 = conn.prepareStatement("SELECT * FROM ( SELECT  productName,ProductId,ROW_NUMBER() OVER(PARTITION BY productName ORDER BY quantity_in_stock DESC) rn FROM production where categoryId in "+stringList+" )a WHERE rn = 1");
		ResultSet rs1 = pstmt1.executeQuery();
		Integer[] listOfProdId = new Integer[3];
		Integer top1 = 0;
		Integer top2 = 0;
		Integer top3 = 0;
		Integer currentQ =0;
		while(rs1.next()){
			currentQ = psrvc.getOneProduct(rs1.getInt(2)).getQuantity_in_stock();
			if (currentQ >top1){
				top1 = currentQ;
			    listOfProdId[0] = (rs1.getInt(2));		    
			}
			else if (currentQ>top2){
				top2 = currentQ;
				listOfProdId[1] = (rs1.getInt(2));
			}
			else if (currentQ>top3){
				top3 = currentQ;
				listOfProdId[2] = (rs1.getInt(2));
			}
		}
		
		
//		pstmt1 = conn.prepareStatement("select top 3 productId from production where categoryId in "+stringList +" order by quantity_in_stock desc");
////		pstmt1.setString(1,stringList);
//		ResultSet rs1 = pstmt1.executeQuery();
//		List<Integer> listOfProdId = new LinkedList<Integer>();
//		while(rs1.next()){
//			listOfProdId.add(rs1.getInt(1));
//		}
		
		
//		System.out.println(listOfProdId);
		rs1.close();
		pstmt1.close();
		conn.close();
//		
//
		
		Map<Integer,Integer> pid_idWithPage = new HashMap<Integer,Integer>();
		Integer key =null;
		Integer value = null;
		Integer keyChange1 = null;
		Integer keyChange2 = null;
		String pName = null;
		ProductionVO aProduct =null;

		for (int i =0;i<listOfProdId.length;i++){
			key = listOfProdId[i];
//			System.out.println("key:"+key);
			aProduct = psrvc.getOneProduct(key);
			keyChange1 = key;
			keyChange2 = key;
			pName = aProduct.getProductName();
			if (aProduct.getPicture_model1()!=null){
				value = key;
				pid_idWithPage.put(key, value);				
				
			}
			else{
				for (;keyChange1>0;keyChange1--){
		
					if(psrvc.getOneProduct(keyChange1).getPicture_model1()!=null&&psrvc.getOneProduct(keyChange1).getProductName().equals(pName)){
						value = keyChange1;
						pid_idWithPage.put(key, value);	

					}
				}
				for (;keyChange2<=noOfProducts;keyChange2++){
					if(psrvc.getOneProduct(keyChange2).getPicture_model1()!=null&&psrvc.getOneProduct(keyChange2).getProductName().equals(pName)){
						value = keyChange2;
						pid_idWithPage.put(key, value);	

					}
				}
			}
		}

	     JSONObject jsonObj = new JSONObject(pid_idWithPage);
	     String jsonString = jsonObj.toString();
//	     System.out.println(jsonString);
	     out.print(jsonString);
	     out.flush();
	     out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);

}
}
