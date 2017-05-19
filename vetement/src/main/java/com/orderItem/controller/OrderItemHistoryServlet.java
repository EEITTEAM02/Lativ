package com.orderItem.controller;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONValue;

import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemService;
import com.orderItem.model.OrderItemVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;
 

public class OrderItemHistoryServlet extends HttpServlet {
     
	private static final long serialVersionUID = 1L;

     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		Connection conn = null;
		PreparedStatement pstmt = null;
		PrintWriter out = response.getWriter();
	    Integer ono = Integer.parseInt(request.getParameter("ono"));
		ProductionService psrvc = new ProductionService();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Lativ";
		    conn = DriverManager.getConnection(url,"sa", "sa123456");
		    pstmt = conn.prepareStatement("select score from rating where productId=?");
		    
		    
			List  l1 = new LinkedList();
			OrderItemService oisvc = new OrderItemService();

			List<OrderItemVO> list =oisvc.getOrderItemsByOrderNo(ono);

			Integer size = psrvc.getAll().size();
			
			
			for (OrderItemVO anOrderItem : list) {
				Integer pidFinal =1;
				if (anOrderItem.getProductionVO().getPicture_model1()==null){					
					Integer pid = anOrderItem.getProductionVO().getProductId();
					Integer pidChange1 = pid;
					Integer pidChange2 = pid;
					String pname = psrvc.getOneProduct(pid).getProductName();
					for (;pidChange1>0;pidChange1--){
						if (psrvc.getOneProduct(pidChange1).getPicture_model1()!=null&&psrvc.getOneProduct(pidChange1).getProductName().equals(pname)){
							pidFinal = pidChange1;
							break;
						}
					}
					for (;pidChange2<=size;pidChange2++){
						if (psrvc.getOneProduct(pidChange2).getPicture_model1()!=null&&psrvc.getOneProduct(pidChange2).getProductName().equals(pname)){
							pidFinal = pidChange2;
							break;
						}
					}
				}
				else {
					pidFinal = anOrderItem.getProductionVO().getProductId();
				}
				 pstmt.setInt(1, pidFinal);
				    ResultSet rs = pstmt.executeQuery();
				    String currentScore = "0";
				    if (rs.next()){
				        currentScore = rs.getString(1);
				    }
				
					Map m1 = new HashMap();  
					m1.put("oino", anOrderItem.getSeqNo());
					 m1.put("pname", anOrderItem.getProductionVO().getProductName()); 
					 m1.put("size", anOrderItem.getProductionVO().getSize());
					 m1.put("color", anOrderItem.getProductionVO().getColor());
					 m1.put("pno", anOrderItem.getProductionVO().getProductId()); 
					 m1.put("quantity", anOrderItem.getQuantity_order());   
					 m1.put("unitPriceO",anOrderItem.getPrice_origin());
					 m1.put("unitPriceD",anOrderItem.getPrice_discount());
					 m1.put("totalPrice",anOrderItem.getPrice_item());
					 m1.put("score", currentScore);
					 m1.put("pnoWithPage", pidFinal);
					 l1.add(m1);
                     System.out.println(ono);
				
			}
			String jsonString = JSONValue.toJSONString(l1);  
			 out.println(jsonString);
			 out.flush();
		     out.close();

			/***************************��L�i�઺���~�B�z*************************************/
		} catch (Exception e) {
			out.write("dd" + e.getMessage());
			out.flush();
			out.close();
		}
	}
    
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    	doPost(request,response);
    }
    }
