<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<style>
	.edit_pswd {			
		font-family:Microsoft JhengHei;
		font-weight:bold;
		font-size:18px;
	}
	.error_msg {
		color:red;
		font-size:16px;
	}
	.tip{
		font-size:14px;
	}	
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="edit_pswd">
		<form>
			<div>
				<label>密碼</label><br>
				<input type='text' id="member_password" name='member_password' value='' chi='密碼'><br>
				<div class='tip'>密碼長度:8-12字元、須包含數字與大小寫英文</div>
				<div id="member_password_error_msg" class="error_msg"></div><br>
			</div>
			<div>
				<label>密碼確認</label><br>
				<input type='password' id="confirm_password" name='confirm_password' value='' chi='密碼確認'>
				<div id="confirm_password_error_msg" class="error_msg"></div><br>
			</div>
			<input id="pswd_new_doublechk_submit" type="button" name="pswd_new_doublechk_submit" value="確認修改">
		</form>
	</div>
</body>
<script src="${pageContext.request.contextPath}/jsUtil/validation.js"></script>
<script>
	$('#pswd_new_doublechk_submit').click(function() {
			$.ajax({
				url:'${pageContext.request.contextPath}/CustomerServlet?action=editPswd',
				type:'POST',
				dataType:'json',
				data:{
					new_pswd:$('#confirm_password').val()
				},
				beforeSend : function(xhr){
					//就是false以後要幹嘛，false以後要繼續，所以要return ; field_array =  ["member_name", "sex", "email", "member_password", "addr", "phone_no"]	
					//validation_result 只可能是true或false
					var validation_result = inputFieldEmptyValidation( ["member_password","confirm_password"] ); 
					
					if(validation_result == false) {
						xhr.abort();
					}
					
					if($("#member_password").val() != $("#confirm_password").val()) {
						$('#confirm_password_error_msg').text("上方密碼與密碼確認不相同");
						xhr.abort();	
					}
					
					if( checkPswdPatern($("#member_password").val() ) == false) {
						xhr.abort();
					}
				},
				success:function(){
					//alert("修改成功");
					//location.href = '${pageContext.request.contextPath}/memberPage.jsp';
					swal({title: "修改成功",type: "success"});
				},
				
				error: function(xhr) {
					alert('Ajax request 發生錯誤');
				},
				
			});
		})
	
</script>

</html>