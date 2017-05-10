<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<div>
					<jsp:include page="/util/navbar.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div>
				<div id="display"></div>
			</div>
		</div>
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
</body>
</html>