<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Theme CSS -->
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="jquery.twzipcode.min.js" type="text/javascript"></script>
<style>
	.register {			
		font-family:Microsoft JhengHei;
		font-weight:bold;
		font-size:18px;
		position:absolute;
		top:10%;
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
	.register_form_title {
		font-size: 25px
	}
	#addr {
		width:335px;
	}	
	.register_all{
		background-color:oldlace;
	}
	
</style>
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
</head>
<body class=register_all>
<c:set var="context" value="${pageContext.request.contextPath}" />
	<nav id='header' class="navbar navbar-default navbar-custom navbar-fixed-top" ></nav>
	
	<div class="container">
		<div class="register">
		<!-- 要把資料新增(insert)到customer table裡 -->
			<span class="register_form_title">會員資料</span><br><br>
			<form>	
				<div>
					<label>姓名</label><br>
					<input type='text' id="member_name" name='member_name' value='' chi='姓名'>
					<div id="member_name_error_msg" class="error_msg"></div><br>
				</div>
				<div>
					<label>性別</label><br>
					<input type='radio' name="sex" value=1>男 
					<input type='radio' name="sex" value=0>女
					<input type='hidden' id="sex" name='sex' value='' chi='性別'>
					<div id="sex_error_msg" class="error_msg"></div> <br>
				</div>
				<div>
					<label>電子郵件</label><br>
					<input type='text' id="register_email" name='register_email' value='' chi='電子郵件'>
					<div id="register_email_error_msg" class="error_msg"></div><br>
				</div>
				<div>
					<label>密碼</label><br>
					<input type='password' id="member_password" name='member_password' value='' chi='密碼'><br>
					<div class='tip'>密碼長度:8-12字元、須包含數字與大小寫英文</div>
					<div id="member_password_error_msg" class="error_msg"></div><br>
				</div>
				<div>
					<label>密碼確認</label><br>
					<input type='password' id="confirm_password" name='confirm_password' value='' chi='密碼確認'>
					<div id="confirm_password_error_msg" class="error_msg"></div><br>
				</div>
				<div>
					<label>地址</label><br>
					<div id="addr_container"></div>
					<div>
						<input type='text' id="addr" name='addr' value=''>
					</div>
					<input type='hidden' id='full_addr' name='full_addr' value='' chi='地址'>
					<div id="full_addr_error_msg" class="error_msg"></div><br>
				</div>
				<div>
					<label>電話</label><br>
					<input type='text' id="phone_no" name='phone_no' value='' chi='電話'>
					<div id="phone_no_error_msg" class="error_msg"></div><br>
					<input id="register" type="button" name="register_btn" value="註冊">
				</div>	
			</form>		
		</div>
	</div>	
</body>
<script src="${context}/jsUtil/includeHeader.js"></script>
<script src="${context}/jsUtil/validation.js"></script>
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
	
	
	$(document).ready(function(){
		$('#addr_container').twzipcode({
            css:['county form-control','district form-control','zipcode form-control']
    	});
	});

	$('#register').click(function() {	//點了register button後要做的事如下	
		$.ajax({	//因為可能不會直接換頁，所以把輸入的資料傳到ajax，Servlet再去接ajax的資料
			url: '${pageContext.request.contextPath}/CustomerServlet?action=insert',
			type: 'POST',
			dataType: "json",
			data: {
				qq_name: $("#member_name").val(),
				qq_sex: $("[name='sex']:checked").val(),	//取有選取的radio btn的值
				qq_email: $("#register_email").val(),
				qq_member_password: $("#member_password").val(),
				qq_confirm_password: $("#confirm_password").val(),
				qq_addr: $("#full_addr").val(),
				qq_phone_no: $("#phone_no").val()
			},
			//如果驗證失敗(if)，會在送出之前(beforeSend)截斷(xhr.about())
			beforeSend : function(xhr){
				//就是false以後要幹嘛，false以後要繼續，所以要return ; field_array =  ["member_name", "sex", "email", "member_password", "addr", "phone_no"]	
				//validation_result 只可能是true或false
				var validation_result = inputFieldEmptyValidation( ["member_name", "sex", "register_email", "member_password","confirm_password", "phone_no"] ); 
				
				if(validation_result == false) {
					xhr.abort();
				}
				
				if($("#member_password").val() != $("#confirm_password").val()) {
					$('#confirm_password_error_msg').text("上方密碼與密碼確認不相同");
					xhr.abort();	
				}
				
				console.log(checkEmailPattern( $("#register_email").val()));
				
				if( checkEmailPattern( $("#register_email").val() ) == false) {
					$("#register_email_error_msg").text("請輸入正確電子郵件格式，例:aaa@gmail.com");
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
					//alert('成功新增' + response_count + "筆資料。");
					//alert("註冊成功!");
					swal({
						title: "註冊成功!",
						text: "",
						type: "success",
						showCancelButton: false,
						confirmButtonClass: "btn-success",
						confirmButtonText: "確認",
						closeOnConfirm: false
					},
					function(){
						$.post(
							"${pageContext.request.contextPath}/CustomerLoginServlet?action=login", 
							{ account: $("#register_email").val(), password: $("#confirm_password").val() },
							
							function(response_customer_data) {
								//console.log(response_customer_data);
								//送過去的e-mail和pswd送過去沒有比對到資料(isEmptyObject)的這件事情是false means 有比對到資料，就導到另一頁
								if( jQuery.isEmptyObject(response_customer_data) == false ) {
									location.href = '${pageContext.request.contextPath}/index.jsp';
								}
								else {
									alert("註冊後登入失敗!");
								}
							},
							"json"
						);						
					});
				}
				else {
					$('#register_email_error_msg').text("所輸入帳號已存在，請重新輸入。");
				}
			}
		});		
	});
	
</script>

</html>