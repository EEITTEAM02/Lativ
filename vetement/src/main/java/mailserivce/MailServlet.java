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

import com.customer.model.CustomerVO;
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
		String text = request.getParameter("text");
		String mail = request.getParameter("mail");
		try {
			Customer_ServiceVO login = new Customer_ServiceVO();	
			
			CustomerVO vo = login.getCustomerId().get(mail.toLowerCase());
			MailService pass = new MailService();
			String mail = "";
			if(vo!=null){
				mail = vo.getMail();
			}
			if ("stopPower".equals(action)) {
				pass.sendMail(mail, "停權通知", text);
				return;
			}
			else if ("restorePower".equals(action)) {
				pass.sendMail(mail, "恢復帳號權限", text);
				return;
			}

			else if ("forgetPassword".equals(action)&& vo!=null) {
				
				pass.sendMail(mail, "忘記密碼通知" , vo.getName() + "你好:<br><a  href=' http://"+request.getServerName() + ":"+ request.getServerPort() + request.getContextPath()
						+ "/modifyPass.jsp?mail=" + vo.getMail() + "'>重設密碼</a>");
				RequestDispatcher re = request.getRequestDispatcher("index.jsp");
				re.forward(request, response);
				return;
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
