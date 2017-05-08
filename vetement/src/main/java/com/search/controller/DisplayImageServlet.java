package com.search.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.production.model.ProductionVO;
import com.shoppingcartback.util.CartDAO;
import com.shoppingcartback.util.CartService;

@WebServlet("/Search/Image.do")
public class DisplayImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DisplayImageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartService dao = new CartService();
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		request.setCharacterEncoding("UTF-8");
		
		String productIdstr = request.getParameter("productId");
		Integer productId = Integer.parseInt(productIdstr);
		
		ProductionVO productionVO = dao.getProductionForSearch(productId);
		
		byte[] image = productionVO.getPicture_main();
		out.write(image);
		out.close();
	}

}
