<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>忘記密碼?</title>
 <!-- Theme CSS -->
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script src="js/jquery-3.2.0.min.js"></script>
<!-- Latest compiled and minified CSS -->
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"> --%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'> -->
<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>   -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
<style>
	body{
	background-image:url('images/background_closet35.jpg');
	background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
}
.login .input{
		background: #E5E7E9;
		border-radius: 5px;
		overflow: hidden;
		box-shadow: inset 0 0 3px #65686E;
		border-bottom: 1px solid #FFF;
		padding-left:5px
	}
	
	.login input{
		width: 260px;
		background: transparent;
		border: 0;
		line-height: 50px;
		box-sizing: border-box;
		color: #71747A;
		text-shadow: 0 1px 0 #FFF;
	}	
.login .blockinput{
		border-bottom: 1px solid #BDBFC2;
		padding:10px;
	}
	
	.login .blockinput:first-child{
		border-top: 0;
	}
	
	.login .blockinput:last-child{
		border-bottom: 0;
	}
	
	.login .blockinput i{
		padding-right: 10px;
		color: #B1B3B7;
		text-shadow: 0 1px 0 #FFF;
	}
</style>
</head>
<body>
<!-- 	 <nav id='header' class="navbar navbar-default navbar-custom navbar-fixed-top"> -->
<%-- 		<jsp:include page="header.jsp"></jsp:include> 	 --%>
<!-- 	 </nav> -->
	 
<!-- 	 <header class="intro-header" > -->
<!-- 		<div class="container" style="margin-bottom: 100px"></div> -->
<!-- 	</header> -->

	<form  align="center" action="MailServlet" method="post" >
		
		請輸入您的帳號:<br>
		<input type="text" name="Account"><font style="color:red">${errorMsg.errormail}</font><br>
        <input type="submit" name="submit" id="submit" value="送出">
	    <input type="hidden" name="action" value="forgetPassword" >
        <input type="reset" name="cancel" id="cancel" value="重填">
        
	</form>

				
			</div>
		</form>



</body>
</html>