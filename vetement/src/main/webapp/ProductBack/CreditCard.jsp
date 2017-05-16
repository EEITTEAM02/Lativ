<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
<style>
.ui-progressbar {
	position: relative;
}

.progress-label {
	position: absolute;
	left: 50%;
	top: 4px;
	font-weight: bold;
	text-shadow: 1px 1px 0 #fff;
}

#outter {
	width: 500px;
	margin: auto;
	margin-top: 50px;
	border: 1px groove LightSteelBlue;
	border-radius: 15px;
	padding: 10px;
}

.content {
	font-size: 15px;
	font-family: Microsoft JhengHei;
	font-weight: bold;
	margin-top: 15px;
}

#creditImg {
	width: 400px;
}

.div_button {
	width: 100px;
	margin: auto;
	margin-top: 15px;
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		var input1=$('#input1'),input2=$('#input2'),input3=$('#input3'),input4=$('#input4'),input5=$('#input5');
		$('input[name="submit"]').click(function(){
			if(input1.val()&&input2.val()&&input3.val()&&input4.val()&&input5.val()){
				var progressbar = $("#progressbar"), progressLabel = $(".progress-label");
				progressbar.progressbar({
					value : false,
					change : function() {
						progressLabel.text(progressbar.progressbar("value") + "%");
					},
					complete : function() {
						progressLabel.text("Complete!");
						location.href="${pageContext.request.contextPath}/Search/search.jsp";
					}
				});

				function progress() {
					var val = progressbar.progressbar("value") || 0;
					progressbar.progressbar("value", val + 2);
					if (val < 99) {
						setTimeout(progress, 80);
					}
				}
				setTimeout(progress, 2000);
			}else{
				swal({title:"請填入資訊",type:"warning"});
			}
		})
	});
	</script>
</head>
<body>
	<form action="#">
		<div id="outter">
			<div class="content">
				<span>發卡組織:</span> <img id="creditImg"
					src="${pageContext.request.contextPath}/img/CreditCards.png" />
			</div>
			<div class="content">
				<span>信用卡卡號:</span> 
				<input id="input1" style="text-align: center;" type="text" size="5" />- 
				<input id="input2" style="text-align: center;" type="text" size="5" />- 
				<input id="input3" style="text-align: center;" type="text" size="5" />- 
				<input id="input4" style="text-align: center;" type="text" size="5" />
			</div>
			<div class="content">
				<span>到期月年:</span> <select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
				</select> <span>月</span> <select>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
					<option>21</option>
					<option>22</option>
					<option>23</option>
					<option>24</option>
					<option>25</option>
				</select> <span>年</span>
			</div>
			<div class="content">
				<span>卡片背面末3碼:</span> <input id="input5" style="text-align: center;" type="text"
					size="10" /> <img width="50"
					src="${pageContext.request.contextPath}/img/3numbers.jpg" />
			</div>
			<div class="div_button" style="text-align: center;">
				<input type="submit" name="submit" class="btn btn-default btn-block" />
			</div>
		</div>
	</form>
	<div style="width:90%;margin:auto;margin-top:100px;" id="progressbar"><div class="progress-label">Loading...</div></div>
</body>
</html>