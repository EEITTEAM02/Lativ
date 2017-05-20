package com.disc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONValue;

import com.disc.model.DiscountDAO;
import com.disc.model.DiscountVO;
import com.disc.model.DiscountService;;

@WebServlet("/DiscountServlet")
public class DiscountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req,res);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		PrintWriter ajax_out = res.getWriter();
		String act = req.getParameter("action");
		
		//Display all discount condition
		if("getAll".equals(act)){
			/***************************開始查詢資料 ****************************************/
			DiscountDAO dao = new DiscountDAO();
			
			DiscountService discountSvc = new DiscountService();
			List<DiscountVO> all_discount = discountSvc.getAllDiscount();		//find_a_discount是一個DiscountVO物件
			List all_discount_list = new ArrayList();
			
			for (final DiscountVO each_discountVO : all_discount) {
				Map each_discount_map = new HashMap(); 
				
				each_discount_map.put("packageNo", each_discountVO.getPackageNo());
				each_discount_map.put("quantity_condition", each_discountVO.getQuantity_condition());
				each_discount_map.put("discount1", each_discountVO.getDiscount1());
				each_discount_map.put("discount2", each_discountVO.getDiscount2());
				each_discount_map.put("descript", each_discountVO.getDescript());
				
				all_discount_list.add(each_discount_map);
			}
			
			//System.out.println(all_discount_list);
			String all_discount_list_json = JSONValue.toJSONString(all_discount_list);
			
			ajax_out.println(all_discount_list_json);
			ajax_out.close();
			
			//System.out.println(list);
			/***************************查詢完成,準備轉交(Send the Success view)*************/
//			HttpSession session = req.getSession();
//			session.setAttribute("list", all_discount);    // 資料庫取出的all_discount物件,存入session,key是list
//			// Send the Success view
//			String url = "/admin/DiscountRule.jsp";
//			RequestDispatcher updateView = req.getRequestDispatcher(url);
//			
//			updateView.forward(req, res);	
//					//要RequestDispatcher才能forward //實際上導頁是forward
//			return;
			
			
		}
		
		//Edit-get specific discount condition
		if("getOne".equals(act)){
			
			Integer packageId = Integer.parseInt(req.getParameter("edit_id"));
			
			DiscountService discountSvc = new DiscountService();
			DiscountVO find_a_discount = discountSvc.getOneDiscount(packageId);		//find_a_discount是一個DiscountVO物件
			
			Map discount_map = new HashMap();	//宣告一個HashMap物件，叫做discount_map
			
			discount_map.put("packageNo", find_a_discount.getPackageNo());   
			discount_map.put("quantity_condition", find_a_discount.getQuantity_condition()); 
			discount_map.put("discount1", find_a_discount.getDiscount1()); 
			discount_map.put("discount2", find_a_discount.getDiscount2());
			discount_map.put("descript", find_a_discount.getDescript());
			
			//System.out.println(discount_map);
			
			String discount_json = JSONValue.toJSONString(discount_map); 
			
			ajax_out.println(discount_json);
			ajax_out.close();
			
			//System.out.println(find_a_discount);
		}
		
		//Update discount condition
		if("updateData".equals(act)){
			Integer update_count = 0;
			
			Integer discount_id = Integer.parseInt(req.getParameter("updated_no"));
			String discount_name = req.getParameter("updated_description");
			Integer discount_per_cloth = Integer.parseInt(req.getParameter("updated_cloth_amount"));
			Double discount_type1 = Double.parseDouble(req.getParameter("updated_discount1"));
			Double discount_type2 = Double.parseDouble(req.getParameter("updated_discount2"));
			
//			System.out.println(discount_type1);
//			System.out.println(discount_type2);
			if (discount_type1 == 0.0){
				discount_type1 = null;
			}
			if (discount_type2 == 0.0){
				discount_type2 = null;
			}
			DiscountDAO discountDAO = new DiscountDAO();
			
			DiscountVO updated_rule = new DiscountVO();
			updated_rule.setDescript(discount_name);
			updated_rule.setDiscount1(discount_type1);
			updated_rule.setDiscount2(discount_type2);
			updated_rule.setQuantity_condition(discount_per_cloth);
			updated_rule.setPackageNo(discount_id);
			
			DiscountService discountSvc = new DiscountService();
			updated_rule = discountSvc.updateDiscount(discount_per_cloth, discount_type1, discount_type2, discount_name, discount_id);
			
			if(updated_rule != null ) update_count = 1;
			
			ajax_out.println(update_count);	
			ajax_out.close();
		}
		
		//Create new discount condition
		if("insert".equals(act)){
			Integer insert_count = 0;
			
			Integer discount_per_cloth = Integer.parseInt(req.getParameter("dis_amount"));
			Double discount_type1 = Double.parseDouble(req.getParameter("dis_type1"));
			Double discount_type2 = Double.parseDouble(req.getParameter("dis_type2"));
			String discount_name = req.getParameter("dis_name");
			
			DiscountVO  new_discount_rule = new DiscountVO();
			new_discount_rule.setQuantity_condition(discount_per_cloth);
			new_discount_rule.setDiscount1(discount_type1);
			new_discount_rule.setDiscount2(discount_type2);
			new_discount_rule.setDescript(discount_name);
			
			
			DiscountService discountSvc = new DiscountService();
			new_discount_rule = discountSvc.addDiscount(discount_per_cloth, discount_type1, discount_type2, discount_name);
			
			if(new_discount_rule != null ) insert_count = 1;
			
			ajax_out.println(insert_count);	
			ajax_out.close();	
		}
		
		//Delete discount condition
		if("delete".equals(act)){
			
			Integer packageId = Integer.parseInt(req.getParameter("delete_id"));
			DiscountService discountSvc = new DiscountService();
			Integer delete_count = discountSvc.deleteDiscount(packageId);
		
			
			ajax_out.println(delete_count);	
			ajax_out.close();
		}
	}
}
