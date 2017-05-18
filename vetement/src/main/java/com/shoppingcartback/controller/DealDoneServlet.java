package com.shoppingcartback.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;
import com.order.model.OrderService;
import com.order.model.OrderVO;
import com.shoppingcartback.model.ShoppingCart;

@WebServlet("/ProductBack/DealDone.do")
public class DealDoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DealDoneServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		ShoppingCart cart = (ShoppingCart)session.getAttribute("shoppingCartBack");
		// 取出某會員的未完成訂單
		Integer no = ((CustomerVO)session.getAttribute("login_customer_info")).getCustomerId();
//		Integer no = 1;
		session.setAttribute("mno",no);
		
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
		
		//若所有訂單都完成，會取出最後一份訂單，此時將target設成null，target就不會保存任何訂單資料
		if(target.isStatus1()){
			target = null;
		}		
		if(target==null){
			//若是沒有未完成訂單，重導至某頁面
			response.sendRedirect(request.getContextPath()+"/ProductBack/ProductCheck.jsp");
			return;
		}
		
		Map<String,String> dealInformation = (Map<String,String>)session.getAttribute("dealInformation");
		
		Integer orderNo = target.getOrderNo();
		
		Long time = System.currentTimeMillis();
		java.sql.Date dealDate = new Date(time);
		Integer customerId = mno;
		
		String addr_send = dealInformation.get("addr_send");
		
		//商品金額若未滿1000，須加50元運費
		Double price_total_Origin = cart.getPriceTotal();
		Double price_total = null;
		if(price_total_Origin>=1000.0){
			price_total = price_total_Origin;
		}else{
			price_total = price_total_Origin+50.0;
		}
		
		boolean status1 = true;
		String name_send = dealInformation.get("name_send");
		String tel_send = dealInformation.get("phone_send");
		
		OrderService dao = new OrderService();
		dao.updateOrder(orderNo, dealDate, customerId, addr_send, price_total, status1, name_send, tel_send);
		
		response.sendRedirect(request.getContextPath()+"/Search/search.jsp");
	}

}
