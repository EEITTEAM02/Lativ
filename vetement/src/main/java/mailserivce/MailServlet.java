package mailserivce;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cust.model.CustomerService;
import com.cust.model.CustomerVO;
import com.customer_service.model.Customer_ServiceVO;

@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		Map<String, String> errorMsg = new HashMap<String, String>();
		request.setAttribute("errorMsg", errorMsg);
		
		
		
		String action = request.getParameter("action");
		String account = request.getParameter("Account");
		String text = request.getParameter("text");
		String mail = request.getParameter("mail");
		try {
			CustomerService login = new CustomerService();	
			List<CustomerVO> listOfCustomers = login.getAll();
			Iterator it = listOfCustomers.iterator();
			List<String> listOfEmails = new LinkedList<String>();
			CustomerVO cust =null;
			CustomerVO targetCust = null;
			Map<String,Integer> mapOfMailId = new HashMap<String,Integer>();
			while(it.hasNext()){
				cust=(CustomerVO) it.next();
				listOfEmails.add(cust.getMail());				
				mapOfMailId.put(cust.getMail(), cust.getCustomerId());
			}
			
			if (listOfEmails.contains(account)){
				mail = account;
				targetCust = login.getOneCustomer(mapOfMailId.get(mail)); 
			}
			else {
				errorMsg.put("errormail", "帳號不存在");
			}
			
			
			MailService pass = new MailService();
			
			if ("stopPower".equals(action)) {
				pass.sendMail(mail, "停權通知", text);
				return;
			}
			else if ("restorePower".equals(action)) {
				pass.sendMail(mail, "恢復帳號權限", text);
				return;
			}

			else if ("forgetPassword".equals(action)&& targetCust!=null) {
				
				pass.sendMail(mail, "忘記密碼通知" , " 您的密碼是:"+ targetCust.getPswd()+"<BR> <a  href=' http://"+request.getServerName() + ":"+ request.getServerPort() + request.getContextPath()
						+ "/index.jsp '>提醒您，請務必修改密碼。</a>");
				
			
			}
			
			if (!errorMsg.isEmpty()){
				RequestDispatcher re = request.getRequestDispatcher("forgetpass.jsp");
				re.forward(request, response);
			}
	
		 
		} catch (Exception e) {
			e.getMessage();
			System.err.println(e.getMessage());
			errorMsg.put("errormail", "帳號不存在");
			RequestDispatcher re = request.getRequestDispatcher("forgetpass.jsp");
			re.forward(request, response);
			return;
		}
	}
}
