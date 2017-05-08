package com.production.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.production.model.ProductionService;
import com.production.model.ProductionVO;

public class GetAllProdIdServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		PrintWriter out = resp.getWriter();
		ProductionService psrvc = new ProductionService();
		List<ProductionVO> listOfProdVO = psrvc.getAll();
		Iterator it = listOfProdVO.iterator();
		List<Integer> listOfProdId = new LinkedList<Integer>();
		ProductionVO aProduct = null;
		while(it.hasNext()){
			aProduct =(ProductionVO) it.next();
			listOfProdId.add(aProduct.getProductId());
		}
		out.print(listOfProdId);
		out.flush();
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
