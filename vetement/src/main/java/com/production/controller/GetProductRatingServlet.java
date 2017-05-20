package com.production.controller;

import java.io.IOException;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
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
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		Context envContext = null;
		Writer out = response.getWriter();
		try{
			//use jdbc since we dont have rating dao
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=Lativ";
//		    conn = DriverManager.getConnection(url,"sa", "sa123456");
			envContext = new InitialContext();
			Context initContext  = (Context)envContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)initContext.lookup("jdbc/TestDB");
			
		    conn = ds.getConnection();
			
		    pstmt = conn.prepareStatement("select score from rating where productId=?");
		    
		    String pno = (String) (request.getParameter("pno"));
//		    System.out.println(pno);
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
