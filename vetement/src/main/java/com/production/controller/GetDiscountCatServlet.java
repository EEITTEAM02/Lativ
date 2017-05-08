package com.production.controller;

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

import com.discount.model.DiscountService;
import com.discount.model.DiscountVO;

public class GetDiscountCatServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		PrintWriter out = resp.getWriter();
		DiscountService dsrvc = new DiscountService();
		List<DiscountVO> listOfDiscountVO = dsrvc.getAll();
		Map<Integer,String> map = new HashMap<Integer,String>();
		Iterator it = listOfDiscountVO.iterator();
		DiscountVO aDiscount = null;
		while(it.hasNext()){
			aDiscount =(DiscountVO) it.next();
			map.put(aDiscount.getPackageNo(), aDiscount.getDescript());
		}
		out.print(map);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
  
}
