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
	*{
		font-family:標楷體;
	}
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
<div>
<!-- 	<h2 style="font-family:標楷體;text-align: center;">聯絡客服</h2> -->
	
	<div style="padding-left:20px;padding-bottom: 20px" id='c3'><input type="button" id='c1' value='聯絡我們' class="btn btn-primary"></div>
	<div id='c2' ></div>
	<hr width="620" align="center">


	<form class="form-horizontal"  method="post" action="customer_service.do">

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
						        <h4 class="modal-title" id="myModalLabel" style='text-align:center; font-weight: bold;font-size: 30px; '>${customer_serviceVO.title_service}</h4>
						      </div>
						      <div style='text-align:left; padding:15px;font-family:標楷體;'>
						        	問題 : ${customer_serviceVO.content_service}
						      </div>
						      <hr>
						      <div style='text-align:left; padding:15px;font-family:標楷體;'>
						        	回覆 : ${customer_serviceVO.reply_service}
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
						      </div>
						    </div>
						  </div>
						</div>	
					</td>
					
						<td width='100' class="td11">
							<button class="btn btn-danger btn-sm" value="刪除"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></input>
				  			<input type="hidden" name="no_service" value="${customer_serviceVO.no_service}"></input>
				    		<input type="hidden" name="action"value="del1"></input>
				    		</button>
				    		
						</td>
					
					
				</tr>

				</c:forEach>
			</table>

	</form>


	<script>

	
		$('#c1').click(function(){
			
			now = new Date();
			var year = now.getFullYear();
			var mon = (now.getMonth()+1< 10 ? '0' : '')+(now.getMonth()+1);
			var day = (now.getDate()< 10 ? '0' : '')+now.getDate();
			var inp = $('<input/>');
			var ta = $('#c2');
			ta.empty();
			var tb = $('#c3');
			tb.empty();
			tb.html("<input type='button' value='聯絡我們' id= 'c1' class='btn btn-primary'>"+'&nbsp;&nbsp;&nbsp;&nbsp;'+"<input type='button' value='關閉' id= 'c4' class='btn btn-danger'>");
			
			inp.attr({type:'text',name:'receive_date',size:'80',readonly:"readonly",value:year+'-'+mon+'-'+day});
			
			var td1 = $('<td></td>').attr({width:'80',style:'text-align:center'}).html('日'+'&nbsp;&nbsp;&nbsp;&nbsp;'+'期:');
			var td2 = $('<td></td>').attr({id:'ta1'}).append(inp);
			var td3 = $('<td></td>').attr({width:'80',style:'text-align:center'}).html('標'+'&nbsp;&nbsp;&nbsp;&nbsp;'+'題:');
			var td4 = $('<td></td>').attr({id:'ta2'}).html("<input type='text'  name='title_service' size='80' placeholder='標題'>");
			var td5 = $('<td></td>').attr({width:'80',style:'text-align:center'}).text('問題內容:');
			var td6 = $('<td></td>').attr({id:'ta3'}).html("<textarea rows='10' cols='79'  name='content_service' placeholder='內文'></textarea>");
			var td7 = $('<td></td>').attr({colspan:'2',style:'text-align:center;padding:20px'}).html("<input type='button' value='送出內容' id= 'go1'>"+
																						"<input type='hidden' name='customerId' value='${sessionScope.login_customer_info.getCustomerId()}'>"+'&nbsp;&nbsp;&nbsp;'+
																						"<input type='button' value='刪除內容' id= 'd1'>");
			var td8 = $('<td></td>').attr({width:'80',style:'text-align:center'}).text('');
			var td9 = $('<td></td>').attr({id:'ta4'});
			var td10 = $('<td></td>').attr({id:'ta5'})
			var td11 = $('<td></td>').attr({width:'80',style:'text-align:center'}).text('');
			
			var tr1 = $('<tr></tr>').append([td1,td2]);
			var tr2 = $('<tr></tr>').append([td3,td4]);
			var tr3 = $('<tr></tr>').append([td8,td9]);
			var tr4 = $('<tr></tr>').append([td5,td6]);
			var tr5 = $('<tr></tr>').append([td11,td10]);
			var tr6 = $('<tr></tr>').append(td7);
			
			ta.append($('<form></form>').append($('<table></table>').append([tr1,tr2,tr3,tr4,tr5,tr6])));
			
 			ta.show();
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
							ta.empty();
							ta.append($('<div></div>').attr({id:'c2',style:"color:red; padding:20px; font-weight: bold;text-align: center;font-size: 24px;"}).text(data));
						});
					};
				})
			
		
			$('#d1').click(function() {
				var ta2 = $('#ta2');
				var ta3 = $('#ta3');
	
				ta2.empty();
				ta3.empty();
	
				ta2.html("<input type='text'  name='title_service' size='80' placeholder='標題'>");
				ta3.html("<textarea rows='10' cols='79'  name='content_service' placeholder='內文'></textarea>");	
			});


			$('#c4').click(function() {
				window.location.reload();
			})
		});

	</script>
	
</div>		
</body>
</html>