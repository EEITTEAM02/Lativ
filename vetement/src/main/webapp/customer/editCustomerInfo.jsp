<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.cust.model.*"%>

<jsp:useBean id="login_customer_info" scope="session" type="com.cust.model.CustomerVO" />
<!-- id="list" 指的是CustomerServlet中: session.setAttribute("list", one_customer);   -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>#update_submit{padding-left: 5px;}</style>
</head>
<body>
	<div>
<%-- 		<%=list.getName()%> --%>
		<form method="Post" Action="${pageContext.request.contextPath}/CustomerServlet?action=updateOne">
		<!--上面是更新資料後要submit到哪裡 -->
			會員資料修改<br><br>
<%-- 					<input type="hidden" name="customerId" value=<%=list.getCustomerId()%>>					 --%>
			姓名:    <input type="text" name="customerName" value=<%=login_customer_info.getName()%>> <br><br>
			性別:    <input type="radio" name="gender" value=1>男 
				    <input type="radio" name="gender" value=0>女 <br><br>
			電子郵件: <input type="text" name="mail" value=<%=login_customer_info.getMail()%>> <br><br>
<!-- 			修改密碼:	<input type="text" name="pswd_orig" value=""> <br><br> -->
<!-- 			密碼確認: <input type="text" name="pswd_new" value="" onblur=pswd_check()> -->
<!-- 					<span id="pswd_err_msg"></span> -->
<!-- 					<br><br> -->
			地址:	<input type="text" name="add" value=<%=login_customer_info.getAddr_customer()%> size=40> <br><br>
			電話:	<input type="text" name="tel" value=<%=login_customer_info.getTel()%>> <br><br>
					<input id="update_submit" type="submit" name="submit_btn" value="確認修改">
		</form>
	</div>

</body>

<script>
	//去掃gender(byName)，i=0,1，當i的值等於session中的getGender()的值[這邊有把boolean轉成string]，就點選它(checked)
	var genders = document.getElementsByName("gender");
// 	console.log(genders);
	for(var i=0;i<genders.length;i++){
		if(genders[i].value == <%=String.valueOf(login_customer_info.getGender())%>){
			genders[i].setAttribute("checked", true);
		}
	}
	
	
// 	function pswd_check(){
// 		var pswd1 = document.getElementsByName("pswd_orig");
// 		var pswd2 = document.getElementsByName("pswd_new");
// 		if (pswd1[0].value!=pswd2[0].value){
//  			document.getElementById("pswd_err_msg").innerHTML="密碼不一致";
// 		}
// 	}
	
	
</script>

</html>