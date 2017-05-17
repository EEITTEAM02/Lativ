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
#OrderItemTable th{
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
			<h1 id="h">訂單明細</h1>
			<br>
<!-- 		<div id="display"> -->
<!-- 			<table id="OrderItemTable" class="table1"> -->
<!-- 				<thead> -->
<!-- 					<tr> -->
<!-- 						<td> |  訂單編號  |  </td> -->
<!-- 						<td>訂購日期  |  </td> -->
<!-- 						<td>地址  |  </td> -->
<!-- 						<td>總價  |  </td>						 -->
<!-- 					</tr> -->
<!-- 				</thead> -->
<!-- 				<tbody> -->
<!-- 				</tbody> -->
<!-- 			</table>		 -->
<!-- 		<div id="pageDiv"> -->
<!-- 		</div> -->
<!-- 	</div> -->



		
		
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
<!-- 		<nav></nav> -->
	</div>

<script type="text/javascript">
	$(function() {
 			 $('selectpage li').removeClass('active');
 			 $('#id1').addClass('active');

 			
		
 	    $.getJSON('OrderItemCheck',{action:"getAll",'customerId':1},function(datas){
 		   console.log(datas.size);
		   var tb = $('#OrderItemTable>tbody');
		   var docFrag = $(document.createDocumentFragment());
		   var productAmount = datas.length;
		   var pageAmount = ((datas.length)/10);
		   tb.empty();
		   
    var dialog;
	dialogOrderDetail = $("#dialogOrderDetail-form").dialog({
							autoOpen : false,
							//height: 450,
							width : 600,
							modal : true,
							resizable : false,
							close : function() {
							}
						});
		
		//$('#display').empty();
		
		
		var table = $('<table></table>').attr('id','orderHistoryTable').addClass('table table-bordered table-hover');
		var thead = $('<thead></thead>');
		var tr = $('<tr></tr>');
		var th1 =$('<th></th>').text('訂單編號');
		var th2 =$('<th></th>').text('訂購日期');
		var th3 =$('<th></th>').text('地址');
		var th4 =$('<th></th>').text('總價');
		var tbody = $('<tbody></tbody>');
		tr.append([th1,th2,th3,th4]);
		thead.append(tr);
		table.append(thead);
		table.append(tbody);
		$('#display').append(table);
 			loadOrderHistory();
		});
 	    
 	   $('#id1').click(loadOrderHistory);
 	   function loadOrderHistory(){			
			 $.ajax({
				    type: "get", 
				    url: "OrderHistoryServlet.do",
				    datatype: "json",
				    success: function (datas) {
				    	
				    	var tb = $('#orderHistoryTable>tbody');
						   var docFrag = $(document.createDocumentFragment());
						   tb.empty();
				        $.each(JSON.parse(datas),function(idx,order){
				        	   var idd = idx+1;
				        
							   var cell1 = $('<td></td>').text(order.ono);
							   var cell2 = $('<td></td>').text(order.orderDate);
							   var cell3 = $('<td></td>').text(order.deliveryAddr);
							   var cell4 = $('<td></td>').text(order.orderSum);
							   var row = $('<tr></tr>').attr('id',idd);
							   row.append([cell1,cell2,cell3,cell4]);
							  
							   
							   

								row.on("click", function() {

									dialogOrderDetail.dialog("open");
									$.ajax({
									    type: "get", 
									    url: "OrderItemHistoryServlet.do",
									    datatype: "json",
									    data:{'ono':order.ono},
									    success: function (data) {
		                                    
									    	var tb1 = $('#orderDetailTable>tbody');
											   var docFrag1 = $(document.createDocumentFragment());
											   tb1.empty();
									        $.each(JSON.parse(data),function(idx,orderItem){
									        
									               var cell1 = $('<td></td>').text(orderItem.oino);
												   var cell2 = $('<td></td>').text(orderItem.pname);
												   var cell3 = $('<td></td>').text(orderItem.size);
												   var cell4 = $('<td></td>').text(orderItem.color);
												   var cell5 = $('<td></td>').text(orderItem.quantity);
												   var cell6 = $('<td></td>').text(orderItem.unitPriceO);
												   var cell7 = $('<td></td>').text(orderItem.unitPriceD);
												   var cell8 = $('<td></td>').text(orderItem.totalPrice);
												   var cell9 = $('<a></a>').attr('href','/WebsiteV1.3/productPages/'+orderItem.pnoWithPage+'.jsp');
												   
												   var img = $('<img></img>').attr("src","productImages/"+orderItem.pno).addClass('displayImg');
												   cell9.append(img);
												   var cell10 = $('<td></td>').text(orderItem.score);
												   var row1 = $('<tr></tr>');
												   row1.append([cell1,cell2,cell3,cell4,,cell5,cell6,cell7,cell8,cell9,cell10]);
												   docFrag1.append(row1);
									        })
									        
									        tb1.append(docFrag1);
									    
									    },
									    
									    error: function (request, status, error) {
									        alert(request.responseText);
									    }
									    
									
									})
								});
							   
							   
							   
								 docFrag.append(row);  
							   
							   
							
						   });
				        tb.append(docFrag);
				    },
				   //add this error handler you'll get alert
				    error: function (request, status, error) {
				        alert(request.responseText);
				    }
				});	   
		   }
		
	
</script>
</body>
</html>