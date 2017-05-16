//驗證空值
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
		//console.log(chinese_field_name + "長度: " + field_length);
		if(field_length == 0) {	//輸入字元長度為0的時候
			$("#" + field + "_error_msg").text(chinese_field_name + "必須輸入");
			error_count++; //當1個輸入欄位的輸入字元長度是0，error_count就加1(就是醜1)，換句話說1個醜1就是一個欄位沒有輸入，醜2就是2個欄位沒有輸入
		}
		//console.log("error_count 此時等於: " + error_count);
	}
	
	if(error_count > 0) return false; //當有醜1以上(包含醜1)出現，就不要送出
}
	
function checkEmailPattern(email){
	var emailRule = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
 	//validate ok or not
	if(email.length > 0 && email.search(emailRule) == -1){
		$("#email_error_msg").text("請輸入正確電子郵件格式，例:aaa@gmail.com");
		return false;
	}
}	

function checkPswdPatern(pswd){
	//var pswdRule = /^(?=.*[^a-zA-Z0-9])(?=.*[A-Z,a-z])(?=.*\d).{8,12}$/;
	var pswdRule = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,12}$/;
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
  		$("#phone_no_error_msg").text("您輸入的電話號碼不正確");
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