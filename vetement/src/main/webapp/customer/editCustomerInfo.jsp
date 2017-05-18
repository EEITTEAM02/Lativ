<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.cust.model.*"%>

<jsp:useBean id="login_customer_info" scope="session" type="com.cust.model.CustomerVO" />
<!-- id="list" 指的是CustomerServlet中: session.setAttribute("list", one_customer);   -->


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/customer/jquery.twzipcode.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<title>Insert title here</title>
<style>
	#update_submit {
		padding-left: 5px;
	}
	.edit_customer {			
		font-family:Microsoft JhengHei;
		font-weight:bold;
		font-size:18px
	}
	
	.error_msg {
		color:red;
		font-size:16px;
	}
		
	.zipcode {
	    background-color: #c00;
	    color: #fff;
	    width: 13%;
    	float: left;
	}
	.county {
	    background-color: #4169E1;
	    color: #fff;
	    width: 17%;
    	float: left;
	}
	.district {
	    background-color: #008000;
	    color: #fff;
	    width: 17%;
    	float: left;
	}
	#addr {
		width:335px;
	}	

</style>
</head>
<body>
	<div class="edit_customer">
		<form>
		<!--上面是更新資料後要submit到哪裡 -->
			<div>
				<label>姓名</label><br>
				<input id="member_name" type="text" name="customerName" value='<%=login_customer_info.getName()%>' chi='姓名'><br>
				<div id="member_name_error_msg" class="error_msg"></div><br>
			</div>
			<div>
				<label>性別</label><br>
				<input type="radio" name="sex" value=1>男 
				<input type="radio" name="sex" value=0>女 <br>
				<input type='hidden' id="sex" name='sex' value='' chi='性別'>
				<div id="sex_error_msg" class="error_msg"></div><br>
			</div>
			<div>
				<label>電子郵件</label><br>
				<input id="update_email" type="text" name="update_email" value='<%=login_customer_info.getMail()%>' chi='電子郵件'><br>
				<div id="update_email_error_msg" class="error_msg"></div><br>
			</div>
			
			<div>
				<label>地址</label><br>
				<div id="addr_container"></div><br><br>
				<div>
					<input type='text' id="addr" name='addr' value=''>
				</div>
				<input type='hidden' id='full_addr' name='full_addr' value='' chi='地址'>
				<div id="full_addr_error_msg" class="error_msg"></div><br>
			</div>
			<div>
				<label>電話</label><br>
				<input id="phone_no" type="text" name="tel" value='<%=login_customer_info.getTel()%>' chi='電話'><br>
				<div id="phone_no_error_msg" class="error_msg"></div><br>
			</div>
			<input id="update_submit" type="button" name="submit_btn" value="確認修改">
		</form>
	</div>
</body>
<script src="${pageContext.request.contextPath}/jsUtil/validation.js"></script>
<script>
	$('#update_submit').click(function(){
		$.ajax({
			url:'${pageContext.request.contextPath}/CustomerServlet?action=updateOne',
			type:'POST',
			dataType:'json',
			data:{
				new_name: $("#member_name").val(),
				new_sex: $("[name='sex']:checked").val(),	//取有選取的radio btn的值
				new_email: $("#update_email").val(),
				new_addr: $("#full_addr").val(),
				new_phone_no: $("#phone_no").val()
			},
			beforeSend: function(xhr){
				var validation_result = inputFieldEmptyValidation( ["member_name", "sex", "update_email", "phone_no"] ); 
				
				if(validation_result == false) {
					xhr.abort();
				}
				
				if( checkEmailPattern( $("#update_email").val() ) == false) {
					$("#update_email_error_msg").text("請輸入正確電子郵件格式，例:aaa@gmail.com");
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
			success:function(response_msg){
				if( response_msg == "1" ){
					swal({title: "更新成功", type: "success"})
				}
				else{
					swal({title: "更新失敗", type: "error"})
				}
			}
		})
	})

	$('input:radio[name="sex"]').change(function() {
	    if (this.checked) {	//this.checked意謂這個radio button被點到
			$('#sex').val(this.value);	//radio button的value就會寫到id=sex這個input的value裡面 
	    }
	});
	
// 	function beforeSend() {
// 		var error_count = 0;
// 		var validation_result = inputFieldEmptyValidation( ["member_name", "sex", "email", "phone_no"] ); 
		
// 		if(validation_result == false) {
// 			xhr.abort();
// 		}
		
// 		if( checkEmailPattern( $("#email").val() ) == false) {
// 			xhr.abort();
// 		}
		
// 		if( checkPhonePattern($("#phone_no").val() ) == false) {
// 			xhr.abort();
// 		}
		
// 		if( checkAddressPattern($("#full_addr").val() ) == false) {
// 			xhr.abort();
// 		}
		

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
	

	$('#addr_container').twzipcode({
        css:['county form-control','district form-control','zipcode form-control']
	});
	recieveOrigAddr();

	function recieveOrigAddr(){
		var full_addr = "<%=login_customer_info.getAddr_customer()%>"; 
		var full_address_array = full_addr.split(",");
		//console.log(full_address_array);
		$('#addr').val(full_address_array[3]);
		$('[name="zipcode"]').val(full_address_array[0]);
		$('[name="zipcode"]').trigger("click").trigger("blur");
	}
	
	
	//去掃gender(byName)，i=0,1，當i的值等於session中的getGender()的值[這邊有把boolean轉成string]，就點選它(checked)
	var genders = document.getElementsByName("sex");
// 	console.log(genders);
	for(var i=0;i<genders.length;i++){
		if(genders[i].value == <%=String.valueOf(login_customer_info.getGender())%>){
			genders[i].setAttribute("checked", true);
			if(<%=login_customer_info.getGender()%> == true) {
				$('#sex').val(1);
			}
			else {
				$('#sex').val(0);
			}
		}
	}
	
</script>

</html>