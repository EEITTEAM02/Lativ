package com.favorite.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.favorite.model.FavoriteService;
import com.favorite.model.FavoriteVO;
import com.production.model.ProductionVO;

@WebServlet("/FavoriteCheck")
public class FavoriteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		doPost(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter out = res.getWriter();
		String action = req.getParameter("action");
		
		if("getOne_For_Display".equals(action)){
			System.out.println("載入頁面查詢");
			
			Integer customerId = new Integer(req.getParameter("customerId").trim());
			Integer productId = new Integer(req.getParameter("productId").trim());
			
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			try{
				FavoriteService mSrv = new FavoriteService();
				List<FavoriteVO> selectfavorite = mSrv.getOneEmp(customerId, productId);
				System.out.println(selectfavorite);
				
				if (selectfavorite.isEmpty()) {
					msg = "not add";
				}else{
					msg = "as add";
				}
				System.out.println(msg);
				res.getWriter().println(msg);
			}catch (Exception e) {
				errorMsgs.add("???");
				e.printStackTrace();
			}
		}
		
		
		if ("getChange_For_Display".equals(action)){

			System.out.println("開始切換收藏狀態");
			
			Integer customerId = new Integer(req.getParameter("customerId").trim());
			Integer productId = new Integer(req.getParameter("productId").trim());
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				FavoriteService mSrv = new FavoriteService();
				List<FavoriteVO> selectfavorite = mSrv.getOneEmp(customerId, productId);
				System.out.println(selectfavorite);
				
				FavoriteVO favoriteVO = new FavoriteVO();
				favoriteVO.setCustomerId(customerId);
				favoriteVO.setProductId(productId);
				
				if (selectfavorite.isEmpty()) {
					mSrv.addFavorite(favoriteVO);
					msg = "insert";
				}else{
					mSrv.deleteFavorite(customerId, productId);
					msg = "delete";
				}
				System.out.println(msg);
				res.getWriter().println(msg);

				
			}catch (Exception e) {
				errorMsgs.add("???");
				e.printStackTrace();
			}
		}
		
		if ("getAll".equals(action)){
			
			System.out.println("開始查詢");
			
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				Integer customerId = new Integer(req.getParameter("customerId").trim());	
				List  l1 = new LinkedList();
			
				FavoriteService mSrv = new FavoriteService();
				List<ProductionVO> selectfavorite = mSrv.getAll(customerId);
				System.out.println(selectfavorite);
				
				for (ProductionVO aProduct : selectfavorite) {
					Map m1 = new HashMap();
					m1.put("productName", aProduct.getProductName());
					m1.put("productId", aProduct.getProductId());
					m1.put("size", aProduct.getSize());
					m1.put("color", aProduct.getColor());
					m1.put("price", aProduct.getPrice());
					l1.add(m1);	
				}
				String jsonString = JSONValue.toJSONString(l1);
				System.out.println(jsonString);

//				 out.println(jsonString);
//				 out.flush();
//			     out.close();
				res.getWriter().println(jsonString);	

				
			}catch (Exception e) {
				errorMsgs.add("???");
				e.printStackTrace();
			}
		}
		
		if ("delete".equals(action)){
			
			System.out.println("開始刪除");
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				
				Integer customerId = new Integer(req.getParameter("customerId").trim());
				Integer productId = new Integer(req.getParameter("productId").trim());
				System.out.println(productId);
				FavoriteService mSrv = new FavoriteService();
				mSrv.deleteFavorite(customerId, productId);
				msg = "delete";
				System.out.println("刪除成功");
				res.getWriter().println(msg);
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
}
