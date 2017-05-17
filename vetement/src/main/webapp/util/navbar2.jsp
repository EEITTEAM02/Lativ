<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../css/bootstrap.min.css"> -->
<style>
#navbar{ 
 	width:780px; 
 	margin-top:50px;
 	margin-bottom:10px; 
 	margin:auto;
}

#outter {
/*  	width: 1000px;  */
}

#display {
/*  	width: 1000px;  */
	height: 800px;
	margin: auto;
	margin-top:50px;
}

#display li {
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

#pageDiv {
	width: 100%;
	text-align: center;
}
</style>
</head>
<body>
	<div id="navbar">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li class="classTop"><a href="${pageContext.request.contextPath}/Search/women.jsp">WOMEN</a></li>
					<li class="classTop"><a href="${pageContext.request.contextPath}/Search/men.jsp">MEN</a></li>
					<li class="classTop"><a href="${pageContext.request.contextPath}/Search/kids.jsp">KIDS</a></li>
				</ul>
				<div class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" name="searcher" class="form-control"
							placeholder="Search">
					</div>
				</div>
				
			</div>
		</nav>
	</div>
</body>
</html>