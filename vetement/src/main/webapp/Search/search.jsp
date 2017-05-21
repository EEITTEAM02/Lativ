<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Theme CSS -->
<%--     <link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet"> --%>

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
<style>
#pageDiv {
	width: 100%;
	text-align: center;
}

#pageDiv a:link {
	font-size: 25px;
	font-family: sans-serif;
	text-decoration: none;
	margin-left: 10px;
}

#pageDiv a:visited {
	color: black;
}
</style>
</head>
<body>
	<c:set var="context" value="${pageContext.request.contextPath}" />
	<nav id='header'
		class="navbar navbar-default navbar-custom navbar-fixed-top"> <!-- 		<div class="container-fluid"> -->
	<!-- 			<!-- Brand and toggle get grouped for better mobile display -->
	<!-- 			<div class="navbar-header page-scroll"> --> <!-- 				<button type="button" class="navbar-toggle" data-toggle="collapse" -->
	<!-- 					data-target="#bs-example-navbar-collapse-1"> --> <!-- 					<span class="sr-only">Toggle navigation</span> Menu <i -->
	<!-- 						class="fa fa-bars"></i> --> <!-- 				</button> --> <%-- 				<a style="opacity: 1; color: black;" class="navbar-brand" href="${context}/indexTemplate.jsp">首頁</a>  --%>
	<%-- 				<a class="navbar-brand" href="${context}/Search/search.jsp"><span class="text-danger">產品</span></a> --%>
	<%--                 <a class="navbar-brand" href="${context}/memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a> --%>
	<!--                 <a class="navbar-brand" href="aboutUs.jsp">關於我們</a> -->
	<!-- 			</div> --> <!-- 			<!-- Collect the nav links, forms, and other content for toggling -->
	<!-- 			<div class="collapse navbar-collapse" --> <!-- 				id="bs-example-navbar-collapse-1"> -->
	<!-- 				<ul class="nav navbar-nav navbar-right"> --> <%-- 					<li><a class="glyphicon glyphicon-user">${sName}<c:if --%>
	<%-- 								test="${user != 'authenticated'}">訪客</c:if></a></li> --%>
	<!-- 					<li id="login-user"><a href="#">登入</a></li> --> <!-- 					<li id="register-user"><a href="#">註冊</a></li> -->
	<!-- 					<li id="logout"><a href="#">登出</a></li> --> <!-- 				</ul> -->
	<!-- 			</div> --> <!-- 			<!-- /.navbar-collapse --> <!-- 		</div> -->

	<!-- /.container --> </nav>

	<header class="intro-header">
	<div class="container" style="margin-bottom: 100px"></div>
	</header>

	<div class="container">
		<div class="row">

			<div class="col-md-12">
				<div class="col-md-12">
					<jsp:include page="/util/navbar2.jsp"></jsp:include>
				</div>
				<div class="col-md-12 ">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<a href="${pageContext.request.contextPath}/Search/discountDivison1.jsp"><img class="slide-image"
									src="${pageContext.request.contextPath}/img/discountDivImg1_2.jpg"
									style="width: 100%;"></a>
							</div>
							<div class="item">
								<a href="${pageContext.request.contextPath}/Search/discountDivison2.jsp"><img class="slide-image"
									src="${pageContext.request.contextPath}/img/discountDivImg2_2.jpg"
									style="width: 100%;"></a>
							</div>
							<div class="item">
								<a href="${pageContext.request.contextPath}/Search/discountDivison3.jsp"><img class="slide-image"
									src="${pageContext.request.contextPath}/img/discountDivImg3_2.jpg"
									style="width: 100%;"></a>
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
					<div id="display"></div>
				</div>
			</div>
		</div>
	</div>


	<div>
		<div id="display" style="margin-top: 950px;">
			<div id="pageDiv"></div>
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
			var pageDiv = $("#pageDiv");//變數給值時寫在最前面，確定不會有使用此變數的方法抓不到此變數

			//不用任何事件，一開始即能執行。
			if ("${sessionScope.SearchKeyword}" != "") {
				$('input[name="searcher"]')
						.val("${sessionScope.SearchKeyword}");
				getData("${SearchKeyword}");
			} else {
				getData("", 1);//一開始即列出所有商品，每頁呈現的產品數量，符合規定的每頁筆數
				getPage("");//列出所有商品時，所需的頁碼
			}

			$('input[name="searcher"]').keydown(function() {
				search(event);
			})

			$('.autocomplete-suggestions').click(function() {
				var keyWord = $('.autocomplete-selected').text()
				$("#display").empty();
				getPage(keyWord); //隨著蒐尋商品數量改變頁碼數
				getData(keyWord, 1); //列出第一頁的商品
			});

			pageDiv.on('click', '.pageNumber', function() {
				var keyWord = $('input[name="searcher"]').val();
				var pageNumber = $(this).text();
				$("#display").empty();
				getData(keyWord, pageNumber);
			});

			function search(event) {
				var keyWord = $('input[name="searcher"]').val();
				if (event.which == 13) {
					$("#display").empty();
					//列出搜尋的相關商品
					getPage(keyWord); //隨著蒐尋商品數量改變頁碼數
					getData(keyWord, 1); //列出第一頁的商品
				}
			}

			//隨著蒐尋到的資料筆數，設定頁碼數
			function getPage(keyWord) {
				$.getJSON("Page.do", function(data) {
					//每次都重新產生頁碼
					pageDiv.empty();
					var docFragment = $(document.createDocumentFragment());
					var productAmount = data.pageCount;
					//在SearcherDAO設定每頁3筆，query.setMaxResults(3);
					//有餘數時，頁面加1;
					var pageAmount = (productAmount / 20);
					if (productAmount % 20) {
						pageAmount = pageAmount + 1;
					}
					//製造頁碼
					for (i = 1; i <= pageAmount; i++) {
						var pageA = $("<a></a>");
						pageA.text(i);
						pageA.attr("href", "#");
						pageA.addClass("pageNumber");
						docFragment.append(pageA);
					}
					pageDiv.append(docFragment);
				})
			}

			function getData(keyWord, pageNumber) {
				$.getJSON("Search.do", {
					"keyWord" : keyWord,
					"pageNumber" : pageNumber
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
				elementA.attr("href", '${context}/productPages.jsp?Pid='
						+ product.productId);//連接柏瑜的網址

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
	<%
		session.removeAttribute("SearchKeyword");
	%>
</body>
</html>