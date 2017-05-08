<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
#outter {
	width: 1000px;
	margin: auto;
}

#display {
	width: 1000px;
	height: 800px;
	margin: auto;
}

#display li {
	width: 300px;
	height: 400px;
	float: none;
	display: inline-block;
	margin-left: 28px;
	margin-buttom: 30px;
	vertical-align: top;
	text-align: center; /*將li的內容置中*/
}

.productImage {
	width: 250px;
	margin: auto;
}

.productName {
	width: 100%;
	text-align: center;
}

.productPrice {
	width: 100%;
	text-align: center;
}

#pageDiv {
	width: 100%;
	text-align: center;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">WebSiteName</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li class="classTop"><a href="#">WOMEN</a></li>
			<li class="classTop"><a href="#">MEN</a></li>
			<li class="classTop"><a href="#">KIDS</a></li>
		</ul>
		<div class="navbar-form navbar-left">
			<div class="form-group">
				<input type="text" name="searcher" class="form-control" placeholder="Search">
			</div>
		</div>
	</div>
	</nav>
	<div id="outter">
		<div id="display"></div>
		<div id="imgDiv" style="text-align:center;"><img id="img1" src="../img/ajax-loader.gif"/></div>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	<script>
		$(function() {
			getData("");//一開始即列出所有商品
			
			$('input[name="searcher"]').keydown(function(){search(event)})
			
			$('.classTop').click(function() {
				var value = $(this).text();
				
				if(value=="WOMEN"){
					value="女";
				}else if(value=="MEN"){
					value="男";
				}else if(value=="KIDS"){
					value="兒童";
				}
				$('#display').empty();
				getClassTopData(value);
			})
			
			function search(event){
				var keyWord = $('input[name="searcher"]').val();
				if(event.which==13){
					$("#display").empty();
					//列出搜尋的相關商品
					getData(keyWord); 
				}
			}
			
			function getData(keyWord,pageNumber){
				$.getJSON("Search.do",{"keyWord":keyWord},function(data){
					var docFragment = $(document.createDocumentFragment());
					$.each(data,function(i,product){
						var productLi = $("<li></li>"); 
						
						var elementA = $('<a></a>');
						elementA.attr("href",product.productId+".jsp");//連接柏瑜的網址
						
						var img = $("<img/>");
						img.attr("alt",product.productName);
						img.attr("title",product.productName);
						img.attr("src","Image.do?productId="+product.productId);
						img.addClass("productImage");
						elementA.append(img);
						
						var name = $("<p></p>");
						name.text(product.productName);
						name.addClass("productName");
						
						var price = $("<p></p>");
						price.text("NT$ "+product.price);
						price.addClass("productPrice");
						
						productLi.append(elementA);
						productLi.append(name);
						productLi.append(price);
						
						docFragment.append(productLi);
					})
					$("#display").append(docFragment);
					
				})
			}
			
			function getClassTopData(value) {
				$.getJSON("CategorySearch.do", {
					"classTop" : value,}, function(data) {
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i, product) {
						var productLi = $("<li></li>");

						var elementA = $('<a></a>');
						elementA.attr("href",product.productId+".jsp");//連接柏瑜的網址

						var img = $("<img/>");
						img.attr("alt", product.productName);
						img.attr("title", product.productName);
						img.attr("src", "Image.do?productId="+ product.productId);
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
					})
					$("#display").append(docFragment);
				})
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