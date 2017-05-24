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

<style type="text/css">

#submit{
border:0px solid #7eb9d0; -webkit-border-radius: 12px; -moz-border-radius: 12px;border-radius: 12px;font-size:20px;font-family:標楷體; padding: 5px 10px 5px 10px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #a7cfdf; background-image: -webkit-gradient(linear, left top, left bottom, from(#a7cfdf), to(#23538a));
 background-image: -webkit-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -moz-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -ms-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -o-linear-gradient(top, #a7cfdf, #23538a);
 background-image: linear-gradient(to bottom, #a7cfdf, #23538a);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#a7cfdf, endColorstr=#23538a);
}

#submit:hover{
 border:0px solid #5ca6c4;
 background-color: #82bbd1; background-image: -webkit-gradient(linear, left top, left bottom, from(#82bbd1), to(#FF7398));
 background-image: -webkit-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -moz-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -ms-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -o-linear-gradient(top, #82bbd1, #FF7398);
 background-image: linear-gradient(to bottom, #82bbd1, #FF7398);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#82bbd1, endColorstr=#FF7398);
}
#cancel{
border:0px solid #7eb9d0; -webkit-border-radius: 12px; -moz-border-radius: 12px;border-radius: 12px;font-size:20px;font-family:標楷體; padding: 5px 10px 5px 10px; text-decoration:none; display:inline-block;text-shadow: -1px -1px 0 rgba(0,0,0,0.3);font-weight:bold; color: #FFFFFF;
 background-color: #a7cfdf; background-image: -webkit-gradient(linear, left top, left bottom, from(#a7cfdf), to(#23538a));
 background-image: -webkit-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -moz-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -ms-linear-gradient(top, #a7cfdf, #23538a);
 background-image: -o-linear-gradient(top, #a7cfdf, #23538a);
 background-image: linear-gradient(to bottom, #a7cfdf, #23538a);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#a7cfdf, endColorstr=#23538a);
}

#cancel:hover{
 border:0px solid #5ca6c4;
 background-color: #82bbd1; background-image: -webkit-gradient(linear, left top, left bottom, from(#82bbd1), to(#FF7398));
 background-image: -webkit-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -moz-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -ms-linear-gradient(top, #82bbd1, #FF7398);
 background-image: -o-linear-gradient(top, #82bbd1, #FF7398);
 background-image: linear-gradient(to bottom, #82bbd1, #FF7398);filter:progid:DXImageTransform.Microsoft.gradient(GradientType=0,startColorstr=#82bbd1, endColorstr=#FF7398);
}
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
	<div style="margin-top:150px">
	<form  align="center" action="MailServlet" method="post" >
		
		<h2 style="font-weight:bold;">請輸入您的帳號:</h2><br>
		<input type="text" name="Account"><br><font style="color:red">${errorMsg.errormail}</font><br><br>
        <input type="submit" name="submit" id="submit" onclick="disp_alert()" value="送出">        
	    <input type="hidden" name="action" value="forgetPassword" >
        <input type="reset" name="cancel" id="cancel" value="重填">
        
	</form>

				
	</div>
		
<script type="text/javascript">
	function disp_alert()
	{
	alert("請到您的信箱收取驗證郵件！")
	}
	</script>


</body>
</html>