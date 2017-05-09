<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	<script>
		$(function() {
			getClassTopData("女");
			
			$('input[name="searcher"]').keydown(function() {
				search(event)
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
						var productLi = $("<li></li>");

						var elementA = $('<a></a>');
						elementA.attr("href", product.productId + ".jsp");//連接柏瑜的網址

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
						var productLi = $("<li></li>");

						var elementA = $('<a></a>');
						elementA.attr("href", product.productId + ".jsp");//連接柏瑜的網址

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