<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<style>
	.login{
 		
/* 	    width: 500px; */
/* 	    height: 450px; */
/*  	background-image:url('${pageContext.request.contextPath}/customer/images/wood.jpg');	  */
/* 		font-weight:bold;  */

/* 	    padding: 3%; */
/* 	    border: 2px solid; */
		font-size:18px;  
		position: absolute;
		top: 260px;
		left: 39%;
	    font-family:Microsoft JhengHei;
		background: #F1F2F4;
		border-bottom: 2px solid #C5C5C8;
		border-radius: 5px;
		text-align: center;
		color: #36383C;
		text-shadow: 0 1px 0 #FFF;
		max-width: 500px;
		margin: 0 auto;
		padding: 15px 40px 20px 40px;
		box-shadow: 0 0 3px #000;	    
	}
	
	.login h1{
		font-family:Microsoft JhengHei;
		font-size: 1.6em;
		margin-top: 30px;
		margin-bottom: 10px;
	}
	
	.login p{
		margin-top: 0;
		margin-bottom: 30px;
	}	
	
	.login button{
		margin-top: 20px;
		margin-bottom: 20px;
		display: block;
		width: 80%;
		line-height: 2em;
		background: rgba(114,212,202,1);
		border-radius: 5px;
		border:0;
		border-top: 1px solid #B2ECE6;
		box-shadow: 0 0 0 1px #46A294, 0 2px 2px #808389;
		color: #FFFFFF;
		font-size: 20px;
		text-shadow: 0 1px 2px #21756A;
	}
	
	.login button:hover{
		background: linear-gradient(to bottom, rgba(107,198,186,1) 0%,rgba(57,175,154,1) 100%);  
	}
	
	.login button:active{
		box-shadow: inset 0 0 5px #000;
		background: linear-gradient(to bottom, rgba(57,175,154,1) 0%,rgba(107,198,186,1) 100%); 
	}	
	
	.login .input{
		background: #E5E7E9;
		border-radius: 5px;
		overflow: hidden;
		box-shadow: inset 0 0 3px #65686E;
		border-bottom: 1px solid #FFF;
		padding-left:5px
	}
	
	.login input{
		width: 260px;
		background: transparent;
		border: 0;
		line-height: 50px;
		box-sizing: border-box;
		color: #71747A;
		text-shadow: 0 1px 0 #FFF;
	}	
	
	.login .blockinput{
		border-bottom: 1px solid #BDBFC2;
		padding:10px;
	}
	
	.login .blockinput:first-child{
		border-top: 0;
	}
	
	.login .blockinput:last-child{
		border-bottom: 0;
	}
	
	.login .blockinput i{
		padding-right: 10px;
		color: #B1B3B7;
		text-shadow: 0 1px 0 #FFF;
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
		<h1>會員登入</h1>
		<p id="error_msg" class="error_msg"></p>
		<form id="form" method="Post" Action="${pageContext.request.contextPath}/CustomerLoginServlet?action=login">
			<div class="input">
				<div class="blockinput">
					<label>帳號</label>
					<input id="email" class="input" type="text" name="email" value="huahua@gmail.com" onfocus="this.placeholder=''" onblur="this.placeholder='電子郵件'" autoComplete="off" chi="帳號">
					<div id="email_error_msg" class="error_msg"></div>
				</div>
				<div class="blockinput">
					<label>密碼</label>
					<input id="pswd" class="input" type="password" name="pswd" value="lativ123" onfocus="this.placeholder=''" onblur="this.placeholder='密碼'" autoComplete="off" chi="密碼">
					<div id="pswd_error_msg" class="error_msg"></div>
				</div>
				<button class="login_btn" id="login_submit" type="button">登入</button>
<!-- 				<button class="login_btn" id="cancel_btn" type="button">取消</button> -->
			</div>
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
				//console.log(response_login_customer_object["customerId"]);
				$('#error_msg').text("");	//如果先輸入錯的，再輸入對的，沒有換頁的情況下，沒有先清空錯誤訊息，即使正確登入了，錯誤訊息也會留在上面
				if( jQuery.isEmptyObject(response_login_customer_object) == false ){	//傳回1筆以上(因為0筆代表沒有比對到)就導頁到xxx.jsp
				
					//管理人員頁面做出後再判斷id做導頁;目前就是把customerId:5:張格魯設為管理員
					if(response_login_customer_object["customerId"] == 5) {
						location.href = 'mangerPage.jsp';
					}
					else {
						location.reload();
					}
				}
				else{
					$('#error_msg').text("帳號或密碼不正確，請重新輸入");
					//alert("帳號或密碼不正確，請重新輸入");
				}
			}
		});		
	});
	
// 	$('#cancel_btn').click(function() {
// 		$('#login_dialog').hide();
// 	});
	
	

</script>
</body>
</html>