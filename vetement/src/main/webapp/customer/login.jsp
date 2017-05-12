<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="error_msg" scope="request" class="java.lang.String" />
<%-- <jsp:useBean id="error_msg" scope="session" class="java.lang.String" /> --%>

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
	
 	body{ 
 		background-image:url('images/wood.jpg');	 
 		font-family:Microsoft JhengHei; 
		font-weight:bold; 
 		font-size:18px; 
		
 	} 
	
	.error{
		color: red;
	    margin-top: 62px;
	    margin-left: 722px;
	}
	
	
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="login_dialog_content" class="login">
		<span>會員登入</span><br><br>
		<form id="form" method="Post" Action="${pageContext.request.contextPath}/CustomerLoginServlet?action=login">
			帳號<br>
			<input id="account" class="input" type="text" name="account" value="huahua@gmail.com" placeholder="電子郵件" autoComplete="off" chi="帳號">
			<div id="account_error_msg" class="error_msg"></div>
			<br><br>
			密碼<br>
			<input id="pswd" class="input" type="password" name="pswd" value="lativ123" placeholder="密碼" autoComplete="off" chi="密碼">
			<div id="pswd_error_msg" class="error_msg"></div>
			<br><br>
			<input class="login_btn" id="login_submit" type="button" name="login_btn" value="登入" >
			<input class="login_btn" id="cancel_btn" type="button" name="cancel_btn" value="取消" >
		</form>
	</div>
	<div id="error_msg" class="error">
	</div>
	
	
	<script>
	$('#login_submit').click(function() {	//點了register button後要做的事如下	
		$.ajax({	//因為不想要直接換頁，所以把輸入的資料傳到ajax，Servlet再去接ajax的資料
			url: '${pageContext.request.contextPath}/CustomerLoginServlet?action=login',
			type: 'POST',
			dataType: "json",
			data: {
				account: $("#account").val(),
				password: $("#pswd").val()
			},
			//如果驗證失敗(if)，會在送出之前(beforeSend)截斷(xhr.about())
			beforeSend : function(xhr){
				//就是false以後要幹嘛，false以後要繼續，所以要return ; field_array =  ["account", "pswd"]	
				//validation_result 只可能是true或false
				var validation_result = inputFieldEmptyValidation( ["account", "pswd"] ); 
				
				if(validation_result == false) //just an example
	        	{
	            	xhr.abort();
				}
    		},
			
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			
			success: function(response_login_customer_object) {	//去接ajax傳回來的結果
				//console.log(response_login_customer_object);
				$('#error_msg').text("");	//如果先輸入錯的，再輸入對的，沒有換頁的情況下，沒有先清空錯誤訊息，即使正確登入了，錯誤訊息也會留在上面
				if( jQuery.isEmptyObject(response_login_customer_object) == false ){	//傳回1筆以上(因為0筆代表沒有比對到)就導頁到customer_management.jsp
					
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
	
	
	
	
// 	$function(){
//   		$("#form").submit(function(){
//   			//點了submit button後要做什麼事
//   			return inputFieldEmptyValidation( ["account", "pswd"] ); //就是false以後要幹嘛，false以後要繼續，所以要return ; field_array = ["account", "pswd"] 
//   			var account_length = $("#account").val().length;
//   			var password_length = $('#pswd').val().length;
//   			if(account_length == 0 || password_length == 0) {
//   				alert("請輸入帳號及密碼");
//   				return false;	//return false代表按下submit並沒有送出給Servlet
  				
//   			}
//   		};
  		
  		function inputFieldEmptyValidation(field_array) {	//要驗證的欄位包成一個陣列，傳進此function
  			var error_count = 0;
  			
  			for(var i=0; i<field_array.length; i++) {
  				var field = field_array[i];
  				
  				//console.log("field_array["+ i +"]: "+ field);
  				var error_msg_id = "#" + field + "_error_msg";
  				//console.log(error_msg_id);
  				
  				$(error_msg_id).text("");
  				var field_length = $('#' + field).val().length;
  	  			var chinese_field_name = $('#' + field).attr("chi");

  	  			if(field_length == 0) {	//輸入字元長度為0的時候
  	  				$("#" + field + "_error_msg").text(chinese_field_name + "必須輸入");
  	  				error_count++; //當1個輸入欄位的輸入字元長度是0，error_count就加1(就是醜1)，換句話說1個醜1就是一個欄位沒有輸入，醜2就是2個欄位沒有輸入
  	  			}
  	  			//console.log("error_count 此時等於: " + error_count);
  			}
  			
  			if(error_count > 0) return false; //當有醜1以上(包含醜1)出現，就不要送出
  		}
//	});

		
	
	</script>
</body>
</html>