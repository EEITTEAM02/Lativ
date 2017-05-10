<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
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

img{
	width:100%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
		<div class="vertical-menu">
			<div class="side">
				<a name="middle" class="active">上身類</a> 
				<a name="bottom">POLO衫</a> 
				<a name="bottom">家居服</a> 
				<a name="bottom">長袖</a> 
				<a name="bottom">短袖</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">襯衫類</a> 
				<a name="bottom">休閒襯衫</a> 
				<a name="bottom">法蘭絨襯衫</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">外套類</a> 
				<a name="bottom">休閒外套</a> 
				<a name="bottom">風衣</a> 
				<a name="bottom">保暖FLEECE系列</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">褲裝裙裝</a> 
				<a name="bottom">短褲七分褲</a> 
				<a name="bottom">束口褲</a> 
				<a name="bottom">洋裝</a> 
			</div>
			<div class="side">
				<a name="middle" class="active">內著類</a> 
				<a name="bottom">HEATUP_保暖衣</a> 
				<a name="bottom">襪子</a> 
				<a name="bottom">內搭褲</a> 
			</div>
		</div>
	</div>
	<div class="col-md-9">
	<div id="outter">
		<jsp:include page="/util/navbar.jsp"></jsp:include>
		<img src="${pageContext.request.contextPath}/img/kids.jpg"/>
		<div id="display"></div>
		<div id="imgDiv" style="text-align: center;">
			<img id="img1" src="../img/ajax-loader.gif" />
		</div>
	</div>
	</div>
		</div>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	<script>
		$(function() {
			var val_top = "兒童";
			getClassTopData(val_top);

			$('input[name="searcher"]').keydown(function() {
				search(event)
			})
			
			$('a[name="bottom"]').click(function(){
				var val_bottom = $(this).text();
 				var val_middle = $(this).parent().children('a[name="middle"]').text();
 				getBottomData(val_top,val_middle,val_bottom);
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
						content(product,docFragment);
					})
					$("#display").append(docFragment);

				})
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
				elementA.attr("href", '/vetement/productPages/'+product.productId + ".jsp");//連接柏瑜的網址

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