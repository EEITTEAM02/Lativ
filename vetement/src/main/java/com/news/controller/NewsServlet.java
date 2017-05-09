package com.news.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.news.model.NewsService;
import com.news.model.NewsVO;

public class NewsServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setHeader("Access-Control-Allow-Origin", "*");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("utf-8");

		PrintWriter out = res.getWriter();
		NewsService newsSvc = new NewsService();
		String action = req.getParameter("action");
		String url = "/news/back_page.jsp";
		
		//selete
		if("sel".equals(action)){
			String s1 = req.getParameter("newsno");
			
			System.out.println(s1);
			NewsVO newsVO = newsSvc.getOneNews(Integer.parseInt(s1));
			req.setAttribute("newsVO", newsVO); 
			List  l1 = new LinkedList();
			
				 Map m1 = new HashMap();       
				 m1.put("Newsno",newsVO.getNewsno());   
				 m1.put("Title", newsVO.getTitle()); 
				 m1.put("Content",newsVO.getContent()); 
				 m1.put("Pubdate", newsVO.getPubdate().toString());
				 l1.add(m1);
			
			String jsonString = JSONValue.toJSONString(l1);
			System.out.println(jsonString);
			
			out.println(jsonString);
		}
		
		//delete
		if("del".equals(action)){
			Integer newsno = new Integer(req.getParameter("deleteno"));
			System.out.println(newsno);
			
			newsSvc.deleteNews(newsno);
			
			
			RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
			successView.forward(req, res);
		};
		
		//insert
		if ("ins".equals(action)) {
			List<String> errorMsgs = new LinkedList<String>();
			req.setAttribute("errorMsgs", errorMsgs);
//			HttpSession session = req.getSession();
//			session.setAttribute("errorMsgs", errorMsgs);
			
			try {
				String newsno = req.getParameter("newsno");
				
				if(newsno.equals("new")){
					String title1 = req.getParameter("title");
					System.out.println(title1);
					if (title1 == null || title1.trim().length() == 0) {
						errorMsgs.add("主題內容: 請勿空白");
					}
					String content1 = req.getParameter("content");
					System.out.println(content1);
					if (content1 == null || content1.trim().length() == 0) {
						errorMsgs.add("內文內容: 請勿空白");
					}
					String pubdate2 = req.getParameter("pubdate");
					System.out.println(pubdate2);

					java.sql.Date pubdate11 = null;
					
					try {
						pubdate11 =java.sql.Date.valueOf(pubdate2);
					} catch (IllegalArgumentException e) {
						errorMsgs.add("日期格式為: yyyy-MM-dd");
					}
					
					NewsVO newsVO1 = new NewsVO();
					newsVO1.setTitle(title1);
					newsVO1.setContent(content1);
					newsVO1.setPubdate(pubdate11);

					if (!errorMsgs.isEmpty()) {
						req.setAttribute("newsVO", newsVO1); // 含有輸入格式錯誤的empVO物件,也存入req
						RequestDispatcher failureView = req
								.getRequestDispatcher("/news/back_page.jsp");
						failureView.forward(req, res);
						return;
					}
					
					newsVO1 = newsSvc.addNews(title1,content1,pubdate11);
					
					
					res.sendRedirect("/vetement/news/back_page.jsp");
//					RequestDispatcher successView = req.getRequestDispatcher(url); // 新增成功後轉交listAllEmp.jsp
//					successView.forward(req, res);
//					return;
				}else{
				Integer newsno1 = new Integer(newsno);
				
				String title = req.getParameter("title");
				System.out.println(title);
				if (title == null || title.trim().length() == 0) {
					errorMsgs.add("主題內容: 請勿空白");
				}
				String content = req.getParameter("content");
				System.out.println(content);
				if (content == null || content.trim().length() == 0) {
					errorMsgs.add("內文內容: 請勿空白");
				}
				String pubdate1 = req.getParameter("pubdate");
				System.out.println(pubdate1);
				java.sql.Date pubdate = null;
				
				try {
					pubdate =java.sql.Date.valueOf(pubdate1);
				} catch (IllegalArgumentException e) {
					errorMsgs.add("日期格式為: yyyy-MM-dd");
				}

				NewsVO newsVO = new NewsVO();
				newsVO.setNewsno(newsno1);
				newsVO.setTitle(title);
				newsVO.setContent(content);
				newsVO.setPubdate(pubdate);

				if (!errorMsgs.isEmpty()) {
					req.setAttribute("newsVO", newsVO); // 含有輸入格式錯誤的empVO物件,也存入req
					RequestDispatcher failureView = req
							.getRequestDispatcher("/news/back_page.jsp");
					failureView.forward(req, res);
					return;
				}
				
				newsVO = newsSvc.updateNews(newsno1,title,content,pubdate);
				
				req.setAttribute("newsVO", newsVO); // 資料庫update成功後,正確的的empVO物件,存入req
				res.sendRedirect("/vetement/news/back_page.jsp");
//				RequestDispatcher successView = req.getRequestDispatcher(url); // 修改成功後,轉交listOneEmp.jsp
//				successView.forward(req, res);
//				return;
				}
			} catch (Exception e) {
				errorMsgs.add(e.getMessage());
				RequestDispatcher failureView = req
						.getRequestDispatcher("/news/back_page.jsp");
				failureView.forward(req, res);
				
			};
		};
	};
}
