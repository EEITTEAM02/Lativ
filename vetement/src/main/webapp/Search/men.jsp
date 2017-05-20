<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
 <!-- Theme CSS -->
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
<style>
.vertical-menu {
    width: 250px;
/*     margin-left:250px; */
    margin-top:150px;
/*     display:inline-block; */
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
    cursor:pointer;
    text-decoration:none;
}

.vertical-menu a.active {
    background-color: #888888;
    color:white;
}

.vertical-menu a.discountHead {
    background-color:#C10066;
    color:white;
}

img{
	width:100%;
}
</style>
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />

 <!-- Navigation -->
    <nav id='header' class="navbar navbar-default navbar-custom navbar-fixed-top" >
<!--         <div class="container-fluid" "> -->
<!--             Brand and toggle get grouped for better mobile display -->
<!--             <div class="navbar-header page-scroll"> -->
<!--                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> -->
<!--                     <span class="sr-only">Toggle navigation</span> -->
<!--                     Menu <i class="fa fa-bars"></i> -->
<!--                 </button> -->
<%--                 <a class="navbar-brand" href="${context}/indexTemplate.jsp">首頁</a> --%>
<%--                 <a class="navbar-brand" href="${context}/Search/search.jsp">產品</a> --%>
<%--                 <a class="navbar-brand" href="${context}/memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a> --%>
<%--                                 <a class="navbar-brand" href="${context}/aboutUs.jsp">關於我們</a> --%>
<!--             </div> -->

<!--             Collect the nav links, forms, and other content for toggling -->
<!--             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" > -->
<!--                 <ul class="nav navbar-nav navbar-right"> -->
<!--                     <li > -->
<%--                         <a class="glyphicon glyphicon-user">${sName}<c:if --%>
<%-- 								test="${user != 'authenticated'}">訪客</c:if></a> --%>
<!--                     </li> -->
<!--                     <li id="login-user" > -->
<!--                         <a href="#">登入</a> -->
<!--                     </li> -->
<!--                     <li id="register-user" > -->
<!--                        <a href="#">註冊</a> -->
<!--                     </li> -->
<!--                     <li  id="logout" > -->
<!--                         <a href="#">登出</a> -->
<!--                     </li>             -->
<!--                 </ul> -->
<!--             </div> -->
<!--             /.navbar-collapse -->
<!--         </div> -->
        <!-- /.container -->
    </nav>
    
    	<header class="intro-header"
		>
		<div class="container" style="margin-bottom: 100px"></div>
	</header>
	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
		<div class="vertical-menu">
			<div name="discountDiv" class="side">
				<a class="discountHead">折扣商品</a> 
				<a name=discount1 href="discountDivison1.jsp">折扣1</a> 
				<a name=discount2 href="discountDivison2.jsp">折扣2</a> 
				<a name=discount3 href="discountDivison3.jsp">媽媽節特價．兩件8折</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">上身類</a> 
				<a name="bottom">短袖背心</a> 
				<a name="bottom">POLO衫</a> 
				<a name="bottom">家居服</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">襯衫類</a> 
				<a name="bottom">休閒襯衫</a> 
				<a name="bottom">商務襯衫</a> 
				<a name="bottom">法蘭絨襯衫</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">針織衫</a> 
				<a name="bottom">針織衫毛衣</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">外套類</a> 
				<a name="bottom">休閒外套</a> 
				<a name="bottom">風衣</a> 
				<a name="bottom">西裝外套</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">褲裝</a> 
				<a name="bottom">牛仔褲</a> 
				<a name="bottom">束口褲</a> 
				<a name="bottom">長褲</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">內著類</a> 
				<a name="bottom">襪子</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">家居服配件</a> 
				<a name="bottom">家居服</a> 
			</div>
		</div>
	</div>
	<div class="col-md-9">
	<div id="outter">
		<jsp:include page="/util/navbar.jsp"></jsp:include>
		<img src="${pageContext.request.contextPath}/img/men2.jpg"/>
		<div id="display"></div>
		<div id="imgDiv" style="text-align: center;">
			<img id="img1" src="../img/ajax-loader.gif" />
		</div>
	</div>
	</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	  <!-- jQuery -->
    <script src="${context}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${context}/vendor/bootstrap/js/bootstrap.min.js"></script>

<!--     Theme JavaScript -->
    <script src="${context}/js/clean-blog.min.js"></script>
    
    <script src="${context}/js/jquerysession.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="${context}/jsUtil/includeHeader.js"></script>
	<script>
		$(function() {
			var val_top = "男";
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