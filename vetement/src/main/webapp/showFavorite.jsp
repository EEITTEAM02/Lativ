<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的收藏</title>
<script src="js/jquery-3.2.0.min.js"></script>
<style>
#display1{
 	width:900px; 
	margin:auto;
	text-align: center;
}
.table2 {
	margin: auto;
	width: 95%;
	font-size:20px;
}

 #al{ 
 	padding:10px; 
 } 

#display_th{
	margin:auto;
	 text-align:center;
}
#h1{
/* 	font-family:標楷體; */
	font-weight:800;
	color:#009FCC;
	text-align:center;
}
.displayImg1{
	width:70px;
	height:70px;
}
.danger1{
width:70%;
hight:90%;
  font-weight:bold;
  padding: 10px;
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
.danger1:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.danger1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.favorite_style{
	font-family:Microsoft Jhenghei;
}

</style>


</head>
<body>	
<c:set var="context" value="${pageContext.request.contextPath}" />
	<div id="favorite" class='favorite_style'>
		<h1 id="h1">我的收藏商品</h1>
		<br>
		<div id="display1">
			<table id="favoriteTable" class="table2">
				<thead>
					<tr>
						<th id="display_th">商品圖片</th>
						<th id="display_th">商品名稱</th>
						<th id="display_th">尺寸</th>
						<th id="display_th">顏色</th>
						<th id="display_th">價格</th>
						<th id="display_th">刪除</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>		
		</div>
	</div>

<script type="text/javascript">
	$(function() {
		var cid = ${sessionScope.login_customer_info.customerId}
 	    $.getJSON('FavoriteCheck',{action:"getAll",'customerId':cid},function(datas){
		    var tb = $('#favoriteTable>tbody');
		    var docFrag = $(document.createDocumentFragment());
		    var productAmount = datas.length;
		    var pageAmount = ((datas.length)/10);
		    tb.empty();
		   	   
			$.each(datas,function(idx,product){
			   var img = $('<img></img>').attr({"src":"productImages/"+product.productId}).addClass('displayImg1');
			   var cell1 = $('<td></td>').attr({"id":"al"}).text(product.productName);
			   var cell2 = $('<td></td>').attr({"id":"al"}).text(product.size);
			   var cell3 = $('<td></td>').attr({"id":"al"}).text(product.color);
			   var cell4 = $('<td></td>').attr({"id":"al"}).text(product.price);
			   var cell5 = $('<td></td>').attr({"id":"al"});
			   
			   var elementA = $('<a></a>');
			   elementA.attr("href", '${context}/productPages.jsp?Pid='+product.productId);//連接柏瑜的網址
			   elementA.append(img);
			   cell5.append(elementA);
			   
	   		   cell6 = $('<td></td>').attr({"id":"al"});
	   		   cell6.append("<button type='button' data-id="+ product.productId + " class='danger1'>刪除</button>");
			   var row = $('<tr></tr>').append([cell5,cell1,cell2,cell3,cell4,cell6]);
			   docFrag.append(row);
		   })
		   tb.append(docFrag);
 		})
        
 	    
 		$('#favoriteTable').on('click','.danger1',function(){
	 		var pid = $(this).attr('data-id');
	 		$(this).parents("tr").remove();
	 		$.get('FavoriteCheck',{action:"delete",'customerId':cid,'productId':pid},function(data){
	 			console.log(data);
	 		})
	 	})	 
	})
</script>
</body>
</html>