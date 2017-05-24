<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>公告</title>
		<style>
		
 		.outer_container1111 { 
 			width: 1000px;
 		    margin: 0 auto;
 		    border: 2px solid #337ab7;
 		    border-radius: 20px; 
 		    padding-top: 1%; 
 		    padding-bottom: 5%; 
 		    font-family: Microsoft Jhenghei;
 	    	font-size: 16px; 
/*  	    	background-color:oldlace */
/* 	    	text-align:center  */
 		} 
		
		.wordsize{
		font-size: 20px ;
		}
		</style>

<!-- 		<script src="../js/jquery-1.12.3.min.js"></script> -->
<!--最新編譯和最佳化的 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"> -->
<!-- 選擇性佈景主題 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"> -->
<!-- 最新編譯和最佳化的 JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script> -->
<%-- <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script> --%>
	</head>
	<body>
	<div class="outer_container1111">
	<h2 style="font-family:Microsoft Jhenghei;text-align: center;color:#9F4D95;font-size: 40px; font-weight: bold">修改公告</h2>
	<jsp:useBean id="newsSvc" scope="page" class="com.news.model.NewsService" />
		<div style="margin-left: 20%;font-family: Microsoft Jhenghei">
		<ul>
			<li>
			    <FORM METHOD="post">
			        <b class="wordsize">新增 :</b>
			        <input type="button" value="新增公告" name="new1" id='n1' class="btn btn-info btn-sm wordsize">
			    </FORM>
			 </li>
			 <br>
 			<li>
 				<FORM >
			       <b class="wordsize">更改公告 :</b>
			       <select size="1" name="newsno1" >
				       <c:forEach var="newsVO" items="${newsSvc.all}" > 
				       		<option value="${newsVO.newsno}">${newsVO.newsno} : ${newsVO.title}
				       </c:forEach>   
			       </select>
			       <input type="button" value="送出" id='s1' class="btn btn-info btn-sm wordsize">
			    </FORM>
			</li>
			<br>
			<li>
 				<FORM >
			       <b class="wordsize">刪除公告 :</b>
			       <select size="1" name="deleteno" >
				       <c:forEach var="newsVO" items="${newsSvc.all}" > 
				       		<option value="${newsVO.newsno}">${newsVO.newsno} : ${newsVO.title}
				       </c:forEach>   
			       </select>
			       <input type="button" value="刪除" id='d1' class="btn btn-danger btn-sm wordsize" >
			    </FORM>
			</li>
		</ul>
		</div>
		<div style="margin-left: 15% ; font-family: Microsoft Jhenghei">
			<c:if test="${not empty errorMsgs}">
				<font color='red'>請修正以下錯誤:
				<ul>
					<c:forEach var="message" items="${errorMsgs}">
						<li>${message}</li>
					</c:forEach>
				</ul>
				</font>
			</c:if>
			<form method="post" action="news.do">
				<table border='1' >
					<tr><td width='80' style='text-align:center' class="wordsize">編  號</td>
						<td width='580' style='text-align:left' id='ta1'>
<!-- 							<input type='text'  name='newsno' size='80' readonly="readonly"> -->
						</td>
					</tr>
	
					<tr><td width='80' style='text-align:center' class="wordsize">主  題</td>
						<td width='580' id='ta2'>
<!-- 							<input type='text'  name='title' size='80' placeholder='標題'> -->
						</td>
					</tr> 

   					<tr><td width='80' style='text-align:center' class="wordsize">內  文</td>
   						<td width='580' id='ta3'>
<!--    							<textarea rows='10' cols='73'  name='content' placeholder='內文' overflow-y='visible'></textarea> -->
   						</td>
   					</tr>

   					<tr><td width='80' style='text-align:center' class="wordsize">日  期</td>
   						<td width='580' id='ta4'>
<!--    							<input type='text'  name='pubdate' size='80' placeholder='日期'> -->
   						</td>
   					</tr>

   					<tr><td colspan='2'style='text-align:center'>
   					<input type='submit' value='送出內容' id= 'go1' class="btn btn-info btn-sm wordsize" >&nbsp;&nbsp;&nbsp;
   					<input type='button' value='刪除內容' id= 's2' class="btn btn-warning btn-sm wordsize" ></td></tr>
			 		<input type="hidden" name="action" value="ins">
				</table>
			</form>
		</div>
		
<!-- 		<script src="../js/jquery-1.12.3.min.js"></script> -->
<!-- 		<script src="../js/bootstrap.min.js"></script> -->
		
		<script>
			
// 		$('#d1').click(function() {
// 			var deleteno = $('select[name="deleteno"]').val();
			
// 			console.log(deleteno);
			
// 			$.ajax({
// 				'type':'GET',
// 				'url':'news.do',
// 				'dataType':'xml',
// 				'data':{action:"del",'deleteno':deleteno},
// 				'complete':
// 					function(){
// 						alert('刪除成功');
// 						window.location.reload();
// 					},
// 			});
// 		});
			
			$('#d1').click(function() {
				var deleteno = $('select[name="deleteno"]').val();
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
							'url':'news.do',
							'dataType':'xml',
							'data':{action:"del",'deleteno':deleteno},
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
			
			
			$('#n1').click(function() {
				now = new Date();
				var year = now.getFullYear();
				var mon = (now.getMonth()+1< 10 ? '0' : '')+(now.getMonth()+1);
				var day = (now.getDate()< 10 ? '0' : '')+now.getDate();
				var ta1 = $('#ta1');
				var ta2 = $('#ta2');
				var ta3 = $('#ta3');
				var ta4 = $('#ta4');
				var inp = $('<input/>');
				var inp2 = $('<input/>');
				inp.attr({type:'text',name:'newsno',size:'80',value:'new',color:'red',readonly:"readonly"});
				inp2.attr({type:'text',name:'pubdate',size:'80',value:year+'-'+mon+'-'+day});
				ta1.empty();
				ta2.empty();
				ta3.empty();
				ta4.empty();
				ta1.append($('<div></div>').append(inp));
				ta2.append($("<div></div>").html("<input type='text'  name='title' size='80' placeholder='標題'>"));
				ta3.append($("<div></div>").html("<textarea rows='10' cols='80'  name='content' placeholder='內文'></textarea>"));
				ta4.append($('<div></div>').append(inp2));
			});
			
			$('#s2').click(function() {
				var ta2 = $('#ta2');
				var ta3 = $('#ta3');

				ta2.empty();
				ta3.empty();

				ta2.append($("<div></div>").html("<input type='text'  name='title' size='80' placeholder='標題'>"));
				ta3.append($("<div></div>").html("<textarea rows='10' cols='80'  name='content' placeholder='內文'></textarea>"));

			});
			
			$('#s1').click(function() {
				var opValue = $('select[name="newsno1"]').val();
// 				console.log(opValue);
				$.getJSON('news.do',{action:"sel",'newsno':opValue},function(datas){
					
					   var ta1 = $('#ta1');
					   var ta2 = $('#ta2');
					   var ta3 = $('#ta3');
					   var ta4 = $('#ta4');
					   
					   var docFrag1 = $(document.createDocumentFragment());
					   var docFrag2 = $(document.createDocumentFragment());
					   var docFrag3 = $(document.createDocumentFragment());
					   var docFrag4 = $(document.createDocumentFragment());
					   
					   ta1.empty();
					   ta2.empty();
					   ta3.empty();
					   ta4.empty();
					  
					   $.each(datas,function(nox,news){
// 						   console.log(news.Content);
						   var inp = $('<input/>');
						   var inp2 = $('<input/>');
						   var inp33 = $('<textarea/>');
						   var inp4 = $('<input/>');
						   
						   inp.attr({type:'text',name:'newsno',size:'80',value:news.Newsno,readonly:"readonly"});
						   inp2.attr({type:'text',name:'title',size:'80',value:news.Title});
						   inp33.attr({name:'content',size:'80',rows:'10',cols:'80',value:news.Content});
						   var inp3 = inp33.val(news.Content);
						   inp4.attr({type:'text',name:'pubdate',size:'80',value:news.Pubdate});
						   
						   
						   var cell1 = $('<div></div>').append(inp);
						   var cell2 = $('<div></div>').append(inp2);
						   var cell3 = $('<div></div>').append(inp3);
						   var cell4 = $('<div></div>').append(inp4);
	
						   docFrag1.append(cell1);
						   docFrag2.append(cell2);
						   docFrag3.append(cell3);
						   docFrag4.append(cell4);
					   });
					   
					   ta1.append(docFrag1);
					   ta2.append(docFrag2);
					   ta3.append(docFrag3);
					   ta4.append(docFrag4);
				   })	  
				
			})
		</script>
	</div>	
	</body>
</html>