<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#outter{
	width:1000px;
	margin:auto;
}
#display{
	width:1000px;
	height:900px;
	margin:auto;
}
	
li {
	width:300px;
	height:400px;
	float: none;
	display: inline-block;
	margin-left: 28px;
	margin-buttom:30px;
	vertical-align: top;
	text-align:center;/*將li的內容置中*/
}

.productImage{
	width:250px;
	margin:auto;
}

.productName{
	width:100%;
	text-align:center;
}

.productPrice{
	width:100%;
	text-align:center;
}

#pageDiv{
 	width:100%; 
 	text-align:center; 
}

a:link{
	font-size:25px;
	font-family:sans-serif;
	text-decoration:none;
	margin-left:10px;
}

a:visited{
	color:black;
}
</style>
</head>
<body>
	<input type ="text" name="searcher" id="searcher"/>
	<div id="outter">
		<div id="display">
		</div>
		<div id="pageDiv">
		</div>
	</div>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script>
	$(function(){
		var pageDiv = $("#pageDiv");//變數給值時寫在最前面，確定不會有使用此變數的方法抓不到此變數
		getData("",1);//一開始即列出所有商品，每頁呈現的產品數量，符合規定的每頁筆數
		getPage("");//列出所有商品時，所需的頁碼 
		
		//為搜尋欄位的keydown事件綁定search()方法
		$('input[name="searcher"]').keydown(function(){search(event)})
		
		//search函式，將搜尋欄位的關鍵字傳給getPage()方法與getData()方法
		function search(event){
			var keyWord = $('input[name="searcher"]').val();
			if(event.which==13){
				$("#display").empty();
				//每當搜尋時，從關鍵字相關的商品，第一頁開始列表
				getPage(keyWord); //隨著蒐尋商品數量改變頁碼數
				getData(keyWord,1); //列出第一頁的商品
			}
		}
		
		//為動態產生的頁碼的click事件綁定方法，將頁碼數與關鍵字傳給getData()方法
		pageDiv.on('click','.pageNumber',function(){
			var keyWord = $('input[name="searcher"]').val();
			var pageNumber = $(this).text();
			$("#display").empty();
			getData(keyWord,pageNumber);
		});
		
		//隨著蒐尋到的資料筆數，設定頁碼數
		function getPage(keyWord){
			$.getJSON("Search.do",{"keyWord":keyWord},function(data){
				//每次都重新產生頁碼
				pageDiv.empty(); 
				var docFragment = $(document.createDocumentFragment());
				var productAmount = data.length;
				//在SearcherDAO設定每頁3筆，query.setMaxResults(3);
				//有餘數時，頁面加1;
				var pageAmount = ((data.length)/3);
				if((data.length)%3){
					pageAmount = pageAmount+1;
				}
				//製造頁碼
				for(i=1;i<=pageAmount;i++){
					var pageA = $("<a></a>");
					pageA.text(i);
					pageA.attr("href","#");
					pageA.addClass("pageNumber");
					docFragment.append(pageA);
				}
				pageDiv.append(docFragment);
			})
		}
		
		//將關鍵字與所在頁碼傳給伺服器，回傳此頁碼擁有的產品資料
		function getData(keyWord,pageNumber){
			$.getJSON("Search.do",{"keyWord":keyWord,"pageNumber":pageNumber},function(data){
				var docFragment = $(document.createDocumentFragment());
				$.each(data,function(i,product){
					var productLi = $("<li></li>"); 
					
					var elementA = $('<a></a>');
					elementA.attr("href","../ProductBack/InformationCheck.jsp");//連接柏瑜的網址
					
					var img = $("<img/>");
					img.attr("alt",product.productName);
					img.attr("title",product.productName);
					img.attr("src","Image.do?productId="+product.productId);
					img.addClass("productImage");
					elementA.append(img);
					
					var name = $("<p></p>");
					name.text(product.productName);
					name.addClass("productName");
					
					var price = $("<p></p>");
					price.text("NT$ "+product.price);
					price.addClass("productPrice");
					
					productLi.append(elementA);
					productLi.append(name);
					productLi.append(price);
					
					docFragment.append(productLi);
				})
				$("#display").append(docFragment);
				
			})
		}
	})
</script>
</body>
</html>