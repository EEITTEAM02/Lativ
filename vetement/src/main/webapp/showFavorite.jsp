<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- Theme CSS -->
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">
<script src="js/jquery-3.2.0.min.js"></script>
<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">  
<style>

#display{
	margin:auto;
	text-align: center;
}
.table1 {
	margin: auto;
	border-collapse: collapse;
	width: 80%;
	border: 1px solid #eee;
	padding: .6em 10px;
	text-align: center;
	font-size:20px;
}
#favoriteTable th{
	font-size:20px;
	text-align: center;
}

#all,th {
	border: 5px solid #220088;
	padding: .5em 10px;
	text-align: center;
}
#h{
	color:#009FCC;
	text-align:center;
}
.danger{
  font-weight:bold;
  padding: 15px 15px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;   
  text-decoration: none;
  outline: none;
  color: white;
  background-color: red;
  border: none;
  border-radius: 10px;
}
.danger:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.danger:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

#pan{
	width:1400px;
	margin:auto;
}
#pan1{
	text-align: center;	
}
#pan2{
	font-family:標楷體;
	width:1000px;
	margin:auto;
}
</style>


</head>
<body>

	<nav id='header' class="navbar navbar-default navbar-custom navbar-fixed-top" >
		<jsp:include page="header.jsp"></jsp:include> 	
	 </nav>
	 
	 <header class="intro-header">
		<div class="container" style="margin-bottom: 100px"></div>
	</header>
	
	<div id="pan">
		<div id="pan1">
			<div>
				<jsp:include page="mangerSelect.jsp"></jsp:include>
			</div>		
		</div>
		
		<div id="pan2">
			<h1 id="h">我的收藏商品</h1>
			<br>
		<div id="display">
			<table id="favoriteTable" class="table1">
				<thead>
					<tr>
						<th>productName</th>
						<th>size</th>
						<th>color</th>
						<th>price</th>
						<th>picture</th>
						<th>delete</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>		
		<div id="pageDiv">
		</div>
	</div>


		
		
		</div>
<!-- 		<div id="pan2"> -->
<!-- 		  <ul class="pagination pagination-lg"> -->
<!-- 		    <li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li> -->
<!-- 		    <li><a href="#">1</a></li> -->
<!-- 		    <li><a href="#">2</a></li> -->
<!-- 		    <li><a href="#">3</a></li> -->
<!-- 		    <li><a href="#">4</a></li> -->
<!-- 		    <li><a href="#">5</a></li> -->
<!-- 		    <li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li> -->
<!-- 		  </ul> -->
<!-- 		 </div> -->
		<nav></nav>
	</div>

<script type="text/javascript">
	$(function() {
 			 $('selectpage li').removeClass('active');
 			 $('#id5').addClass('active');

// 		var pageDiv = $("#pageDiv");//變數給值時寫在最前面，確定不會有使用此變數的方法抓不到此變數
// 		getData("",1);//一開始即列出所有商品，每頁呈現的產品數量，符合規定的每頁筆數
// 		getPage("");//列出所有商品時，所需的頁碼 
		
// 		$('input[name="searcher"]').keydown(function(){search(event)})
		
// 		function search(event){
// 			var keyWord = $('input[name="searcher"]').val();
// 			if(event.which==13){
// 				$("#display").empty();
// 				//每當搜尋時，從關鍵字相關的商品，第一頁開始列表
// 				getPage(keyWord); //隨著蒐尋商品數量改變頁碼數
// 				getData(keyWord,1); //列出第一頁的商品
// 			}
// 		}
		
// 		pageDiv.on('click','.pageNumber',function(){
// 			var keyWord = $('input[name="searcher"]').val();
// 			var pageNumber = $(this).text();
// 			$("#display").empty();
// 			getData(keyWord,pageNumber);
// 		});
		
 	    $.getJSON('FavoriteCheck',{action:"getAll",'customerId':1},function(datas){
 		   console.log(datas.size);
		   var tb = $('#favoriteTable>tbody');
		   var docFrag = $(document.createDocumentFragment());
		   var productAmount = datas.length;
		   var pageAmount = ((datas.length)/10);
		   tb.empty();
		   
// 		   if((datas.length)%10){
// 				pageAmount = pageAmount+1;
// 			}
		   
// 		   for(i=1;i<=pageAmount;i++){
// 				var pageA = $("<a></a>");
// 				pageA.text(i);
// 				pageA.attr("href","#");
// 				pageA.addClass("pageNumber");
// 				docFragment.append(pageA);
// 			}
// 			pageDiv.append(docFrag);
			
		   
		   $.each(datas,function(idx,product){
			   var img = $('<img></img>').attr({"src":"productImages/"+product.productId,"width":70,"height":70}).addClass('displayImg');

			   var cell1 = $('<td></td>').attr({"id":"all"}).text(product.productName);
			   var cell2 = $('<td></td>').attr({"id":"all"}).text(product.size);
			   var cell3 = $('<td></td>').attr({"id":"all"}).text(product.color);
			   var cell4 = $('<td></td>').attr({"id":"all"}).text(product.price);
			   var cell5 = $('<td></td>').attr({"id":"all"});
			   cell5.append(img);
	   		   cell6 = $('<td></td>').attr({"id":"all"});
	   		   cell6.append("<button type='button' data-id="+ product.productId + " class='danger'>Delete</button>");
			   var row = $('<tr></tr>').append([cell1,cell2,cell3,cell4,cell5,cell6]);
			   docFrag.append(row);
		   })


		   tb.append(docFrag);
 		})
  
 	   
 	 $('#favoriteTable').on('click','.danger',function(){
	 		var pid = $(this).attr('data-id');
	 		$(this).parents("tr").remove();
	 		$.get('FavoriteCheck',{action:"delete",'customerId':1,'productId':pid},function(data){
	 			console.log(data);
	 		})
	 })
	
	
	 
	});
</script>
</body>
</html>