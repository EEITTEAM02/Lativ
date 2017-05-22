<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
#navbar{ 
 	width:780px; 
 	margin-top:50px;
 	margin-bottom:10px; 
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
	font-family:Microsoft Jhenghei;
}

.productPrice {
	width: 100%;
	text-align: center;
	font-family:Microsoft Jhenghei;
}

#pageDiv {
	width: 100%;
	text-align: center;
}

.autocomplete-suggestions { 
	border: 1px solid #999; background: #FFF; overflow: auto; 
	cursor:pointer;
}

.autocomplete-suggestion { 
	padding: 2px 5px; white-space: nowrap; overflow: hidden; 
}

.autocomplete-selected { 
	background: #F0F0F0; 
}

.autocomplete-suggestions strong { 
	font-weight: normal; color: #3399FF; 
}

.autocomplete-group { 
	padding: 2px 5px; 
}

.autocomplete-group strong { 
	display: block; border-bottom: 1px solid #000; 
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
						<input type="text" name="searcher" id="searcher" class="form-control"
							placeholder="Search">
					</div>
				</div>
			</div>
		</nav>
	</div>
	<script>
	var searcher = $('#searcher');
	var productions = new Array();

	$.getJSON("AutocompleteSearch.do",{"autoKeyword":""},function(data){
			$.each(data,function(i,productName){
				var ob = new Object();
				ob.value = productName;
				productions.push(ob);
			})	
		})

	
	searcher.autocomplete({
	    lookup: productions
	});
	
	</script>
</body>
</html>