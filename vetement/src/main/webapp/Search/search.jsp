<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>

<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a style="opacity: 1; color: black;" class="navbar-brand" href="/WebsiteV1.3/indexTemplate.jsp">首頁</a> 
				<a class="navbar-brand" href="${context}/Search/search.jsp">產品</a>
                <a class="navbar-brand" href="${context}/memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="glyphicon glyphicon-user">${sName}<c:if
								test="${user != 'authenticated'}">訪客</c:if></a></li>
					<li id="login-user"><a href="#">登入</a></li>
					<li id="register-user"><a href="#">註冊</a></li>
					<li id="logout"><a href="#">登出</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		
		<!-- /.container -->
	</nav>
	
	<header class="intro-header"
		>
		<div class="container" style="margin-bottom: 100px"></div>
	</header>
	
	<div class="container">
		<div class="row">
			
			<div class="col-md-12">
				<div class="col-md-12">
					<jsp:include page="/util/navbar2.jsp"></jsp:include>
				</div>
			    <div class="col-md-12 ">
				<div id="display" ></div>
			</div>
			</div>
		</div>
	</div>
	
		
			<div>
				<div id="display"></div>
			</div>
		
	
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	<script>
		$(function() {
			if("${sessionScope.SearchKeyword}"!=null){
				$('input[name="searcher"]').val("${sessionScope.SearchKeyword}");
				getData("${SearchKeyword}");	
			}else{
				getData("");
			}
 			

			$('input[name="searcher"]').keydown(function() {
				search(event);
			})

			function search(event) {
				var keyWord = $('input[name="searcher"]').val();
				if (event.which == 13) {
					$("#display").empty();
					//列出搜尋的相關商品
					getData(keyWord);
				}
			}

			function getData(keyWord) {
				$.getJSON("Search.do", {
					"keyWord" : keyWord
				}, function(data) {
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i, product) {
						content(product, docFragment);
					})
					$("#display").append(docFragment);

				})
			}

			function content(product, docFragment) {
				var productLi = $("<li></li>");

				var elementA = $('<a></a>');
				elementA.attr("href", product.productId + ".jsp");//連接柏瑜的網址

				var img = $("<img/>");
				img.attr("alt", product.productName);
				img.attr("title", product.productName);
				img.attr("src", "Image.do?productId=" + product.productId);
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

		})
	</script>
	<%session.removeAttribute("SearchKeyword");%>
</body>
</html>