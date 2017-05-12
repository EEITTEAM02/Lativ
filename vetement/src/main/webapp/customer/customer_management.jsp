<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<c:choose>
			<c:when test="${sessionScope.login_customer_info != null}">
				<h1>${sessionScope.login_customer_info.getName()}，歡迎登入</h1>
				<a href='${pageContext.request.contextPath}/CustomerServlet?action=getOne'>會員資料修改</a><br>
				<a href='${pageContext.request.contextPath}/customer/editPswd.jsp'>修改密碼</a>
				<input id='logout' type='button' value='登出'>
			</c:when>	
			<c:otherwise>
			   <h1>目前無人登入</h1>
			   <a href="login.jsp">前往登入頁</a>
			</c:otherwise>
		</c:choose>
	</div>
	

</body>

<script>
	$('#logout').click(function(){
		$.ajax({
			url: '${pageContext.request.contextPath}/CustomerLoginServlet?action=logout',
			type: 'POST',
			dataType: "json",
			data: {
				account: $("#account").val(),
				password: $("#pswd").val()
			},
			success: function(){
				alert("您已登出");
				location.href = '${pageContext.request.contextPath}/customer/customer_management.jsp';	
			}
		})
	})
</script>
</html>