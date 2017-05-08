package com.category.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.production.model.ProductionService;
import com.production.model.ProductionVO;

public class GetProductInCategoryServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		Integer selectedCat = Integer.parseInt(req.getParameter("selectedCat"));
        List<Integer> listOfPid = new LinkedList<Integer>();
		ProductionService psrvc = new ProductionService();
		List<ProductionVO> listOfProd= psrvc.findByCategoryId(selectedCat);
		Iterator it = listOfProd.iterator();
		ProductionVO aProduct = null;
		Integer pid = null;
		while(it.hasNext()){
			aProduct=(ProductionVO) it.next();
			pid = aProduct.getProductId();
			listOfPid.add(pid);
		}
		
		JSONObject jsonObj = new JSONObject(listOfPid);
		String listOfPid2 = jsonObj.toString();
		out.print(listOfPid);
		out.flush();
		out.close();
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
     
}
