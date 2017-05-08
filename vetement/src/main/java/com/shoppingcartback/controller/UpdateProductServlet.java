package com.shoppingcartback.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.customer.model.CustomerService;
import com.discount.model.DiscountService;
import com.discount.model.DiscountVO;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;
import com.shoppingcartback.model.ShoppingCart;
import com.shoppingcartback.util.CartDAO;
import com.shoppingcartback.util.CartService;

@WebServlet("/ProductBack/Update.do")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateProductServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingCartBack");
		
		if(cart==null){
			response.sendRedirect(request.getContextPath()+"/ProductBack/Checkout.do");
			return;
		}
		
		CartService cartService = new CartService();

		request.setCharacterEncoding("UTF-8");
		String cmd = request.getParameter("cmd");

		String productIdStr = request.getParameter("productId");
		Integer productId = Integer.parseInt(productIdStr);
		Integer count = null;

		OrderService osrvc = new OrderService();
		Integer mno = (Integer) session.getAttribute("mno");
		CustomerService msrvc = new CustomerService();
		Set<OrderVO> orderList = msrvc.getOrderVOsByCustomerId(mno);
		Iterator<OrderVO> it = orderList.iterator();
		OrderVO target = null;
		while (it.hasNext()) {
			target = it.next();
			if (!target.isStatus1()) {
				break;
			}
		}
		
		Integer orderNo = target.getOrderNo();

		if (cmd.equals("del")) {
			
			//更新購物車物件，清除資料庫某項明細
			cart.delete(productId);
			DiscountService dao = new DiscountService();
			Set<DiscountVO> set = new LinkedHashSet<DiscountVO>(dao.getAll());

			set = cart.discountSelect(set);
			cart.cartRe();
			cart.discountDeploy(set);
			cartService.orderItemVODelete(orderNo, productId);
		}

		if (cmd.equals("update")) {
			String countStr = request.getParameter("count");
			count = Integer.parseInt(countStr);

			// 修改購物車物件某項明細
			cart.modifyQty(productId, count);

			DiscountService dao = new DiscountService();
			Set<DiscountVO> set = new LinkedHashSet<DiscountVO>(dao.getAll());

			set = cart.discountSelect(set);
			cart.cartRe();
			cart.discountDeploy(set);
			
			Double price_discount = null;
			Double price_item = null;
			
			OrderItemVO orderItemVO = cart.getCart().get(productId);
			price_discount = orderItemVO.getPrice_discount();
			price_item = orderItemVO.getPrice_item();
			
//			cartDao.orderItemVOUpdate(orderNo, productId, count, price_discount, price_item);
		}
		
		cart.reDatabase(target);
		response.sendRedirect(request.getContextPath() + "/ProductBack/ProductCheck.jsp");

	}
}
