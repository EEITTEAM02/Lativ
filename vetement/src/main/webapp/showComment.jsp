<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.2.0.min.js"></script>

<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">

<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<style>
	
	.myButton {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
	background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
	background-color:#79bbff;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #84bbf3;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	padding:10px 12px;
	text-decoration:none;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
	background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
	background-color:#378de5;
}
.myButton:active {
	position:relative;
	top:1px;
}

.myButton2 {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #fe1a00), color-stop(1, #ce0100));
	background:-moz-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-webkit-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-o-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:-ms-linear-gradient(top, #fe1a00 5%, #ce0100 100%);
	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fe1a00', endColorstr='#ce0100',GradientType=0);
	background-color:#fe1a00;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:10px 12px;
	text-decoration:none;
}
.myButton2:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ce0100), color-stop(1, #fe1a00));
	background:-moz-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-webkit-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-o-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:-ms-linear-gradient(top, #ce0100 5%, #fe1a00 100%);
	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ce0100', endColorstr='#fe1a00',GradientType=0);
	background-color:#ce0100;
}
.myButton2:active {
	position:relative;
	top:1px;
}

	
	#panes {
		border-collapse: collapse;
	}
	#comment-item {
		border-collapse: collapse;
	}
 	#orderNo,#pubtime,#productName{
 		color:#888888;
 		font-size:15px;
 		margin:5px;
 	}
 	#comment{
 		color:#000088;
 		font-size:20px;
 		margin-left:5px;
 	}
 	#productName,#pubtime{
	 	display:inline;
		white-space:nowrap;
	}
 	#wrap{
 		width:600px;
 		margin:auto;
 	}
</style>
</head>

<body>
	<div id="wrap">
		<h1 style="color:blue;margin:auto;text-align:center;">商品評價</h1>
		<div id="text" style="text-align:center;margin:20px;">
		
		</div>
		<div id="panes">
			<div >
			
			</div>
		</div>
	</div>	
	<div id="dialog1" title="請輸入評價">
    
	<textarea rows="14" cols="50" name="name" class="form-control" id="form-text" placeholder="評價內容"></textarea>
	</div>
<script type="text/javascript">
	
	$(function() {
		var url = window.location.href;
		var temp = url.split("?");
		var vars = temp[1].split("&");
		var vars1 = vars[0].split("=");
		var vars2 = vars[1].split("=");
		var pid = vars1[1];
		var cid = vars2[1];
		var ordId;
			
		if(cid != "null"){
			var docFrag = $(document.createDocumentFragment());
			var cell1 =$("<button href='#' class='myButton' style='margin-right:50px;' type='button' id='opener'>我要評論</button>");
			var cell2 =$("<button href='#' class='myButton2' style='margin-left:50px;' type='button' id='delcom'>刪除評論</button>");
			var cell3=$("<div></div>");
			cell3.append([cell1,cell2]);
			docFrag.append(cell3);
			$("#text").append(docFrag);
		}
		 //刪除評論
        $("#delcom").click(function(){
        	$.get('CommentCheck',{action:"GET_ONE",'customerId':cid,'productId':pid},function(datas){	
        		if (datas.trim() == "null"){
        			swal("無評論過，請先評論");
        		}else{
		        	$.get('CommentCheck',{action:"delete",'customerId':cid,'productId':pid},function(data){
		        		swal({title:data.trim()},function(){
        					window.location.reload();
        					}) 
		        	})
        		}
        	})  
        })
	
		//查看商品是無評論
 	   $.getJSON('CommentCheck',{action:"GET_ALL",'productId':pid},function(datas){
		    var tb = $('#panes').empty();
		    var docFrag = $(document.createDocumentFragment());
			if(datas[0] == null){
				var cell11 = $("<h1 style='text-align:center;color:red;'>暫無任何評論</h1>");
				docFrag.append(cell11);
				$("#panes").append(docFrag);
			}else{		
			   $.each(datas,function(idx,comment){
				   var cell1 = $('<p></p>').attr({"id":"orderNo"}).text("訂單編號:"+comment.orderNo);
				   var cell2 = $('<pre></pre>').attr({"id":"comment"}).text(comment.comment);
				   var cell3 = $('<p></p>').css("margin-left","300px").attr({"id":"pubtime"}).text(comment.pubtime);		   
				   var cell4 = $('<p></p>').attr({"id":"productName"}).text(comment.productName+" - "+comment.size+" - "+comment.color);
				   var cell5 = $('<hr></hr>');
				   var row = $('<div></div>').attr({"id":"comment-item"}).append([cell1,cell2,cell4,cell3,cell5]);
				   docFrag.append(row);
			   })
			   tb.append(docFrag);
				}
 		})
 		var ordId;
        //點擊後確認是否評價過
        $( "#opener" ).click(function() {
        	//查詢是否購買過商品
        	$.get('CommentCheck',{action:"check",'customerId':cid,'productId':pid},function(datas){
        		var jsdata = JSON.parse(datas)
        		if(jsdata.length == 0){
        			swal("請先購買商品");	        	             	
        		}else{     			
        			ordId = jsdata[0].orderNo
        			//查詢是否評論過商品
        			$.get('CommentCheck',{action:"GET_ONE",'customerId':cid,'productId':pid},function(data){
        				
		        		if (data.trim() == "null"){
		        			$( "#dialog1" ).dialog( "open" );
		        		}else{
		        			swal("已評論過");
		        		}
		        	})  
        		}
        	})
        });

    	//彈出評價視窗
		var text;
        $( "#dialog1" ).dialog({
           autoOpen: false,
           height: 450,
		   width : 500,
		   closeOnEscape: false,
		   modal : true,
		   resizable : false,
		   dialogClass: "dlg-no-close",
           buttons: {
            "OK": function() {
            	$(this).dialog("close");
            	text = $('#form-text').val()
            	$.get('CommentCheck',{action:"insert",'customerId':cid,
            		'productId':pid,'orderNo':ordId,'comment':text},function(data){
            			if(data.trim()=="add ok"){
            				swal({title:"評論成功"},function(){
            					window.location.reload();
            					})            				
            			}else{
							swal(data);
            				$('#form-text').val('');
            			}
            		})
            },
            "close": function() {$(this).dialog("close");}
            },	
        });
	});
</script>	
</body>
</html>