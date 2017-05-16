<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<style>
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
		<div id="panes">
			<div >
			
			</div>
		</div>
	</div>	
<script type="text/javascript">

	$(function() {
 	   $.getJSON('CommentCheck',{action:"GET_ALL",'productId':1},function(datas){
 		   console.log(datas);
		   var tb = $('#panes').empty();
		   var docFrag = $(document.createDocumentFragment());
	
		   $.each(datas,function(idx,comment){
		//	   console.log(comment.productId);
			   var cell1 = $('<p></p>').attr({"id":"orderNo"}).text("訂單編號:"+comment.orderNo);
			   var cell2 = $('<p></p>').attr({"id":"comment"}).text(comment.comment);
			   var cell3 = $('<p></p>').css("margin-left","300px").attr({"id":"pubtime"}).text(comment.pubtime);		   
			   var cell4 = $('<p></p>').attr({"id":"productName"}).text(comment.productName+" - "+comment.size+" - "+comment.color);
			   var cell5 = $('<hr></hr>');
			   var row = $('<div></div>').attr({"id":"comment-item"}).append([cell1,cell2,cell4,cell3,cell5]);
			   docFrag.append(row);
		   })
		   tb.append(docFrag);
 		})   
	});
</script>	
</body>
</html>