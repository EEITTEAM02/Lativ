package com.shoppingcartback.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cust.model.CustomerService;
import com.disc.model.DiscountService;
import com.disc.model.DiscountVO;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;
import com.search.model.SearcherService;
import com.shoppingcartback.model.ShoppingCart;

@WebServlet("/ProductBack/Checkout.do")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckoutServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingCartBack");
		if(cart==null){
			cart = new ShoppingCart();
			session.setAttribute("shoppingCartBack", cart);
		}
		
		// 取出所有的折扣方式，並置入set物件
		DiscountService dao = new DiscountService();
		Set<DiscountVO> set = new LinkedHashSet<DiscountVO>(dao.getAllDiscount());
		
		//寫死會員編號
//		Integer no = ((CustomerVO)session.getAttribute("login_customer_info")).getCustomerId();
		Integer no = 1;
		session.setAttribute("mno",no);
		
		// 取出某會員的未完成訂單
		OrderService osrvc = new OrderService();
		Integer mno = (Integer) session.getAttribute("mno");
		CustomerService msrvc = new CustomerService();
		Set<OrderVO> orderList = msrvc.getOrderVOsByCustomerId(mno);
		Iterator<OrderVO> it = orderList.iterator();
		OrderVO target = null;
		
		//找出此顧客的未完成訂單
		while (it.hasNext()) {
			target = it.next();
			if (!target.isStatus1()) {
				break;
			}
		}
		
		//若所有訂單都完成，會取出最後一份訂單，此時將target設成null，target就不會保存任何訂單資料
		if(target.isStatus1()){
			target = null;
		}
		if(target==null){
			//若是沒有未完成訂單，清空放在session內的購物車，以免重啟CheckoutServlet時，購物車頁面會有商品，並重導至某頁面
			session.setAttribute("shoppingCartBack", null);
			session.setAttribute("recommend", null);
			response.sendRedirect(request.getContextPath()+"/ProductBack/ProductCheck.jsp");
			return;
		}
		
		//將資料庫內的明細放入購物車
		List<OrderItemVO> list = osrvc.getShoppingCartOrderItemsByOno(target.getOrderNo());
		cart.createCart(list);
		
		set = cart.discountSelect(set);
		cart.cartRe();
		cart.discountDeploy(set);
		
		cart.reDatabase(target);
		
		SearcherService daoSearch = new SearcherService();
		List<Object[]> listRecommend = daoSearch.getHotProduction(3);
		session.setAttribute("recommend", listRecommend);
		// 轉移至結帳畫面
		response.sendRedirect(request.getContextPath() + "/ProductBack/ProductCheck.jsp");
	
	}

}
