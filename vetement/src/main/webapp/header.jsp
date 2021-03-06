<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
<%-- <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script> --%>
<style>
	.glyphicon:before {
		font-family: Glyphicons Halflings
	}
	.header_font{
	  font-family: Microsoft Jhenghei;
	  font-size: 18px;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			<span class="sr-only">Toggle navigation</span>
				Menu <i class="fa fa-bars"></i>
		    </button>
		    <a class="navbar-brand header_font" href="${pageContext.request.contextPath}/index.jsp">首頁</a>
		    <a class="navbar-brand header_font" href="${pageContext.request.contextPath}/Search/search.jsp">購物</a>
		    <c:if test="${sessionScope.login_customer_info != null}">
		    	<a class="navbar-brand header_font" href="${pageContext.request.contextPath}/memberPage.jsp">會員專區</a>
	        </c:if>
<%-- 	         <c:if test="${sessionScope.login_customer_info != null}"> --%>
<%-- 		    	<a class="navbar-brand" href="${pageContext.request.contextPath}/ProductBack/Checkout.do">結帳</a> --%>
<%-- 	        </c:if> --%>
	        <a class="navbar-brand header_font" href="${pageContext.request.contextPath}/aboutUs.jsp">關於我們</a>
	        
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
			<ul class="nav navbar-nav navbar-right">						
				<!--登入成功，顯示人員icon與會員的名字-->
				<c:choose>
					<c:when test="${sessionScope.login_customer_info != null}">
						<li>
							<a class="navbar-brand" href="${pageContext.request.contextPath}/ProductBack/Checkout.do">結帳</a>
						</li>
						<li>
	            			<a class="glyphicon glyphicon-user">
								${sessionScope.login_customer_info.getName()}
	 						</a>	
	 					</li>
						
						<li>
							<a href="#" id='logout'style='font-size:18px'>登出</a>	
	   					</li>						   								   								   	
					</c:when>
					<c:otherwise>
						<li id="login_user" style='font-size:18px'>
						    <a href="#">登入</a>
						</li>
						<li id="register_user" style='font-size:18px'>
						   <a href="#">註冊</a>
						</li>							   	
					</c:otherwise>
				</c:choose>  			          
			</ul>
		</div>       
	</div>
	<div id="login_dialog" style="display:none"></div>
</body>
<script>
	$(function(){
		$("#login_dialog").load("${pageContext.request.contextPath}/customer/login.jsp");
		
		$("#login_user").on("click", function() {
			$('#login_dialog').show();
		});
		
 		$('#logout').click(function(){
 			$.ajax({
 				url: '${pageContext.request.contextPath}/CustomerLoginServlet?action=logout',
 				type: 'POST',
 				success: function() {
 					swal({title: "您已登出",type: "success"},function(){
 						//location.href="${pageContext.request.contextPath}/indexTemplate.jsp";
 						location.reload();
 					});
 				}
 			})
 		});			

		$("#register_user").on("click", function() {
			location.href="${pageContext.request.contextPath}/customer/Register.jsp";
		}); 		
 		
	});

	$(document).click(function(event) {
		if(
			event.target.id != 'login_user' && 
			event.target.id != 'login_dialog_content' && 			
			$('#login_user').find(event.target).length == false &&
			$('#login_dialog_content').find(event.target).length == false
		) {
		  	$("#login_dialog").hide();
		}
	});
</script>
</html>