<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:if test="${sessionScope.login_customer_info == null}">
	<c:redirect url = "index.jsp"/>
</c:if>
<c:if test="${sessionScope.login_customer_info.getCustomerId() != '5'}">
	<c:redirect url = "index.jsp"/>
</c:if>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>  -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
<style>
#pan{
	width:1400px;
	margin:auto;
}
.pan2_item {
	display: none;
}
#pan1{
	text-align: center;	
}
#pan2{
	width:1000px;
	margin:auto;
}

body{
	background-image:url('images/background_closet35.jpg');
	background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
    
}
.abc{ 

	background-image:url('images/wood2.jpg'); 

	    border-radius: 20px; 
}
.edf{
	border: 2px solid #337ab7;

}
</style>


</head>
<body>

	<nav id='header' class="navbar navbar-inverse navbar-custom navbar-fixed-top" >
		<jsp:include page="header_manager.jsp"></jsp:include> 	
	 </nav>
	 
	 <header class="intro-header">
		<div class="container" style="margin-bottom: 100px"></div>
	</header>
	
	<div id="pan">
		<div id="pan1">
			<div >
				<jsp:include page="mangerSelect.jsp"></jsp:include>
			</div>
		</div>
		
		<div id="pan2">
			<div class="pan2_item abc edf" id="pan2_item_1" style="display:block">
  				<jsp:include page="uploadProduct2.jsp"></jsp:include>  
			</div>
			<div class="pan2_item abc" id="pan2_item_2">
				<jsp:include page="/admin/DiscountRule.jsp"></jsp:include>
			</div>
			<div class="pan2_item abc" id="pan2_item_3">
				<jsp:include page="/news/back_page.jsp"></jsp:include>
			</div>
			<div class="pan2_item abc" id="pan2_item_4">
				<jsp:include page="/customer_service/back_letter.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	<script>
		$(function(){
			if ((window.location.pathname.substring(9) === '/UploadServlet2')||(window.location.pathname.substring(9) === '/ProductModify2.do')){
				$('#select_item_1').click();
			}
			
		
			$('.select_item_btn').removeClass('active');
			$('#select_item_1').addClass('active');
			
			if (${ bbb == "del4" }){
				$('.pan2_item').hide();
				$("#pan2_item_4").show();
				$('.select_item_btn').removeClass('active');
				$('#select_item_4').addClass('active');
			};
			
			if (${ bbb == "del5" }){
				$('.pan2_item').hide();
				$("#pan2_item_3").show();
				$('.select_item_btn').removeClass('active');
				$('#select_item_3').addClass('active');
			};
			
			if (${ bbb == "disc_upd" }){
				$('.pan2_item').hide();
				$("#pan2_item_2").show();
				$('.select_item_btn').removeClass('active');
				$('#select_item_2').addClass('active');
			};
			
			if (${ bbb == "disc_del" }){
				$('.pan2_item').hide();
				$("#pan2_item_2").show();
				$('.select_item_btn').removeClass('active');
				$('#select_item_2').addClass('active');
			};
			
			if (${ bbb == "disc_ins" }){
				$('.pan2_item').hide();
				$("#pan2_item_2").show();
				$('.select_item_btn').removeClass('active');
				$('#select_item_2').addClass('active');
			};
			
		})
		
		$('.select_item_btn').click(function(){
			$('.pan2_item').hide();
			var select_item_id = this.id;
			//console.log(select_item_id);
			var select_item_number = select_item_id.split("_")[2];
			var mapping_pan2_id = "#pan2_item_" + select_item_number;
			$(mapping_pan2_id).show();
			
			$('.select_item_btn').removeClass('active');
			$(this).addClass('active');
		});
	
	</script>
</body>
</html>