package com.shoppingcartback.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.production.model.ProductionVO;
import com.shoppingcartback.util.CartDAO;

@WebServlet("/ProductBack/Image.do")
public class DisplayImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayImageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDAO dao = new CartDAO();
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		request.setCharacterEncoding("UTF-8");
		
		String productName = request.getParameter("productName");
		String size = request.getParameter("size");
		String color = request.getParameter("color");
		
		ProductionVO productionVO = dao.getProductionForImage(productName, size, color);
		
		byte[] image = productionVO.getPicture_main();
		out.write(image);
		out.close();
	}

}
