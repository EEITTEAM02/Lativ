<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>    
<%@ page import="com.customer_service.model.*"%>     
 <% 
 	Customer_ServiceService customer_serviceSvc = new Customer_ServiceService();
     List<Customer_ServiceVO> list = customer_serviceSvc.getAll();
     pageContext.setAttribute("list1",list);
 %> 
 
 <jsp:useBean id="custSvc" scope="page" class="com.cust.model.CustomerService" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站內信管理</title>
<style>
	
	.co1{
		color:red;
	}
	.td11{
		 padding: 20px;
		 font-size: 18px;
		 text-align: center;
	}
	.td22{
		    font-weight: bold;
            text-align: center;
            font-size: 24px;
            padding: 3px;
            border:none;
	}
	
	.outer_container123 {
		width: 1000px;
	    margin: 0 auto;
	    border: 2px solid #337ab7;
	    border-radius: 20px;
	    padding-top: 1%;
	    padding-bottom: 5%;
/* 	    padding-left:5%; */
	    font-family: Microsoft Jhenghei;
    	font-size: 16px;
    	text-align:center;
/*     	background-color:oldlace */
	}
	
</style>
<!-- <script src="../js/jquery-1.12.3.min.js"></script> -->
<!--最新編譯和最佳化的 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"> -->
<!-- 選擇性佈景主題 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"> -->
<!-- 最新編譯和最佳化的 JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script> -->
</head>
<body>
<div  class="outer_container123">
	<h2 style="font-family:Microsoft Jhenghei;text-align: center;color:#9F4D95;font-size: 40px; font-weight: bold">客服管理</h2>
	<div style="padding-left:5%;">
			<table  rules="none" class="tb1" style="font-family:Microsoft Jhenghei;">
				<tr>
					<th width='150' class="td22">時間</th>
					<th width='150' class="td22">人名</th>
					<th width='400' class="td22">標題</th>
					<th width='150' class="td22">回覆情況</th>
					<th width='50' class="td22">刪除</th>
				<tr>
				 
				<c:forEach var="customer_serviceVO" items="${list1}">
				<tr style="border-top:1px solid silver;">
					<td width='150' class="td11">${customer_serviceVO.receive_date}</td>
					<td width='150' class="td11">
						<c:forEach var="custVO" items="${custSvc.all}">
                             <c:if test="${customer_serviceVO.customerId==custVO.customerId}">
	                                     ${custVO.name}
                             </c:if>
                   	   </c:forEach>
					
					
					</td>
					<td width='400' class="td11">${customer_serviceVO.title_service}</td>
				<form method="post" action="customer_service.do">
						<td width='150' class="td11">
							<c:choose>
								<c:when test="${customer_serviceVO.reply_service.length() == '0'}">
									<button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal${customer_serviceVO.no_service}">需回覆</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal${customer_serviceVO.no_service}">已回覆</button>
								</c:otherwise>
							</c:choose>	
							<div class="modal fade" id="myModal${customer_serviceVO.no_service}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal">
							       		<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							        </button>
							        <div class="modal-title" style='text-align:center; font-weight: bold;font-size: 30px; '>
							      		${customer_serviceVO.title_service}</div>
							     	</div>
								    <div  style='text-align:left; padding:15px;'>
								       	問  題 : ${customer_serviceVO.content_service}
								    </div>
								    <hr>
								    <div  style='text-align:left; padding:15px;'>
								       	回  覆 : <input type='text' id='reply_service' name='reply_service' size='50' placeholder='回覆內容' value='${customer_serviceVO.reply_service}'>
								    </div>
								    <hr>
								    <div  style='text-align:left; padding:15px;'>
								        	日  期 : ${customer_serviceVO.receive_date}
								    </div>
								    <div class="modal-footer">
								        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
								        <input type="submit" class="btn btn-primary" value="儲存">
								        <input type="hidden" name="no_service" value="${customer_serviceVO.no_service}">
									    <input type="hidden" name="title_service" value="${customer_serviceVO.title_service}">
								        <input type="hidden" name="content_service" value="${customer_serviceVO.content_service}">
								        <input type="hidden" name="receive_date" value="${customer_serviceVO.receive_date}">
								        <input type="hidden" name="customerId" value="${customer_serviceVO.customerId}">
									    <input type="hidden" name="action"	value="upd">
							      	</div>
							    </div>
							  </div>
							</div>	
						</td>
					</form>
<!-- 					<form method="post" action="customer_service.do"> -->
						<td width='50' class="td11">
							<button class="btn btn-danger btn-lg" id="d2" value="${customer_serviceVO.no_service}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
				  			<input type="hidden" name="no_service" value="${customer_serviceVO.no_service}">
				    		<input type="hidden" name="action"value="del">
				    		</button>
				    		
						</td>
<!-- 					</form> -->
					</tr>
				</c:forEach>
			</table>
		</div>
</div>

<script>

	$('#d2').click(function() {
		
		var deleteno = $(this).val();
		console.log(deleteno);
		
		swal({
			  title: "確定要刪除嗎?",
			  text: "按下確定就無法回復了喔!!!",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "btn-danger",
			  confirmButtonText: "確定",
			  cancelButtonText: "取消",
			  closeOnConfirm: false,
	
			},
			function(isConfirm){
			  	if(isConfirm == true){
				$.ajax({
					'type':'GET',
					'url':'customer_service.do',
					'dataType':'xml',
					'data':{action:"del",'no_service':deleteno},
					'complete':
						swal({title:"刪除成功"},function(){
	    					window.location.reload();
	    					}) 
				});
			
			  	}else{
			  		
				swal("刪除", "刪除成功", "success");
			  	}			  
				
	
			});
	
	
	});


</script>

</body>
</html>