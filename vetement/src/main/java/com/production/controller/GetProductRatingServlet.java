package com.production.controller;

import java.io.IOException;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ProductRating
 */
public class GetProductRatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private DataSource ds =null;   
	
	public void init(ServletConfig config) throws ServletException
	   {
	      super.init(config);   
	      Context envContext = null;
	      Context initContext = null;
	      try
	      { 
	    	  envContext = new InitialContext();
	    	  initContext  = (Context)envContext.lookup("java:/comp/env");
	    	  ds = (DataSource)initContext.lookup("jdbc/TestDB");
	      }
	      catch(NamingException ne)
	      {
	         ne.printStackTrace();              
	       }
	       catch(Exception e)
	       {
	          e.printStackTrace();
	       }
	   }
	   
	public DataSource getTestDS()
	      {
	         return ds;
	      }
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
//		Context envContext = null;
		Writer out = response.getWriter();
		try{
//			envContext = new InitialContext();
//			Context initContext  = (Context)envContext.lookup("java:/comp/env");
//			DataSource ds = (DataSource)initContext.lookup("jdbc/TestDB");
//			
//		    conn = ds.getConnection();
			conn = getTestDS().getConnection();
			
		    pstmt = conn.prepareStatement("select score from rating where productId=?");
		    
		    String pno = (String) (request.getParameter("pno"));

		    pstmt.setString(1, pno);
		    ResultSet rs = pstmt.executeQuery();
		    String currentScore = "0";
		    if (rs.next()){
		        currentScore = rs.getString(1);
		    }
//		    System.out.println(currentScore);
		    out.write(currentScore);
		    
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
