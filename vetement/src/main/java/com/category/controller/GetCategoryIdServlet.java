package com.category.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class GetCategoryIdServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try{
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		Connection conn = null;
		PreparedStatement pstmt= null;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    String url = "jdbc:sqlserver://localhost:1433;DatabaseName=DB01";
	    conn = DriverManager.getConnection(url,"sa", "sa123456");
	    pstmt = conn.prepareStatement("select * from category ");
        Map<Integer,String> map1 = new HashMap<Integer,String>();
	    ResultSet rs = pstmt.executeQuery();
	    while(rs.next()){
	    	Integer key = rs.getInt(1);
	    	String value = rs.getString(2)+","+rs.getString(3)+","+rs.getString(4)+"("+rs.getInt(1)+")";
	    	map1.put(key, value);
	    }
	    JSONObject jsonObj = new JSONObject(map1);
	    String map2 = jsonObj.toString();
//	    System.out.println(map2);
		out.print(map2);
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
