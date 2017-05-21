package com.disc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.disc.model.DiscountService;
import com.disc.model.DiscountVO;

public class GetDiscountCatServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try{
	resp.setContentType("application/json");
	resp.setCharacterEncoding("utf-8");
	PrintWriter out = resp.getWriter();
	DiscountService dsrvc = new DiscountService();
	List<DiscountVO> listOfDiscountVOs = dsrvc.getAll();
	Iterator<DiscountVO> it = listOfDiscountVOs.iterator();
	DiscountVO aDiscount =null;
	Map<Integer,String> map1= new HashMap<Integer,String>();
	while(it.hasNext()){
		aDiscount =(DiscountVO) it.next();
		Integer key = aDiscount.getPackageNo();
		String value = aDiscount.getDescript();
		map1.put(key, value);
	}
    JSONObject jsonObj = new JSONObject(map1);
    String map2 = jsonObj.toString();
//    System.out.println(map2);
	out.print(map2);
	out.flush();
	out.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	}
 
}
