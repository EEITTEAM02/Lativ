package mailserivce;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import com.cust.model.CustomerService;
//import com.login_Model.loginService;
//import com.member.Model.MemberListVO;
//import com.member.Model.MemberService;
//import com.shop.Model.ShopService;
//import com.shop.Model.ShopVO;

/**
 * Servlet implementation class ModifyPass
 */
//@WebServlet("/ModifyPass")
//public class ModifyPass extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		String account = request.getParameter("account");
//		String pass = request.getParameter("pass");
//		String pass2 = request.getParameter("pass2");
//		Map<String, String> error=new HashMap<>();
//		request.setAttribute("error", error);
//		if(pass.length()==0||pass2.length()==0){
//			 error.put("error","密碼格式錯誤");
//			 RequestDispatcher re=request.getRequestDispatcher("modifyPass.jsp");
//			 re.forward(request, response);
//			 return;
//		}
//		if(!pass.equals(pass2)){
//			 error.put("error","密碼不相等");
//			 RequestDispatcher re=request.getRequestDispatcher("modifyPass.jsp");
//			 re.forward(request, response);
//			 return;
//		}
//		try {
//			CustomerService login = new CustomerService();
//			MemberListVO vo=login.getMemberList().get(account.toLowerCase());
//            ShopVO sb= login.getShopList().get(account.toLowerCase());
//			if (vo!=null) {
//				MemberService mbs = new MemberService();
//				 mbs.update(vo.getMemId(), vo.getMemAccount(), pass, vo.getMemName(), vo.getSex(),
//						vo.getBirthday(), vo.getEmail(), vo.getMlineId(), vo.getMemTel(), vo.getMemAddr(),
//						vo.getMemberImage(), vo.getFileName(),vo.getStatus());
//				 RequestDispatcher re=request.getRequestDispatcher("index.jsp");
//				 re.forward(request, response);
//				 return;
//			}else if (sb!=null) {
//				ShopService shop = new ShopService();
//				 shop.update(sb.getShopId(),sb.getShopAccount(), pass, sb.getShopName(), sb.getShopIdd(),sb.getShopTel(),sb.getShopEmail(),sb.getSlineId(),sb.getStatus(),sb.getShopImage(),sb.getFileName());
//				 RequestDispatcher re=request.getRequestDispatcher("index.jsp");
//				 re.forward(request, response);
//				 return;
//			} 
//		} catch (Exception e) {
//			e.getMessage();
//		}
//
//	}
//
//}
