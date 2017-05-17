<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.autocomplete-suggestions { border: 1px solid #999; background: #FFF; overflow: auto; }
.autocomplete-suggestion { padding: 2px 5px; white-space: nowrap; overflow: hidden; }
.autocomplete-selected { background: #F0F0F0; }
.autocomplete-suggestions strong { font-weight: normal; color: #3399FF; }
.autocomplete-group { padding: 2px 5px; }
.autocomplete-group strong { display: block; border-bottom: 1px solid #000; }
</style>
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
</head>
<body>
	<input type="text" name="country" id="search"/>
	<p>AAAAAAAAAAAAAAAAAAAAAAAAAA</p>
	<script>
	$(function(){
// 		var productions = [ { value: 'Andorra', data: 'AD' }, { value: 'Zimbabwe', data: 'ZZ' }];
		var search = $('#search');
		var productions = new Array();
		
// 		search.keyup(function(){
// 			productions.length=0;
// 			$.getJSON("AutocompleteSearch.do",{"autoKeyword":search.val()},function(data){
// 				$.each(data,function(i,productName){
// 					var ob = new Object();
// 					ob.value = productName;
// 					productions.push(ob);
// 				})	
// 			})
			
// 		})

		$.getJSON("AutocompleteSearch.do",{"autoKeyword":""},function(data){
				$.each(data,function(i,productName){
					var ob = new Object();
					ob.value = productName;
					productions.push(ob);
				})	
			})

		
		search.autocomplete({
		    lookup: productions
		});
		
		$('.autocomplete-selected').click(function(){
			alert("AA");
		});
	})
	</script>
</body>
</html>