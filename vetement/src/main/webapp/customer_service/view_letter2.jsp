<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>    
<%@ page import="com.customer_service.model.*"%> 
<%@ page import="com.cust.model.*"%>       
<% 
// 	List<Customer_ServiceVO> list = (List<Customer_ServiceVO>)session.getAttribute("customer_service_list");
// 	System.out.println(list.size());
%>
 <% 
 	Customer_ServiceService customer_serviceSvc = new Customer_ServiceService();
	 HttpSession ses = request.getSession();
	 CustomerVO coVO = (CustomerVO)ses.getAttribute("login_customer_info");
// 	 System.out.println("ID=" + coVO.getCustomerId());
     List<Customer_ServiceVO> list = customer_serviceSvc.getOneCustomerId(coVO.getCustomerId());
     pageContext.setAttribute("list",list);
 %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站內信</title>

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
	.tb1{
	padding-bottom: 10px;
	}
	
</style>
<!-- <script src="../js/jquery-1.12.3.min.js"></script> -->
<!-- 最新編譯和最佳化的 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"> -->
<!-- 選擇性佈景主題 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"> -->
<!-- 最新編譯和最佳化的 JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script> -->

<script>

</script>

</head>
<body>
<div style="font-family:Microsoft Jhenghei">
	<h2 style="font-family:Microsoft Jhenghei;text-align: center;color:#9F4D95;font-size: 40px; font-weight: bold">聯絡客服</h2>
	
	<div style="padding-left:20px;padding-bottom: 20px"><a id="tr181" href="#tr191" class="btn btn-primary">聯絡我們</a></div>
	<div id="tr191" style="display:none;">
		<form>
		<table>
			<tr>
				<td style='text-align:center ; width:80px'>日&nbsp;&nbsp;&nbsp;&nbsp;期:</td>
				<td id="ta1"></td>
			</tr>
			<tr>
				<td style='text-align:center ; width:80px'>標&nbsp;&nbsp;&nbsp;&nbsp;題:</td>
				<td id="ta2"><input type="text" name="title_service" size="80"  placeholder='標題'></td>
			</tr>
			<tr>
				<td style='text-align:center ; width:80px'></td>
				<td id="ta4"></td>
			</tr>
			<tr>
				<td style='text-align:center ; width:80px'>問題內容:</td>
				<td id="ta3"><textarea rows='10' cols='80'  name='content_service' placeholder='內文'></textarea></td>
			</tr>
			<tr>
				<td style='text-align:center ; width:80px'></td>
				<td id="ta5"></td>
			</tr>
			<tr>
				<td colspan='2' style='text-align:center;padding:20px'>
					<input type='button' value='送出內容' id= 'go1'><input type='hidden' name='customerId' value='${sessionScope.login_customer_info.getCustomerId()}'>&nbsp;&nbsp;&nbsp;
					<input type='button' value='刪除內容' id= 'd1'>
				</td>
			</tr>
		</table>
		</form>
	</div>


			<table  rules="none" class="tb1" >
				<tr>
					<th width='200' class="td22">時間</th>
					<th width='300' class="td22">標題</th>
					<th width='300' class="td22">回覆情況</th>
					<th width='100' class="td22">刪除</th>
				<tr>
			
				<c:forEach var="customer_serviceVO" items="${list}" >
				<tr style="border-top:1px solid silver;">
					<td width='200' class="td11">${customer_serviceVO.receive_date}</td>
					<td width='300' class="td11">${customer_serviceVO.title_service}</td>
	<form class="form-horizontal"  method="post" action="customer_service.do">
					<td width='300' class="td11">
						<c:choose>
					
							<c:when test="${customer_serviceVO.reply_service.length() == '0'}">
								<button type="button" class="btn btn-info" disabled="disabled">待回覆</button>
							</c:when>
							<c:otherwise>
								<a href="#" class="btn btn-warning" data-toggle="modal" data-target="#myModal${customer_serviceVO.no_service}">已回覆</a>
							</c:otherwise>
						
						</c:choose>
			
						<div class="modal fade" id="myModal${customer_serviceVO.no_service}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">
						        <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						        </button>
						        <h4 class="modal-title" id="myModalLabel" style='font-family:Microsoft Jhenghei;text-align:center; font-weight: bold;font-size: 30px; '>${customer_serviceVO.title_service}</h4>
						      </div>
						      <div style='font-family:Microsoft Jhenghei;text-align:left; padding:15px;'>問題 :</div>
						      <pre style='font-family:Microsoft Jhenghei;text-align:left; padding:15px;font-size: 18px'>${customer_serviceVO.content_service}</pre>
						      <hr>
						      <div style='text-align:left; padding:15px;'>回覆 :</div>
						      <div style='text-align:left; padding:15px;'>${customer_serviceVO.reply_service}</div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
						      </div>
						    </div>
						  </div>
						</div>	
					</td>
					</form>
					<form method="post" action="customer_service.do">
						<td width='100' class="td11">
							<button class="btn btn-danger btn-sm" value="刪除">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							
				  			<input type="hidden" name="no_service" value="${customer_serviceVO.no_service}"></input>
				    		<input type="hidden" name="action"value="del1"></input>
				    		</button>
				    		
						</td>
					</form>
					
				</tr>

				</c:forEach>
			</table>



	<script>

	$(function () {
		
		


		now = new Date();
		var year = now.getFullYear();
		var mon = (now.getMonth()+1< 10 ? '0' : '')+(now.getMonth()+1);
		var day = (now.getDate()< 10 ? '0' : '')+now.getDate();
		var inp = $('<input/>');
		
		inp.attr({type:'text',name:'receive_date',size:'80',readonly:"readonly",value:year+'-'+mon+'-'+day});
		
		var ta1 =$('#ta1')
		ta1.append(inp);
		
	})
	
		$("#tr181").click(function(){	
			var this1= $(this).attr("href");	
			var tr11=('#tr191');
			
			if($('#tr191').is(":hidden")){
				$('#tr191').slideDown();
			}else{
				$('#tr191').slideUp();
			}			
			return false;			
		});		
	
			$('#go1').click(function() {
				var val1 = $('input[name="receive_date"]').val();
				var val2 = $('input[name="title_service"]').val().trim();
				var val3 = $('textarea[name="content_service"]').val().trim();
				var val4 = ${sessionScope.login_customer_info.getCustomerId()};
				console.log(val1)
				console.log(val1.length);
				console.log(val2.length);
				console.log(val3.length);
				console.log(val4);
				var ta4 = $('#ta4');
				var ta5 = $('#ta5');
				
					if(( val2.length==0&& val3.length==0)){
						ta4.empty();
						ta5.empty();
						ta4.append($("<tr></tr>").attr({class:'co1'}).text('標題不可以空白'));
						ta5.append($("<tr></tr>").attr({class:'co1'}).text('內容不可以空白'));
					}else if(val2.length==0){
						ta4.empty();
						ta5.empty();
						ta4.append($("<tr></tr>").attr({class:'co1'}).text('標題不可以空白'));
					}else if(val3.length==0){
						ta4.empty();
						ta5.empty();
						ta5.append($("<tr></tr>").attr({class:'co1'}).text('內容不可以空白'));
					}else{
						$.post('customer_service.do',{action:"ins",'receive_date':val1,'title_service':val2,'content_service':val3,'customerId':val4},function(data){
						
						$('#tr191').slideUp();
						var ta2 = $('#ta2');
						var ta3 = $('#ta3');
			
						ta2.empty();
						ta3.empty();
			
						ta2.html("<input type='text'  name='title_service' size='80' placeholder='標題'>");
						ta3.html("<textarea rows='10' cols='80'  name='content_service' placeholder='內文'></textarea>");
						window.location.href="memberPage.jsp";
						});
					};
				})
			
		
			$('#d1').click(function() {
				var ta2 = $('#ta2');
				var ta3 = $('#ta3');
	
				ta2.empty();
				ta3.empty();
	
				ta2.html("<input type='text'  name='title_service' size='80' placeholder='標題'>");
				ta3.html("<textarea rows='10' cols='80'  name='content_service' placeholder='內文'></textarea>");	
			});



	</script>
	
</div>		
</body>
</html>