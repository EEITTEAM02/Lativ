<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <style>
		.error_msg {
			color:red;
		}
		
		.error{
			color: red;
		    text-align: center;
		}		
/* 		.dialogRegister-form input { */
/* 			width: 35px;  */
/* 		}  */
		
/* 		.dialogLogin-form input {  */
/* 			width: 35px; */
/* 		} */
		
/* 		label, input {  */
/* 			display: block;  */
/* 		}  */
		
/* 		input.text {  */
/* 			margin-bottom: 12px;  */
/* 			width: 95%;  */
/* 		 	padding: .4em;  */
/* 		} */
		
/* 		fieldset {  */
/* 			padding: 0;  */
/* 		 	border: 0;  */
/* 		 	margin-top: 25px;  */
/* 		 	display: inline-block;  */
/* 		}  */	
	</style>
</head>
<body>
	<div class="container-fluid" ">
	    <!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
		    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        Menu <i class="fa fa-bars"></i>
		    </button>
		    <a class="navbar-brand" href="${pageContext.request.contextPath}/indexTemplate.jsp">首頁</a>
		    <a class="navbar-brand" href="${pageContext.request.contextPath}/Search/search.jsp">產品</a>
		    <a class="navbar-brand" href="${pageContext.request.contextPath}/memberLounge.jsp"><c:if test="${sessionScope.login_customer_info != null}">會員專區</c:if></a>
	        <a class="navbar-brand" href="${pageContext.request.contextPath}/aboutUs.jsp">關於我們</a>
		</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" >
				<ul class="nav navbar-nav navbar-right">						
				<c:choose>
					<c:when test="${sessionScope.login_customer_info != null}">
						<li>
             				<a class="glyphicon glyphicon-user">
								${sessionScope.login_customer_info.getName()}
  							</a>	
  						</li>
						<li>
                			<a href='${pageContext.request.contextPath}/CustomerServlet?action=getOne'>
  								會員資料修改
  							</a>	
  						</li>
						<li>
                			<a href='${pageContext.request.contextPath}/customer/editPswd.jsp'>
	   							修改密碼
	   						</a>	
	   					</li>
						<li>
                  			<a href="#" id='logout'>登出</a>	
	   					</li>						   								   								   	
					</c:when>
					<c:otherwise>
						<li>
                  			<a class="glyphicon glyphicon-user">
	   							訪客
	   						</a>	
	   					</li>
						<li id="login-user" >
						    <a href="#">登入</a>
						</li>
						<li id="register-user" >
						   <a href="#">註冊</a>
						</li>							   	
					</c:otherwise>
			</c:choose>  			          
           </ul>
       </div>       
	</div>
	
	<div id="login_dialog" style="display:none"></div>	
	<!-- /.container -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>

<!--     Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/js/clean-blog.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/js/jquerysession.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
		$(function(){
			$("#login_dialog").load("${pageContext.request.contextPath}/customer/login.jsp");
			
			$("#login-user").on("click", function() {
				$('#login_dialog').show();
			});
			
	  		$('#logout').click(function(){
	  			$.ajax({
	  				url: '${pageContext.request.contextPath}/CustomerLoginServlet?action=logout',
	  				type: 'POST',
	  				success: function() {
	  					alert("您已登出");
	  					location.reload();	
	  				}
	  			})
	  		});			
		});  		
	</script>

</body>
</html>