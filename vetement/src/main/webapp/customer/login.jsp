<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<style>
	.login{
		position: absolute;
	    top: 25%;
	    left: 40%;
	    width: 500px;
	    height: 450px;
 		background-image:url('${pageContext.request.contextPath}/customer/images/wood.jpg');	 
 		font-family:Microsoft JhengHei; 
		font-weight:bold; 
		font-size:18px; 
	    padding: 3%;
	    border: 2px solid;
	}
	.input{
		border-radius: 3px;
	}
	
	.login_btn{
		border-radius: 7px;
		background-color:red;
		color:white;
		margin-left: 68px;
		padding: 5px 30px 5px 30px;
		margin-left: 41px;
		font-family: inherit;
		font-size: 16px;
	}
	
	.error_msg {
		color:red;
	}
	
	.error{
		color: red;
	    text-align: center;
	}
	
	
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="login_dialog_content" class="login">
		<span>會員登入</span><br><br>
		<div id="error_msg" class="error_msg"></div>
		<form id="form" method="Post" Action="${pageContext.request.contextPath}/CustomerLoginServlet?action=login">
			帳號<br>
			<input id="email" class="input" type="text" name="email" value="huahua@gmail.com" onfocus="this.placeholder=''" onblur="this.placeholder='電子郵件'" autoComplete="off" chi="帳號">
			<div id="email_error_msg" class="error_msg"></div>
			<br><br>
			密碼<br>
			<input id="pswd" class="input" type="password" name="pswd" value="lativ123" onfocus="this.placeholder=''" onblur="this.placeholder='密碼'" autoComplete="off" chi="密碼">
			<div id="pswd_error_msg" class="error_msg"></div>
			<br><br>
			<input class="login_btn" id="login_submit" type="button" name="login_btn" value="登入" >
			<input class="login_btn" id="cancel_btn" type="button" name="cancel_btn" value="取消" >
		</form>
	</div>
	<div id="error_msg" class="error">
	</div>
	
<script src="${pageContext.request.contextPath}/jsUtil/validation.js"></script>
<script>
	$('#login_submit').click(function() {	//點了register button後要做的事如下	
		$.ajax({	//因為不想要直接換頁，所以把輸入的資料傳到ajax，Servlet再去接ajax的資料
			url: '${pageContext.request.contextPath}/CustomerLoginServlet?action=login',
			type: 'POST',
			dataType: "json",
			data: {
				account: $("#email").val(),
				password: $("#pswd").val()
			},
			//如果驗證失敗(if)，會在送出之前(beforeSend)截斷(xhr.about())
			beforeSend : function(xhr){
				//就是false以後要幹嘛，false以後要繼續，所以要return ; field_array =  ["account", "pswd"]	
				//validation_result 只可能是true或false
				var validation_result = inputFieldEmptyValidation( ["email", "pswd"] ); 
				
				if(validation_result == false) //just an example
	        	{
	            	xhr.abort();
				}
				if( checkEmailPattern( $("#email").val() ) == false) {
					xhr.abort();
				}
    		},
			
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			
			success: function(response_login_customer_object) {	//去接ajax傳回來的結果
				//console.log(response_login_customer_object);
				$('#error_msg').text("");	//如果先輸入錯的，再輸入對的，沒有換頁的情況下，沒有先清空錯誤訊息，即使正確登入了，錯誤訊息也會留在上面
				if( jQuery.isEmptyObject(response_login_customer_object) == false ){	//傳回1筆以上(因為0筆代表沒有比對到)就導頁到xxx.jsp
					
					//管理人員頁面做出後再判斷id做導頁
// 					if(response_login_customer_object == 1) {
// 						location.href = '後台管理人員主頁.jsp';
// 					}
// 					else {
// 						location.href = 'customer_management.jsp';
// 					}
					location.reload();
				}
				else{
					$('#error_msg').text("帳號或密碼不正確，請重新輸入");
					//alert("帳號或密碼不正確，請重新輸入");
				}
			}
		});		
	});
	
	$('#cancel_btn').click(function() {
		$('#login_dialog').hide();
	});

</script>
</body>
</html>