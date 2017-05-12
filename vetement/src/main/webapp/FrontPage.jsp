<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Front Page</title>
<style>
html, body {
            height: 100%;
            margin: 0;
        }

#wrapper {
            min-height: 100%; 
            position:relative;
       }
       
 img {
 width:100%; 
 height:100vh; 
 } 
form { 
     position:absolute; 
     bottom: 0;
     left: 0;
     right: 0;
     margin: auto;
     width: 100px;
     height: 100px;
/*      background:blue;  */
/*      color:#FFF;  */
 } 
 button{
  width:150px;
     height:60px;
 }
 
 .map_title {
    position:absolute;    
}
 span {
 height:auto;
 }
</style>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
<div id="wrapper">
<img src="images/background_closet.jpg" alt="" usemap="#Map" />
<map name="Map" id="Map">
    <area alt=""  href="${context}/Search/men.jsp" shape="poly" coords="242,265,374,284,411,460,247,494" data-name="男裝"/>
    <area alt=""  href="${context}/Search/kids.jsp" shape="poly" coords="314,191,439,190,482,363,407,363" data-name="兒童裝"/>
    <area alt=""  href="${context}/Search/kids.jsp" shape="poly" coords="320,7,448,9,444,132,355,138" data-name="兒童裝"/>
    <area alt=""  href="${context}/Search/women.jsp" shape="poly" coords="473,68,628,65,626,341,500,428" data-name="女裝"/>
    <area alt=""  href="${context}/Search/men.jsp" shape="poly" coords="802,74,935,71,947,367,798,382"  data-name="男裝"/>
    <area alt=""  href="${context}/Search/men.jsp" shape="poly" coords="968,243,1114,251,1123,514,965,504"  data-name="男裝"/>
    <area alt=""  href="${context}/Search/women.jsp" shape="poly" coords="959,11,1111,8,1117,186,958,198"  data-name="女裝"/>
</map>
<form action="indexTemplate.jsp">
    <button type="submit" value="" class="btn btn-primary">進入網站</button>
</form>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/imageMapResizer.min.js"></script>
<script>
 imageMapResize();
 $(function() {

	    $('area').mouseover(function(){
	        var txt=$(this).data('name');
	        var coor=$(this).attr('coords');
	        var coorA=coor.split(',');
	        var left=coorA[0];
	        var top=coorA[1];

	        var $span=$('<span class="map_title bg-warning"></span>').html('<h3>'+txt+'</h3>');        
	        $span.css({top: top+'px', left: left+'px', position:'absolute'});
	        $span.appendTo('#wrapper');
	    }).mouseout(function(){
	    	$('span').remove();
	    })

	})
</script>
</body>
</html>