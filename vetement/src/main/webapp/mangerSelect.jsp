<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 最新編譯和最佳化的 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<!-- 選擇性佈景主題 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<!-- 最新編譯和最佳化的 JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<style>
#selectpage{
	width:800px;
	margin:auto;
}
#selectpage li{
 	width: 150px;
 	font-weight:bold;
}
</style>
</head>
<body>
	<div >
		<nav id="selectpage">
			<ul class="nav nav-pills">
		  		<li role="presentation" id="id1"><a href="#">page1</a></li>
		  		<li role="presentation" id="id2"><a href="#">page2</a></li>
		 		<li role="presentation" id="id3"><a href="#">page3</a></li>
		 		<li role="presentation" id="id4"><a href="#">page4</a></li>
		 		<li role="presentation" id="id5"><a href="showFavorite.jsp">我的收藏</a></li>
			</ul>
		</nav>
	</div>

</body>
</html>