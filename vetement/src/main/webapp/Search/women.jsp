<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${sessionScope.login_customer_info.getCustomerId() == '5'}">
	<c:redirect url = "../mangerPage.jsp"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>女仕時裝</title>
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.fancybox.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.0.min.js"
	charset="utf-8"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/js/jquerysession.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mycart.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/js/clean-blog.min.js"></script>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
<style>
.vertical-menu {
	width: 250px;
	/*     margin-left:250px; */
	margin-top: 150px;
	/*     display:inline-block; */
	font-family:Microsoft Jhenghei;
}

.vertical-menu a {
	background-color: #eee;
	color: black;
	display: block;
	padding: 12px;
	text-decoration: none;
}

.vertical-menu a:hover {
	background-color: #ccc;
	cursor: pointer;
	text-decoration: none;
}

.vertical-menu a.active {
	background-color: #888888;
	color: white;
}


.vertical-menu a.discountHead {
    background-color:#C10066;
    color:white;
}

img {
	width: 100%;
}

.colorImg {
	margin: 5px;
}


.dialogRegister-form input {
	width: 35px;
}

.dialogLogin-form input {
	width: 35px;
}

label, input {
	display: block;
}

input.text {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 25px;
	display: inline-block;
}

/* h1 { */
/* 	font-size: 1.2em; */
/* 	margin: .6em 0; */
/* } */
.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}

img.displayImg {
	/* 	display:block; */
	height: 100%;
	width: 100%;
}
</style>
</head>
<body>
	<c:set var="context" value="${pageContext.request.contextPath}" />
	
	<!-- Navigation -->
	<nav id='header' class="navbar navbar-default navbar-custom navbar-fixed-top"></nav>

	<header class="intro-header">
	<div class="container" style="margin-bottom: 100px"></div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="vertical-menu">
					<div name="discountDiv" class="side">
						<a class="discountHead">折扣商品</a> 
						<a name=discount1 href="discountDivison1.jsp">襪子與配件買3件NT480</a> 
						<a name=discount2 href="discountDivison2.jsp">男性上衣襯衫一件7折起</a> 
						<a name=discount3 href="discountDivison3.jsp">媽媽節特價女性商品買兩件打8折</a> 
					</div>
					<div class="side">
						<a name="middle" class="active">上身類</a> <a name="bottom">短袖印花T恤</a>
						<a name="bottom">POLO衫</a> <a name="bottom">家居服</a>
					</div>
					<div class="side">
						<a name="middle" class="active">襯衫類</a> <a name="bottom">休閒襯衫</a>
						<a name="bottom">商務襯衫</a> <a name="bottom">法蘭絨襯衫</a>
					</div>
					<div class="side">
						<a name="middle" class="active">針織衫</a> <a name="bottom">美麗諾羊毛</a>
					</div>
					<div class="side">
						<a name="middle" class="active">外套類</a> <a name="bottom">休閒外套</a>
						<a name="bottom">風衣</a> <a name="bottom">羽絨系列</a>
					</div>
					<div class="side">
						<a name="middle" class="active">褲裝裙裝</a> <a name="bottom">牛仔褲</a>
						<a name="bottom">束口褲</a> <a name="bottom">裙裝洋裝</a>
					</div>
					<div class="side">
						<a name="middle" class="active">內著類</a> <a name="bottom">清涼系列</a>
						<a name="bottom">襪子</a>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div id="outter">
					<jsp:include page="/util/navbar.jsp"></jsp:include>
					<img src="${pageContext.request.contextPath}/img/women2.jpg" />
					<div id="display"></div>
					<div id="imgDiv" style="text-align: center;">
						<img id="img1" src="../img/ajax-loader.gif" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${context}/jsUtil/includeHeader.js"></script> 					
	<script>
	var ctx = "<%=request.getContextPath()%>";
	$(function() {
			$('#logout').click(function() {
				$.get(ctx+"/Logout.do", function(data) {
					location.reload();
				});
			})
			
			var val_top = "女";
			getClassTopData(val_top);
			
			$('input[name="searcher"]').keydown(function() {
				search(event)
			})
			
			$('.autocomplete-suggestions').click(function(){
				SearchKeyword = $('.autocomplete-selected').text()
 				location.href="Search.do?SearchKeyword="+SearchKeyword;
			});
			
			$('a[name="bottom"]').click(function(){
				var val_bottom = $(this).text();
 				var val_middle = $(this).parent().children('a[name="middle"]').text();
 				getBottomData(val_top,val_middle,val_bottom);
			})
			
			function search(event) {
				var keyWord = $('input[name="searcher"]').val();
				if (event.which == 13) {
					//將關鍵字傳給Search.do，
					SearchKeyword = $('input[name="searcher"]').val();
 					location.href="Search.do?SearchKeyword="+SearchKeyword;
				}
			}

			function getClassTopData(value) {
				$.getJSON("CategorySearch.do", {
					"classTop" : value,
				}, function(data) {
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i, product) {
						content(product,docFragment);
					})
					$("#display").append(docFragment);
				})
			}
			
			function getBottomData(val_top,val_middle,val_bottom){
				$.getJSON("CategorySearch.do",{
					"classTop":val_top,"classMiddle":val_middle,"classBottom":val_bottom
				},function(data){
					$("#display").empty();
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i,product){
						content(product,docFragment);
					})
					$("#display").append(docFragment);
				})
			}
			
			function content(product,docFragment){
				var productLi = $("<li></li>");

				var elementA = $('<a></a>');
				elementA.attr("href", '${context}/productPages.jsp?Pid='+product.productId);//連接柏瑜的網址

				var img = $("<img/>");
				img.attr("alt", product.productName);
				img.attr("title", product.productName);
				img.attr("src", "Image.do?productId="
						+ product.productId);
				img.addClass("productImage");
				elementA.append(img);

				var name = $("<p></p>");
				name.text(product.productName);
				name.addClass("productName");

				var price = $("<p></p>");
				price.text("NT$ " + product.price);
				price.addClass("productPrice");

				productLi.append(elementA);
				productLi.append(name);
				productLi.append(price);

				docFragment.append(productLi);
			}

			$('#img1').hide();
			// 			$(document).ajaxStart(function(){
			// 				$('#img1').show(500);
			// 			}).ajaxStop(function(){
			// 				$('#img1').hide(500);
			// 			})
			
		})
	</script>
</body>
</html>