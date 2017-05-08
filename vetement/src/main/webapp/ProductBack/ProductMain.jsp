<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<title>Insert title here</title>
<style>
	.outter{
		overflow:auto;
		margin:auto;
		margin-top:20px;
		width:1000px;
		border:2px solid black;
		border-radius:15px;
		background-color:white;
	}
	.img{
		margin-left:50px;
		width:600px;
		float:left;
	}
	
	.information{
		float:left;
	}
	
	.box1{
		font-family:Microsoft JhengHei;
		font-size:15px;
		width:250px;
		border-bottom:1px solid #e0e0e0;
		margin:10px;
		margin-top:35px;
		padding-bottom:10px;
	}
	
	.div_model{
		width:1000px;
		margin:auto;
		margin-top:15px;
	}
</style>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.magnifier.js"></script>
</head>
<body>
	<p style="font-size:30px;width:100px;margin:auto;"><a href="Checkout.do">結帳</a></p>
	<form action="BuyClothes.do" method="GET">
	<div class="outter">
		<div class="img">
			<img class="magnify" src="../img/01.jpg"/>
		</div>	
		<div class="information">
			<div class="box1">
				柔軟連帽外套
				<p style="font-size:35px;">NT750</p>
			</div>
			<div class="box1">
<!-- 				數量:<input type="text" name="count" id="count" size="10"/> -->
				<select name="count">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
			</div>
			<div class="box1">顏色區塊</div>
			<div class="box1">尺寸區塊</div>
			<div class="box1">
				<input type="submit" class="btn btn-default btn-block" value="購買"/>
			</div>
			<div>
				<input type="hidden" name="hid-productId" value="2">
				<input type="hidden" name="hid-productName" value="柔軟連帽外套">
				<input type="hidden" name="hid-size" value="M">
				<input type="hidden" name="hid-color" value="青">
				<input type="hidden" name="hid-price" value="750">
				<input type="hidden" name="hid-packageNo" value="1">
			</div>
		</div>
	</div>		
	</form>
<!-- 	<div class="div_model"> -->
<!-- 		<img src="../img/01_1.jpg"/> -->
<!-- 	</div> -->
<!-- 	<div class="div_model"> -->
<!-- 		<img src="../img/01_2.jpg"/> -->
<!-- 	</div> -->
	<form action="BuyClothes.do" method="GET">
	<div class="outter">
		<div class="img">
			<img class="magnify" src="../img/02.jpg"/>
		</div>	
		<div class="information">
			<div class="box1">
				輕型西裝外套
				<p style="font-size:35px;">NT1200</p>
			</div>
			<div class="box1">
<!-- 				數量:<input type="text" name="count" id="count" size="10"/> -->
				<select name="count">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
			</div>
			<div class="box1">顏色區塊</div>
			<div class="box1">尺寸區塊</div>
			<div class="box1">
				<input type="submit" class="btn btn-default btn-block" value="購買"/>
			</div>
			<div>
				<input type="hidden" name="hid-productId" value="2">
				<input type="hidden" name="hid-productName" value="輕型西裝外套">
				<input type="hidden" name="hid-size" value="M">
				<input type="hidden" name="hid-color" value="藍">
				<input type="hidden" name="hid-price" value="1200">
				<input type="hidden" name="hid-packageNo" value="1">
			</div>
		</div>
	</div>		
	</form>
	<form action="BuyClothes.do" method="GET">
	<div class="outter">
		<div class="img">
			<img class="magnify" src="../img/03.jpg"/>
		</div>	
		<div class="information">
			<div class="box1">
				Moomin修身T-F05-童
				<p style="font-size:35px;">NT350</p>
			</div>
			<div class="box1">
<!-- 				數量:<input type="text" name="count" id="count" size="10"/> -->
				<select name="count">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
			</div>
			<div class="box1">顏色區塊</div>
			<div class="box1">尺寸區塊</div>
			<div class="box1">
				<input type="submit" class="btn btn-default btn-block" value="購買"/>
			</div>
			<div>
				<input type="hidden" name="hid-productId" value="3">
				<input type="hidden" name="hid-productName" value="Moomin修身T-F05-童">
				<input type="hidden" name="hid-size" value="M">
				<input type="hidden" name="hid-color" value="白">
				<input type="hidden" name="hid-price" value="350">
				<input type="hidden" name="hid-packageNo" value="2">
			</div>
		</div>
	</div>		
	</form>
</body>
</html>