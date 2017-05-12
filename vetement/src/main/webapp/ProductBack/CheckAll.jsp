<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

#image{
	width:50px;
}

tr {
	height: 20px;
}

.info1 {
	width: 150px;
}

.span_info {
	padding-left: 15px;
}

.price_impressive{
	font-size:20px;
	color:SlateGray ;
}

.enter {
	width: 400px;
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
</style>
</head>
<body>
	<div class="imgDiv">
		<img width="350" src="${pageContext.request.contextPath}/img/time_line03.png"/>
	</div>
	<div class="outter">
		<form action="DealDone.do" method="POST">
			<div class="box">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="4"><span class="span_info">訂單明細</span></th>
						</tr>
					</thead>
					<tbody>
							<tr>
								<td><span class="span_info">商品名稱</span></td>
								<td><span class="span_info">單價</span></td>
								<td><span class="span_info">數量</span></td>
								<td><span class="span_info">小計</span></td>
							</tr>
							<c:forEach var="item" items="${shoppingCartBack.cart}">
								<tr>
									<td style="vertical-align: middle;">
										<img id="image" src="Image.do?productName=${item.value.productionVO.productName}&size=${item.value.productionVO.size}&color=${item.value.productionVO.color}"/>
										<span class="span_info"><span name="productName">${item.value.productionVO.productName}</span>-<span name="size">${item.value.productionVO.size}</span>-<span name="color">${item.value.productionVO.color}</span></span>
									</td>
									<td style="vertical-align: middle;"> 
										<fmt:parseNumber var="price_discount" type="number" value="${item.value.price_discount}"/>
										<span class="span_info">NT$ ${price_discount}</span>
									</td>
									<td style="vertical-align: middle;">
										<span class="span_info">${item.value.quantity_order}</span>
									</td>
									<td style="vertical-align: middle;">
										<fmt:parseNumber var="price_item" type="number" value="${item.value.price_item}"/>
										<span class="span_info">NT$ ${price_item}</span>
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2" style="vertical-align:middle;text-align:center;">
									<fmt:parseNumber var="price_total" type="number" value="${shoppingCartBack.priceTotal}"/>
									<c:choose>
											<c:when test="${shoppingCartBack.priceTotal >= 1000}">
												購買商品金額滿1000元，免運費
											</c:when>
											<c:otherwise>
												再買${1000-price_total}元，滿1000元，即免運費
											</c:otherwise>
										</c:choose>
								</td>
								<td style="text-align:right;">
									<span class="span_info">
										<c:choose>
											<c:when test="${shoppingCartBack.priceTotal >= 1000}">
											商品金額<br/>
											運費
											</c:when>
											<c:otherwise>
											商品金額<br/>
											運費
											</c:otherwise>
										</c:choose>
									</span>
								</td>
								<td>
									<c:choose>
										<c:when test="${shoppingCartBack.priceTotal >= 1000}">
											<span class="span_info">NT$ ${price_total}</span><br/>
											<span class="span_info">NT$ 0</span>
										</c:when>
										<c:otherwise>
											<span class="span_info">NT$ ${price_total}</span><br/>
											<span class="span_info">NT$ 50</span>
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr style="background-color:darkslateblue;">
								<td colspan="2"></td>
								<td style="text-align:right;padding-top:12px;color:white">總計</td>
								<td>
									<span class="span_info" style="color:white">
										<c:choose>
										<c:when test="${shoppingCartBack.priceTotal >= 1000}">
											NT$ <span class="price_impressive" style="color:white;">${price_total}</span>
										</c:when>
										<c:otherwise>
											NT$ <span class="price_impressive" style="color:white;">${price_total+50}</span>
										</c:otherwise>
									</c:choose>
									</span>
								</td>
							</tr>
					</tbody>
				</table>
			</div>
			<div class="box">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2"><span class="span_info">付款方式與寄送資訊</span></th>
						</tr>
					</thead>
					<tbody>
					<tbody>
						<tr>
							<td><span class="span_info">配送方式</span></td>
							<td><span class="span_info">${dealInformation.send_way}</span></td>
						<tr>
						<tr>
							<td><span class="span_info">收件者</span></td>
							<td><span class="span_info">${dealInformation.name_send}</span></td>
						<tr>
						<tr>
							<td><span class="span_info">聯絡電話</span></td>
							<td><span class="span_info">${dealInformation.phone_send}</span></td>
						<tr>
						<tr>
							<td><span class="span_info">取貨地址</span></td>
							<td><span class="span_info">${dealInformation.addr_send}</span></td>
						<tr>
						<tr>
							<td><span class="span_info">發票類型</span></td>
							<td>
								<span class="span_info">${dealInformation.invoice}</span>
								<c:if test="${dealInformation.invoice=='捐贈發票'}">
									<span class="span_info">${dealInformation.help_selected}</span>
								</c:if>
							</td>
						<tr>
					</tbody>
				</table>
			</div>
			<br />
			<div id="bottom">
				<div class="div_button">
					<input type="button" name="informationCheck" class="btn btn-default btn-block" value="上一步" />
				</div>
				<div class="div_button">
					<input type="submit" class="btn btn-default btn-block" value="送出訂單" />
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
	<script>
		$(function(){
			$('input[name="informationCheck"]').click(function(){
				location.href="InformationCheck.jsp";
			})
		})
	</script>
</body>
</html>