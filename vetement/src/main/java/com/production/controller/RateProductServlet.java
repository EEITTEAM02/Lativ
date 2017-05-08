package com.production.controller;

import java.io.IOException;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;


/**
 * Servlet implementation class ProductRating
 */
public class RateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn1 = null;
//		Connection conn2 = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		Writer out = response.getWriter();
		try{
			HttpSession session = request.getSession(false);			
			String jsonData =  request.getParameter("idScore");
		    JSONObject jsonObject = new JSONObject(jsonData);
		    Integer id = (Integer) jsonObject.get("id");
		    String score = (String) jsonObject.get("score");
		    Integer cid = (Integer) session.getAttribute("mno");
		  //use jdbc since we dont have rating dao
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=DB01";
		    conn1 = DriverManager.getConnection(url,"sa", "sa123456");
		    pstmt1 = conn1.prepareStatement("select score,times from rating where productId=?");
		    pstmt1.setInt(1,id);
		    ResultSet rs = pstmt1.executeQuery();
		    rs.next();
		    Double oldScore = Double.parseDouble(rs.getString(1));
		    Integer counter =Integer.parseInt(rs.getString(2));
		    pstmt1.close();
//		    conn1.close();
           
		    Double newScore = (Double.parseDouble(score)+oldScore*counter)/(counter+1);
		  
		    //update rating table
		    pstmt2 = conn1.prepareStatement("update rating set score =?,times=? where productId=?"); 
		    pstmt2.setDouble(1, newScore);
		    pstmt2.setInt(2, counter+1);
		    pstmt2.setInt(3, id);
		    pstmt2.executeUpdate();
		    ServletContext sctx = this.getServletConfig().getServletContext();
		    Set<Integer> l3;       
		    String cid1 = cid.toString();   
		    if (sctx.getAttribute(cid1)==null){      
		    	    l3 = new LinkedHashSet<Integer>();
		           sctx.setAttribute(cid1, l3);
		       }
		       else{		    	   
		    	   l3 = (Set<Integer>) sctx.getAttribute(cid1);
		       }
		       l3.add(id);
//		      System.out.println(l3);
		       pstmt2.close();
		    conn1.close();

		    
		}catch(Exception e){
			e.printStackTrace();
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
