<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="jquery.twzipcode.min.js" type="text/javascript"></script>
<style>
	body {
	
		background-image:url('images/wood.jpg');
	}
	.register {
			
		font-family:Microsoft JhengHei;
		font-weight:bold;
		font-size:18px;
	}	
	
	.register {
		position:absolute;
		top:25%;
		left:40%
	}

	.error_msg {
		color:red;
		font-size:16px;
	}
	
	.tip{
		font-size:14px;
	}
	
	.zipcode {
	    background-color: #c00;
	    color: #fff;
	    width: 30%;
    	float: left;
	}
	.county {
	    background-color: #4169E1;
	    color: #fff;
	    width: 30%;
    	float: left;
	}
	.district {
	    background-color: #008000;
	    color: #fff;
	    width: 30%;
    	float: left;
	}	
	
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="register">
	<!-- 要把資料新增(insert)到customer table裡 -->
		會員註冊:<br><br>
			姓名:<input type='text' id="member_name" name='member_name' value='Q子王' chi='姓名'>
			<div id="member_name_error_msg" class="error_msg"></div><br>
			性別:<input type='radio' name="sex" value=1>男 
				<input type='radio' name="sex" value=0>女
				<input type='hidden' id="sex" name='sex' value='' chi='性別'>
				<div id="sex_error_msg" class="error_msg"></div> <br>
			
			電子郵件:<input type='text' id="email" name='email' value='qking@gmail.com' chi='電子郵件'>
				<div id="email_error_msg" class="error_msg"></div><br>
			
			密碼:<input type='text' id="member_password" name='member_password' value='qqqq1234' chi='密碼'><br>
				<div class='tip'>密碼長度:8-12字元、須包含數字與大小寫英文</div>
				
				<div id="member_password_error_msg" class="error_msg"></div><br>
			
			密碼確認:<input type='password' id="confirm_password" name='confirm_password' value='qqqq1234' chi='密碼確認'>
				<div id="confirm_password_error_msg" class="error_msg"></div><br>
				
			地址:<div id="container"></div>
				<input type='text' id="addr" name='addr' value='kerker'>
				<input type='text' id='full_addr' name='full_addr' value='' chi='地址'>
				<div id="full_addr_error_msg" class="error_msg"></div><br>
			
			
			電話:<input type='text' id="phone_no" name='phone_no' value='1234567' chi='電話'>
				<div id="phone_no_error_msg" class="error_msg"></div><br>
				<input id="register" type="button" name="register_btn" value="註冊">
	</div>
	
</body>
<script type="text/javascript">
	$('input:radio[name="sex"]').change(function() {
        if (this.checked) {	//this.checked意謂這個radio button被點到
			$('#sex').val(this.value);	//radio button的value就會寫到id=sex這個input的value裡面 
        }
	});

	function writeFullAddr(){	//select跟radio button不同，選了就會是那個值，radio button是判別你點選哪一個，取你點選的那個值
		var full_addr = $('[name="zipcode"]').val()+","+$('[name="county"]').val()+","+$('[name="district"]').val()+","+$('[name="addr"]').val();
		$('#full_addr').val(full_addr);
	}
	
	//因為選取縣市、區鄉鎮、zip code都是引用他人的js動態生成的，所以不能直接寫.change
	$(document).on('change', '[name="county"]', function(){
		writeFullAddr();
	});	
	
	$(document).on('change', '[name="district"]', function(){
		writeFullAddr();
	});	
	
	$(document).on('blur', '[name="zipcode"]', function(){
		writeFullAddr();
	});
	
	$('[name="addr"]').blur(function(){
		writeFullAddr();
	});
	
	//<input>=$('[name="zipcode"]').val()+","+$('[name="county"]').val()+","+$('[name="district"]').val()+","+$('[name="addr"]').val()
	

	$('#register').click(function() {	//點了register button後要做的事如下	
		$.ajax({	//因為不想要直接換頁，所以把輸入的資料傳到ajax，Servlet再去接ajax的資料
			url: '${pageContext.request.contextPath}/CustomerServlet?action=insert',
			type: 'POST',
			dataType: "json",
			data: {
				qq_name: $("#member_name").val(),
				qq_sex: $("[name='sex']:checked").val(),	//取有選取的radio btn的值
				qq_email: $("#email").val(),
				qq_member_password: $("#member_password").val(),
				qq_confirm_password: $("#confirm_password").val(),
				qq_addr: $("#full_addr").val(),
				qq_phone_no: $("#phone_no").val()
			},
			//如果驗證失敗(if)，會在送出之前(beforeSend)截斷(xhr.about())
			beforeSend : function(xhr){
				//就是false以後要幹嘛，false以後要繼續，所以要return ; field_array =  ["member_name", "sex", "email", "member_password", "addr", "phone_no"]	
				//validation_result 只可能是true或false
				var validation_result = inputFieldEmptyValidation( ["member_name", "sex", "email", "member_password","confirm_password", "phone_no"] ); 
				
				if(validation_result == false) {
					xhr.abort();
				}
				
				if($("#member_password").val() != $("#confirm_password").val()) {
					$('#confirm_password_error_msg').text("上方密碼與密碼確認不相同");
					xhr.abort();	
				}
				
				if( checkEmailPattern( $("#email").val() ) == false) {
					xhr.abort();
				}
				
				if( checkPswdPatern($("#member_password").val() ) == false) {
					xhr.abort();
				}
				
				if( checkPhonePattern($("#phone_no").val() ) == false) {
					xhr.abort();
				}
				
				if( checkAddressPattern($("#full_addr").val() ) == false) {
					xhr.abort();
				}
    		},
			
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			
			success: function(response_count) {	//去接ajax傳回來的結果
				if(response_count != "99999") {
					alert('成功新增' + response_count + "筆資料。");
					
					$.post(
						"${pageContext.request.contextPath}/CustomerLoginServlet?action=login", 
						{ account: $("#email").val(), password: $("#confirm_password").val() },
						
						function(response_customer_data) {
							//console.log(response_customer_data);
							//送過去的e-mail和pswd送過去沒有比對到資料(isEmptyObject)的這件事情是false means 有比對到資料，就導到另一頁
							if( jQuery.isEmptyObject(response_customer_data) == false ) {
								location.href = 'customer_management.jsp';
							}
							else {
								alert("註冊後登入失敗!");
							}
						},
						"json"
					);
					
					
				}
				else {
					$('#email_error_msg').text("所輸入帳號已存在，請重新輸入。");
					
				}
			}
		});		
	});
	
	function checkEmailPattern(email){
		
		var emailRule = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
// 		//validate ok or not
		if(email.length > 0 && email.search(emailRule) == -1){
			
			$("#email_error_msg").text("請輸入正確電子郵件格式，例:aaa@gmail.com");
			return false;
		}
	}	

	function checkPswdPatern(pswd){
		
		//var pswdRule = /^(?=.*[^a-zA-Z0-9])(?=.*[A-Z,a-z])(?=.*\d).{8,12}$/;
		var pswdRule = /^[^\s](?=.*\d)(?=.*[A-Z])(?=.*[a-z]).{6,30}[^\s]$/;
		// (?=.*[a-z]) 的 .*[a-z] 就是說右邊的文字中一定要出現一個小寫字母
		//(?=.*[A-Z]) 的 .*[A-Z] 就是說右邊的文字中一定要出現一個大小字母，
		//.*\d 就是說右邊的文字中一定要出現一個數字符號
		//最後才會比對 .{8,12} 也就是說比對字串的長度必須在 8 ~ 12 個字的任意字元。
		if(pswd.search(pswdRule) == -1){
			$("#member_password_error_msg").text("請輸入符合格式之密碼");
			return false;
		}
	}
	function checkPhonePattern(phone) {
		var phone_rule = /^\d+$/;
		if (phone_rule.test(phone) == false) {  
	  		$("#real_phone_error_msg").text("您輸入的電話號碼不正確!");
	  		return false;
		}  
	}  
	
	function checkAddressPattern(full_address) {
		$("#full_addr_error_msg").text("");
		var full_address_array = full_address.split(",");
		for(var i = 0; i < full_address_array.length; i++) {
			//console.log(full_address_array[i].length);
			if(full_address_array[i].length == 0) {
				$("#full_addr_error_msg").text("請輸入完整地址");
				return false;
			}
		}
	}
	
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
	  
	$(document).ready(function(){
		$('#container').twzipcode({
            css:['css county form-control','css district form-control','css zipcode form-control']
    	});
		
	});

	
</script>
</html>