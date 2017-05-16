<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.0.min.js"></script>
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
	font-family:標楷體;
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

#favorite{
	font-family:標楷體;
	width:1000px;
	margin:auto;
}
</style>


</head>
<body>	
	<div id="favorite">
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
		</div>
	</div>

<script type="text/javascript">
	$(function() {
		var cid = ${sessionScope.login_customer_info.customerId}
 	    $.getJSON('FavoriteCheck',{action:"getAll",'customerId':cid},function(datas){
 		    console.log(datas.size);
		    var tb = $('#favoriteTable>tbody');
		    var docFrag = $(document.createDocumentFragment());
		    var productAmount = datas.length;
		    var pageAmount = ((datas.length)/10);
		    tb.empty();
		   	   
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
	 		$.get('FavoriteCheck',{action:"delete",'customerId':cid,'productId':pid},function(data){
	 			console.log(data);
	 		})
	 	})	 
	})
</script>
</body>
</html>