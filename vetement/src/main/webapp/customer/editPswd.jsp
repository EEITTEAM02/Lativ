<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
		新密碼:	<input type="text" name="pswd_new" value=""> <br>
				<div class='tip'>密碼長度:8-12字元、須包含數字與大小寫英文</div><br><br>
		密碼確認: <input id="pswd_new_doublechk" type="text" name="pswd_new_doublechk" value="" >
				<span id="pswd_err_msg"></span>
				<div id="member_password_error_msg" class="error_msg"></div><br>
				<input id="pswd_new_doublechk_submit" type="button" name="pswd_new_doublechk_submit" value="確認修改">
	</div>
</body>
<script>
	$('#pswd_new_doublechk_submit').click(function() {
			$.ajax({
				url:'${pageContext.request.contextPath}/CustomerServlet?action=editPswd',
				type:'POST',
				dataType:'json',
				data:{
					new_pswd:$('#pswd_new_doublechk').val()
				},
				
				success:function(){
					alert("修改成功");
					location.href = 'customer_management.jsp';
				},
				
				error: function(xhr) {
					alert('Ajax request 發生錯誤');
				},
				
			});
		})
		
		
		
	

</script>

</html>