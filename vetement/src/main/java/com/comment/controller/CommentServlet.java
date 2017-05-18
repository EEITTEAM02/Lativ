package com.comment.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.comment.model.ComentOnlyVO;
import com.comment.model.CommentService;
import com.comment.model.CommentVO;
import com.production.model.ProductionService;
import com.production.model.ProductionVO;


@WebServlet("/CommentCheck")
public class CommentServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		doPost(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setHeader("Access-Control-Allow-Origin", "*");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String action = req.getParameter("action");
		
		if ("insert".equals(action)){
			
			System.out.println("進入新增");
			
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			System.out.println();
			try{
				
				String comment = req.getParameter("comment");
				Integer customerId = new Integer(req.getParameter("customerId").trim());
				Integer productId = new Integer(req.getParameter("productId").trim());
				Integer orderNo = new Integer(req.getParameter("orderNo").trim());
				System.out.println(comment);
				if (comment == null || comment.trim().length() == 0) {
					errorMsgs.add("評價請勿空白");
				}
				String commentReg = "^.{2,100}$";
				if(!comment.trim().matches(commentReg) ) { 
					errorMsgs.add("評價只能是中、英文字母、數字和_ , 且長度必需在2到100之間");
	            }
				if (!errorMsgs.isEmpty()){
					res.getWriter().println(errorMsgs.toString());
					return;//程式中斷
				}
				
				CommentVO commentVO = new CommentVO();
				commentVO.setComment(comment);
				commentVO.setCustomerId(customerId);
				commentVO.setProductId(productId);
				commentVO.setOrderNo(orderNo);
				
				CommentService svc = new CommentService();
				svc.addComment(commentVO);
				msg = "add ok";

				
				res.getWriter().println(msg);
			}catch (Exception e) {
				errorMsgs.add(e.getMessage());
				e.printStackTrace();
			}
		}
		
		
		if ("delete".equals(action)){
			
			System.out.println("111111");
			String msg = null;
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				
				Integer customerId = new Integer(req.getParameter("customerId").trim());
				Integer productId = new Integer(req.getParameter("productId").trim());
				
				CommentService commentSvc = new CommentService();
				commentSvc.deleteComment(customerId, productId);
				msg="刪除OK";
				res.getWriter().println(msg);
			}catch (Exception e) {
				errorMsgs.add("???"+e.getMessage());
				e.printStackTrace();
			}
		}
		
		if ("GET_ALL".equals(action)){
			
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				
				Integer productId = new Integer(req.getParameter("productId").trim());
				List  l1 = new LinkedList();
				CommentService commentSvc = new CommentService();
				List<ComentOnlyVO> selectComment =  commentSvc.getAll(productId);
				
				for (ComentOnlyVO aComment : selectComment) {
					Map m1 = new HashMap();
					m1.put("comment", aComment.getComment());
					m1.put("orderNo", aComment.getOrderNo());
					m1.put("productName", aComment.getProductName());
					m1.put("size", aComment.getSize());
					m1.put("color", aComment.getColor());
					String sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(aComment.getPubtime());
					m1.put("pubtime", sdt);
					l1.add(m1);	
				}
				String jsonString = JSONValue.toJSONString(l1);
				System.out.println(jsonString);
				res.getWriter().println(jsonString);
				
			}catch (Exception e) {
				errorMsgs.add("???"+e.getMessage());
				e.printStackTrace();
			}
			
		}
		if("GET_ONE".equals(action)){
			
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
			
			try{
				String msg = null;
				Integer customerId = new Integer(req.getParameter("customerId").trim());
				Integer productId = new Integer(req.getParameter("productId").trim());
				CommentService svc = new CommentService();
				Set<CommentVO> commentSvc = svc.getOne(customerId, productId);
				System.out.println(commentSvc);
				if (commentSvc.isEmpty()) {
					msg = "null";
				}else{
					msg = "as add";
				}
				res.getWriter().println(msg);
				
			}catch (Exception e) {
				errorMsgs.add("???"+e.getMessage());
				e.printStackTrace();
			}
		}
		
	}

}
