<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>    
<%@ page import="com.news.model.*"%>    
<%
    NewsService newsSvc = new NewsService();
    List<NewsVO> list = newsSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>關於我們</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<link href="css/clean-blog.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/storelocator.min.css" />
<!-- Custom CSS -->
<link href="css/scrolling-nav.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 	<script src="js/bootstrap.min.js"></script>
 	<script src="js/jquery.mycart.js"></script>
 	<script src="js/clean-blog.min.js"></script>
 	<!-- Scrolling Nav JavaScript -->
 	<script src="js/jquery.easing.min.js"></script>
 	<script src="js/scrolling-nav.js"></script>
  <script src="https://maps.google.com/maps/api/js?key=AIzaSyBwqCl08DgbvCyYJHrcS_IT3W6HscUnDvM&region=TW"></script>
   <script src="js/handlebars.min.js"></script>
    <script src="js/jquery.storelocator.min.js"></script>
     
<style>
#map {
	height: 100%;
}

.intro-section {
	min-height: 100%;
    max-height: auto;
    padding-top: 150px;
    text-align: center;
    background: #fff;
}

.about-section {
    height: 100%;
    padding-top: 150px;
    text-align: center;
    background: #eee;
}

.news-section {
  	height:auto;
    padding-top: 150px;
    text-align: center;
    background: #fff;
}

.services-section {
    height: 100%;
    padding-top: 150px;
    text-align: center;
    background: #eee;
}

.contact-section {
    height: 100%;
    padding-top: 150px;
    text-align: center;
    background: #fff;
}

.tb111111{
	font-family:標楷體;
	padding:5px;
}

.td111111{
	font-family:標楷體;
    color: orange;
    font-weight: bold;
    font-size: 20px;
    text-align: center;
    padding:5px;
}

.td222222{
	font-family:標楷體;
	color: orange;
    font-weight: bold; 
	font-size: 20px;
    padding:5px;
}

.td333333{
	font-family:標楷體;
	font-size: 16px;
    padding:5px;
}	
</style>
</head>

<!-- The #page-top ID is part of the scrolling feature - the data-spy and data-target are part of the built-in Bootstrap scrollspy function -->

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<c:set var="context" value="${pageContext.request.contextPath}" />
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="container-fluid">
				
				<jsp:include page="header.jsp"></jsp:include>
			
			</div>
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a class="page-scroll" href="#page-top"></a>
					</li>
					<li><a class="page-scroll" href="#about">緣起</a></li>
					<li><a class="page-scroll" href="#news">最新公告</a></li>
					<li><a class="page-scroll" href="#services">免責聲明</a></li>
					<li><a class="page-scroll" href="#contact">門市資訊</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<!-- About Section -->
	<section id="about" class="about-section">
		<div class="container">
			<div class="row">
					<h1 style="font-family: 標楷體 ;color:#008800;font-weight: bold;">緣&nbsp;&nbsp;起</h1>
				<div class="col-lg-4">
					<img src="images/about_01.png" height="400" width="400">
				</div>
				<div class="col-lg-8">
					  <h4 style="font-family: 標楷體; text-align: left;font-size:24px">「菲特萌」是一個可以提供您輕鬆且高品質的購衣平台</h4>      
					  <h4 style="font-family: 標楷體; text-align: left;font-size:24px">在這裡您可以快速查詢心中所要的商品</h4>     
					  <h4 style="font-family: 標楷體; text-align: left;font-size:24px">也可以使用收藏功能，在下次瀏覽網頁時方便找到追蹤的商品。</h4>     
					  <br> 
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">我們提供最優惠的折扣</h4>
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">也可以參考評價來選擇最適合自己的商品。</h4>
				      <br>
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">當商品售出後，我們有完整的售後服務</h4>
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">可以透過訂單記錄查詢您的歷史清單與記錄</h4>
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">假如有任何問題也可以透過客服系統與我們連絡。</h4>
				      <br> 
				      <h4 style="font-family: 標楷體; text-align: left;font-size:24px">「菲特萌」期望成為您網路購衣的唯一選擇</h4>

				</div>
			</div>
		</div>
	</section>

	<!--News Section -->
	<section id="news" class="news-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="font-family: 標楷體;color:#DAA520;font-weight: bold;">最新公告</h1>
					<form>
						<c:forEach var="newsVO" items="${list}" >
							<table  rules="none" class="tb111111" width='600' align="center">
								<tr>
									<td width='100' class="td111111">${newsVO.pubdate}</td><td width='400' class="td222222">【${newsVO.title}】</td>
								</tr>
								
								<br>
								<tr>
									<td></td><td><pre width='400' class="td333333">${newsVO.content}</pre></td>
								</tr>
								
								
							</table>
							<hr width="600" align="center">
						</c:forEach>
					</form>
				</div>
			</div>
		</div>
	</section>
	
		<!-- Services Section -->
	<section id="services" class="services-section">
		<div class="container">
			<div class="row">
			<div class="col-lg-2"></div>
				<div class="col-lg-8">
					<h1 style="font-family: 標楷體;color:#483D8B;font-weight: bold;">免責聲明</h1>
					<h3 style="font-family: 標楷體; text-align: left;">當您在閱讀(本網站)時，代表你已詳細閱讀及明確了解本『免責聲明』:</h3>
					<h3 style="font-family: 標楷體; text-align: left;">一、(本網站)所載之任何資料(包含文字，圖片)或數據僅用於</h3>
					<h3 style="font-family: 標楷體; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;EEIT93專題，對於本部落格內容所載資訊內容之正確性、</h3>
					<h3 style="font-family: 標楷體; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;即時性、可靠性、完整性不含以任何商業性、營利性使用或</h3>
					<h3 style="font-family: 標楷體; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;特定目的之保證。</h3>
					<h3 style="font-family: 標楷體; text-align: left;">二、免責聲明更新在給予或不給予事先通知下，本網站保留隨時</h3>
					<h3 style="font-family: 標楷體; text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;更新本免責聲明的權利，任何更改於本網站發佈時，立即生效。</h3>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="font-family: 標楷體;color:#483D8B">門市資訊</h1>
					<div class="bh-sl-container">

						<div class="bh-sl-form-container">
							<form id="bh-sl-user-location" method="post" >
								<div class="form-input" style="font-family: 標楷體; text-align:senter">
									<label for="bh-sl-address">請輸入地址:</label> <input type="text"
										id="bh-sl-address" name="bh-sl-address" />
								</div>

								<button id="bh-sl-submit" type="submit">送出</button>
							</form>
						</div>

						<div id="bh-sl-map-container" class="bh-sl-map-container">
							<div id="bh-sl-map" class="bh-sl-map"></div>
							<div class="bh-sl-loc-list">
								<ul class="list"></ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>

<script>

$(function() {
 		$('#bh-sl-map-container').storeLocator();
 		
 	})

</script>
</html>
