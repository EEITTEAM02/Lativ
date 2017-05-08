<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<style>
.outter {
	width: 1000px;
	margin: auto;
	margin-top: 100px;
	border: 1px groove LightSteelBlue;
	border-radius: 15px;
}

.box {
	width: 700px;
	margin: auto;
	margin-top: 50px;
}

tr {
	height: 50px;
}

.info1 {
	width: 150px;
}

.span_info {
	padding-left: 15px;
}

.enter {
	width: 400px;
}

.div_button {
	width: 100px;
	margin: auto;
	margin-bottom: 50px;
	display: inline-block;
}

#bottom {
	width: 300px;
	margin-left: 700px;
}

.invoice_box {
	margin: 20px;
}

.invoice_span {
	padding-left: 15px;
}
</style>
</head>
<body>
	<div class="outter">
		<form action="CheckAll.do" id="check" method="POST">
			<div class="box">
				<table class="table table-striped">
					<tr>
						<td>超商取貨付款 - 7-11</td>
						<td><input type="radio" name="send" value="超商取貨付款 - 7-11" checked="checked"/></td>
						<td>7-11取貨付款，將酌收 50 元物流費。若單筆購物滿 1000 元，即享有免運費優惠。</td>
					</tr>
					<tr>
						<td>超商取貨付款 - CVS</td>
						<td><input type="radio" name="send" value="超商取貨付款 - CVS"/></td>
						<td>全家、萊爾富、OK取貨付款，將酌收 50 元物流費。若單筆購物滿 1000 元，即享有免運費優惠。</td>
					</tr>
					<tr>
						<td>宅配貨到付款</td>
						<td><input type="radio" name="send" value="宅配貨到付款"/></td>
						<td>宅配貨到付款，將酌收 50 元物流費。若單筆購物滿 1000
							元，即享有免運費優惠（「貨到付款」服務僅限台灣本島）。</td>
					</tr>
					<tr>
						<td>信用卡線上刷卡</td>
						<td><input type="radio" name="send" value="信用卡線上刷卡"/></td>
						<td>信用卡宅配到府，將酌收 50 元物流費。若單筆購物滿 1000 元，即享有免運費優惠。</td>
					</tr>
					<input type="hidden" name="send_way" value="${dealInformation.send_way}"/>
				</table>
			</div>
			<div class="box">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2"><span class="span_info">訂購人資訊</span></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="info1"><span class="span_info">姓名</span></td>
							<td><p name="name_send">Eka</p></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">手機</span></td>
							<td><p name="phone_send">0935689552</p></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">地址</span></td>
							<td><p name="addr_send">樂園</p></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">Email</span></td>
							<td><p name="mail_send">vu0ru843@pchome.com.tw</p></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box">
				<table class="table table-striped">
					<thead>
						<tr>
							<th colspan="2"><span class="span_info">收件人資訊</span></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2"><input type="checkbox" id="copy" />
							<spa>同訂購人資料</spa></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">姓名</span></td>
							<td><input type="text" class="enter" name="name_send" value="${dealInformation.name_send}"/></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">手機</span></td>
							<td><input type="text" class="enter" name="phone_send" value="${dealInformation.phone_send}"/></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">地址</span></td>
							<td><input type="text" class="enter" name="addr_send" value="${dealInformation.addr_send}"/></td>
						</tr>
						<tr>
							<td class="info1"><span class="span_info">Email</span></td>
							<td><input type="text" class="enter" name="mail_send" value="${dealInformation.mail_send}"/></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box">
				<div id="accordion">
					<span id="span1">捐贈發票<input type="radio" id="radio1" checked="checked"
						name="invoice" value="捐贈發票" /></span>
					<div>
						<span>捐贈單位</span> 
						<select name="help_selected">
							<option value="財團法人中華民國兒童福利聯盟文教基金會">財團法人中華民國兒童福利聯盟文教基金會</option>
							<option value="財團法人伊甸福利聯盟文教基金會">財團法人伊甸福利聯盟文教基金會</option>
							<option value="財團法人肝病防治學術基金會">財團法人肝病防治學術基金會</option>
							<option value="財團法人心路社會福利基金會">財團法人心路社會福利基金會</option>
						</select>
						<input type="hidden" name="help_institute" value="${dealInformation.help_selected}"/>
					</div>
					<span id="span2">二聯式電子發票<input type="radio" id="radio2"
						name="invoice" value="二聯式電子發票" /></span>
					<span>會員載具 由我們自動為您兌獎，中獎後主動通知</span>
					<span id="span3">三聯式紙本發票<input type="radio" id="radio3"
						name="invoice" value="三聯式紙本發票" /></span>
					<div>
						<div class="invoice_box">
							<div style="display: inline-block;">
								<span class="invoice_span">統一編號:</span>
							</div>
							<input type="text" size="20" /><span class="invoice_span">限數字</span>
						</div>
						<div class="invoice_box">
							<div style="display: inline-block;">
								<span class="invoice_span">發票抬頭:</span>
							</div>
							<input type="text" size="20" /><span class="invoice_span">限22個全形文字</span>
						</div>
					</div>
					<input type="hidden" name="invoice_way" value="${dealInformation.invoice}"/>
				</div>
			</div>
			<br />
			<div id="bottom">
				<div class="div_button">
					<input type="button" name="productCheck" class="btn btn-default btn-block" value="上一步" />
				</div>
				<div class="div_button">
					<input type="submit" name="buttonSubmit" class="btn btn-default btn-block" value="下一步" />
				</div>
			</div>
		</form>
	</div>
<!-- 	<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script> -->
	<script>
	$(function() {
		$("#accordion").accordion();

		$("span").each(function() {
			$(this).click(function() {
				var radio = $(this).children("input");
				radio.prop("checked", true);
			})
		})
		
		var name_send = $('input[name="name_send"]');
		var phone_send = $('input[name="phone_send"]');
		var addr_send = $('input[name="addr_send"]');
		var mail_send = $('input[name="mail_send"]');
		
		$("#copy").click(
			function() {
				if ($("#copy").prop("checked")) {
					name_send.val($('p[name="name_send"]').text());
					phone_send.val($('p[name="phone_send"]').text());
					addr_send.val($('p[name="addr_send"]').text());
					mail_send.val($('p[name="mail_send"]').text());
				} else {
					name_send.val("");
					phone_send.val("");
					addr_send.val("");
					mail_send.val("");
				}
			})
			
		$('input[name="productCheck"]').click(function(){
			location.href="ProductCheck.jsp";
		})
	
		var send_checked = $('input[name="send_way"]').val();
		$('input[value="'+send_checked+'"]').prop("checked",true);
		
		var invoice_checked = $('input[name="invoice_way"]').val();
		$('input[value="'+invoice_checked+'"]').prop("checked",true);
		
		var help_institute = $('input[name="help_institute"]').val();
		$('select option[value="'+help_institute+'"]').prop("selected",true);
		
		$('input[name="buttonSubmit"]').click(function(event){
			if(name_send.val()||phone_send.val()||addr_send.val()||mail_send.val()){
				event.preventDefault();
				var data = $('#check').serialize(); //將表格序列化後，送至CheckAll.do
				$.get("CheckAll.do",data,function(data){});
				location.href="CheckAll.jsp"
			}else{
				event.preventDefault();
				alert("請填入收件人資訊");
			}
		})
		
	});
	</script>
</body>
</html>