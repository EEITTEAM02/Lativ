package com.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.discount.model.DiscountService;
import com.discount.model.DiscountVO;

@WebServlet("/Search/SearchDiscount.do")
public class SearchDiscountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchDiscountServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		DiscountService dao = new DiscountService();
		List<DiscountVO> list = dao.getAll();
		
		List jQueryList = new ArrayList<>();
		for(DiscountVO VO:list){
			Map map = new LinkedHashMap<>();
			map.put("packageNo", VO.getPackageNo());
			map.put("discount1", VO.getDiscount1());
			map.put("discount2", VO.getDiscount2());
			map.put("quantity_condition", VO.getQuantity_condition());
			map.put("descript", VO.getDescript());
			jQueryList.add(map);
		}
		
		String jsonString = JSONValue.toJSONString(jQueryList);
		out.println(jsonString);
	}

}
