<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>    
<%@ page import="com.news.model.*"%>    
<%
    NewsService newsSvc = new NewsService();
    List<NewsVO> list = newsSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>公告</title>
	<style>
		.tb1{
			font-family:標楷體;
			padding:5px;
		}
		.td1{
		    color: orange;
       		font-weight: bold;
            text-align: center;
            padding:5px;
         }
        .td2{
		    color: orange;
       		font-weight: bold; 
       		padding:5px;
         }
        .td3{
		    
       		
       		padding:5px;
         }
	</style>
</head>
<body>
	<h2>最新公告</h2>
	
	<form>
		<c:forEach var="newsVO" items="${list}" >
			<table  rules="none" class="tb1" width='600'>
				<tr>
					<td width='100' class="td1">${newsVO.pubdate}</td><td width='400' class="td2">【${newsVO.title}】</td>
				</tr>
				
				<br>
				<tr>
					<td></td><td><pre width='400' class="td3">${newsVO.content}</pre></td>
				</tr>
				
				
			</table>
			<hr width="600" align="left">
		</c:forEach>
	</form>
	
	

</body>
</html>