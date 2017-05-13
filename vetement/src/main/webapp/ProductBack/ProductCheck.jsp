<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
.imgDiv{
	width:400px;
	margin:auto;
	margin-top:100px;
}
.outter {
	width: 1000px;
	margin: auto;
	margin-top: 50px;
	border: 1px groove LightSteelBlue;
	border-radius: 15px;
}

.box {
	width: 700px;
	margin: auto;
	margin-top: 50px;
}

tr {
	height: 50px;
}

#image{
	width:50px;
}

.discount {
	color: red;
	text-decoration: line-through
}

.price_impressive{
	font-size:20px;
	color:SlateGray ;
}

.span_info {
	padding-left: 15px;
}

.div_button {
	width: 100px;
	margin: auto;
	margin-bottom: 50px;
	display: inline-block;
}

#bottom{
	width:300px;
	margin-left:700px;
}

.recommendDiv{
	width: 1200px;
	margin: auto;
	margin-top: 100px;
	text-align:center;
}

.recommendTitle{
	height:75px;
	width:800px;
	margin:auto;
	margin-bottom:50px;
	background-color:#00BBFF; 
	padding-top:5px;
	border-radius:5px;
}

.recommendDiv li {
	width: 180px;
	height: 300px;
	float: none;
	display: inline-block;
	margin-left: 28px;
	margin-buttom: 30px;
	vertical-align: top;
	text-align: center; /*將li的內容置中*/
}

.productImage {
	width: 200px;
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
</style>
</head>
<body>
	<div class="imgDiv">
		<img width="350" src="${pageContext.request.contextPath}/img/time_line01.png"/>
	</div>
	<div class="outter">
		<form action="" method="POST">
			<div class="box">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="5"><span class="span_info">訂單明細</span></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>商品名稱</td>
							<td>單價</td>
							<td>數量</td>
							<td>小計</td>
							<td>刪除</td>
						</tr>
						<c:forEach var="item" items="${shoppingCartBack.cart}">
							<tr>
								<td style="vertical-align: middle;">
									<img id="image" src="Image.do?productName=${item.value.productionVO.productName}&size=${item.value.productionVO.size}&color=${item.value.productionVO.color}"/>
									<span name="productName">${item.value.productionVO.productName}</span>-<span name="size">${item.value.productionVO.size}</span>-<span name="color">${item.value.productionVO.color}</span>
									<c:if test="${item.value.difference>0}">
										<div><a href="${pageContext.request.contextPath}/Search/Search.do?searchPackageNo=${item.value.productionVO.packageNo}">差${item.value.difference}件即可享用折扣，請按此加購商品</a></div>
									</c:if>
								</td>
								<td style="vertical-align: middle;">
									<c:if
										test="${item.value.price_origin != item.value.price_discount}">
										<span>原價:</span>
										<fmt:parseNumber var="price_origin" type="number" value="${item.value.price_origin}" />
										<span class="discount">NT$ ${price_origin}<br/></span>
									</c:if>
									<fmt:parseNumber var="price_discount" type="number" value="${item.value.price_discount}" />
									&nbsp; <span>NT$ ${price_discount}</span>
								</td>
								<td style="vertical-align: middle;">
									<c:choose>
										<c:when test="${item.value.quantity_order <=1}">
											<button type="button" class="btn btn-default btn-number" name="minus" disabled="disabled"><span class="glyphicon glyphicon-minus"></span></button>
										</c:when>
										<c:otherwise>
											<button type="button" class="btn btn-default btn-number" name="minus"><span class="glyphicon glyphicon-minus"></span></button>
										</c:otherwise>
									</c:choose>
									<input type="text" name="count" value="${item.value.quantity_order}" style="text-align:center;" size="2" />
									<button type="button" class="btn btn-default btn-number" name="plus"><span class="glyphicon glyphicon-plus"></span></button>
									<input type="hidden" name="productId" value="${item.value.productionVO.productId}"/>
								</td>
								<td style="vertical-align: middle;">
									<c:if test="${item.value.price_origin != item.value.price_discount}">
										<span>原價:</span>
										<fmt:parseNumber var="price_item_origin" type="number" value="${item.value.price_origin*item.value.quantity_order}" />
										<span class="discount">NT$ ${price_item_origin}<br/></span>
									</c:if> 
									<fmt:parseNumber var="price_item_discount" type="number" value="${item.value.price_item}"/>
									&nbsp; <span>NT$ ${price_item_discount}</span>
								</td>
								<td style="vertical-align: middle;"><a href="Update.do?cmd=del&productId=${item.value.productionVO.productId}"><img src="../img/trash.ico"/></a></td>
							</tr>
						</c:forEach>
						<tr style="background-color:darkslateblue;">
							<td></td><td></td>
							<td style="padding-top:15px;color:white;">共${shoppingCartBack.size}項商品</td>
							<td style="vertical-align: middle;color:white;">
								<fmt:parseNumber var="price_total" type="number" value="${shoppingCartBack.priceTotal}"/>
								商品金額:NT$ <span class="price_impressive" style="color:white;">${price_total}</span>
							</td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="bottom">
				<div class="div_button">
					<input type="button" name="productMain" class="btn btn-default btn-block" value="繼續選購" />
				</div>
				<div class="div_button">
					<input type="button" name="informationCheck" class="btn btn-default btn-block" value="結帳" />
				</div>
			</div>
		</form>
	</div>
	<div class="recommendDiv">
		<div class="recommendTitle">
			<h4 style="font-family:Microsoft JhengHei;">商品推薦</h4>
			<p>買了此商品的人，也購買以下商品</p>
		</div>
		<c:forEach var="item" items="${recommend}">
			<li>
				<a href="${pageContext.request.contextPath}/productPages/${item[0]}.jsp">
					<img class="productImage" alt="${item[1]}" title="${item[1]}" src="${pageContext.request.contextPath}/Search/Image.do?productId=${item[0]}"/>
				</a>
				<p class="productName">${item[1]}</p>
				<p class="productPrice">${item[2]}</p>
			</li>
		</c:forEach>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script>
	$(function(){
		$('input[name="count"]').keydown(function(event){
			if(event.which==13){
				var count = $(this).val();
				var productId = $(this).parent().children('input[name="productId"]').val();
  				location.href="Update.do?&cmd=update&productId="+productId+"&count="+count;
				return false;//取消form submit的功能
// 				var count = $(this).val();
// 				var productId = $(this).parent().children('input[name="productId"]').val();
//  				$.get("Update.do",{"cmd":"update","productId":productId,"count":count});
			}
		})
		
		$('input[name="productMain"]').click(function(){
			location.href="${pageContext.request.contextPath}/Search/search.jsp";
		})
		
		$('input[name="informationCheck"]').click(function(){
			if($('input[name="count"]').val()==undefined){
				swal({title: "購物車內沒有商品",type: "warning"});
			}else{
				location.href="InformationCheck.jsp";
			}
		})
		
		$('button[name="minus"]').click(function(){
			var productId = $(this).parent().children('input[name="productId"]').val();
			var button = $(this);
			var minusValue = parseInt(button.parent().children('input[name="count"]').val())-1;
			button.parent().children('input[name="count"]').val(minusValue);
			location.href="Update.do?&cmd=update&productId="+productId+"&count="+minusValue;
		})
		
		$('button[name="plus"]').click(function(){
			var productId = $(this).parent().children('input[name="productId"]').val();
			var button = $(this);
			var plusValue = parseInt(button.parent().children('input[name="count"]').val())+1;
			button.parent().children('input[name="count"]').val(plusValue);
			location.href="Update.do?&cmd=update&productId="+productId+"&count="+plusValue;
		})
	})
</script>
</body>
</html>