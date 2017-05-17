<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.disc.model.*"%>  
<%@ page import="java.util.*"%> 
<%-- 
 	DiscountService discountSvc = new DiscountService();
 	List<DiscountVO> all_discount = discountSvc.getAllDiscount();
	
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<style>
	.outer_container {
		width: 1000px;
	    margin: 0 auto;
	    border: 1px solid black;
	    border-radius: 20px;
	    padding-top: 1%;
	    padding-bottom: 5%;
	    font-family: Microsoft Jhenghei;
    	font-size: 16px;
    	text-align:center
	}
	
	#toggle_type1{
	background-color:rgb(56, 153, 236);
	color:white	
	
	}
	
	.dialog {
/* 		border-style: solid;	 */
	}
	
	.edit_id{
		text-align:center;
	}
	
	.addNewRule{
		text-align:center;
		margin-bottom:5px
	}
	#add_new_rule{
		font-family:Microsoft Jhenghei;
	}
	.discountTitle{
		text-align:center;
		font-weight:bold;
		display:none
	}
	
	.half_toggle {
		padding: 15px;
		border-radius: 15px;
		cursor: pointer;
	}
	.add_discount_title{
		font-weight:bold;
	}
	.add_discount_th{
		padding-bottom: 25px;
	    padding-left: 14px;
	    text-align: center;
	    background-color: lightblue;
	    padding-top: 25px;
	    padding-right: 13px;
	}
	.add_discount_td{
		padding-left: 10px;
	    padding-top: 10px;
	    text-align: left;
	    padding-bottom: 10px;
	    padding-right: 10px;
	}
	.add_disc_th_left{
		border-bottom-left-radius: 7px;
	    border-top-left-radius: 7px;
	}
	.add_disc_th_right{
		border-bottom-right-radius: 7px;
	    border-top-right-radius: 7px;
	    padding-right: 50px;
	}
	.add_discount_td_right{
		padding-left: 25px;
	}
	.display_all_th{
		border: 1px solid;
		padding: 22px;
    	text-align: center;
	}
	

	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="outer_container">
		
		<div class='all'> <!-- 編號	折扣敘述	件數	折扣類型(根據search到的資料顯示是折數或是單件價錢	 -->
			<form>
				<div class='discountTitle'>折扣規則</div>
				<div class='addNewRule'>
<!-- 				<input id="add_new_rule" type="button" name="add_new_rule" value="新增規則"> -->
					<!-- "新增折扣"按鈕 -->
					<button id="add_new_rule" type="button" name="add_new_rule" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			 		 	新增折扣
					</button>
				</div>
				<table id="all_discount_table" style="margin: 0 auto;">
					<tr>
						<th class='display_all_th'>編號</th>
						<th class='display_all_th'>折扣名稱</th>
						<th class='display_all_th'>件數</th>
						<th class='display_all_th'>折扣類型</th>
						<th class='display_all_th'>Update</th>
						<th class='display_all_th'>Delete</th>
					</tr>
<%-- 						<c:forEach var="each_discountVO" items="${list}"> --%>
<!-- 						<tr> -->
<%-- 							<td>${each_discountVO.packageNo}</td> --%>
<%-- 							<td>${each_discountVO.descript}</td> --%>
<%-- 							<td>${each_discountVO.quantity_condition}</td> --%>
<%-- 							<td><c:choose> --%>
<%-- 							<c:when test="${each_discountVO.discount1 > 0}"> --%>
<%-- 								${each_discountVO.discount1} --%>
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
<%-- 								${each_discountVO.discount2} --%>
<%-- 							</c:otherwise> --%>
<%-- 							</c:choose></td> --%>
<%-- 							<td><input type='button' name='discount_update' value='修改' class='update' id="edit_${each_discountVO.packageNo}"></td> --%>
<%-- 		 					<td><input type='button' name='discount_delete' value='刪除' class='delete' id="delete_${each_discountVO.packageNo}"></td> --%>
<!-- 						</tr> -->
<%-- 						</c:forEach>	 --%>
				</table>
				
			</form>
		</div>
		
		<!--這邊是修改折扣規則的對話框 -->
		
		
		<!-- Modal -->
<!-- 		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"> -->
<!-- 			<div class="modal-dialog" role="document"> -->
<!-- 				<div class="modal-content"> -->
<!-- 					<div class="modal-header"> -->
<!-- 					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<!-- 					<h4 class="modal-title" id="myModalLabel">Modal title</h4> -->
<!-- 					</div> -->
<!-- 					<div class="modal-body"> -->
<!-- 					       aaaa -->
						<div id="edit_dialog" class='dialog edit_update' style="display:none">
							<form>
								<table>
									<tr>
										<th>折扣編號</th>
										<th>折扣敘述</th>
										<th>件數</th>
										<th>折扣類型-折數</th>
										<th>折扣類型-單件金額</th>
									</tr>
									<tr>
										<td class='edit_id' ><span id='discount_id' ></span></td>
										<td><input id='edit_discount_description' type='text' name=''></td>
										<td>
											<select id='edit_cloth_amount'></select>
										</td>
										<td><input id='edit_discount_type1' type='text' name=''></td>
										<td><input id='edit_discount_type2' type='text' name=''></td>
									</tr>
								</table>
								<input id="update_discount_btn" type="button" name="update_discount_btn" value="確認修改">
							</form>
						</div>
<!-- 					       aaaa -->
<!-- 					</div> -->
<!-- 					<div class="modal-footer"> -->
<!-- 						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
<!-- 						<button type="button" class="btn btn-primary">Save changes</button> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
		
		
		
		<!--這邊是新增折扣規則的對話框 -->
		<!-- Modal  -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
		    	<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title add_discount_title" id="myModalLabel">新增折扣規則</h4>
					</div>
		      		<div class="modal-body">
		        		<div id="add_dialog" class='dialog' style="display:none">
							<form>
								<table>
									<tr>
										<th class='add_discount_th add_disc_th_left'>折扣敘述</th>
										<th class='add_discount_th'>件數</th>
										<th class='add_discount_th add_disc_th_right'>
											<span id='toggle_type1' class='half_toggle'>折扣類型-%</span>
											<span id='toggle_type2' class='half_toggle'>折扣類型-$</span>
										</th>
									</tr>
									<tr>
										<td class='add_discount_td'><input id='add_discount_description' type='text' name=''></td>
										<td class='add_discount_td'>
											<select id='add_cloth_amount'></select>
										</td>
										<td class='add_discount_td add_discount_td_right'>
											<input id='add_discount_type1' class='add_discount' type='text' value='' placeholder='折數'>
											<input id='add_discount_type2' class='add_discount' type='text' value='' placeholder='單件金額' style="display:none">
										</td>
									</tr>
								</table>
<!-- 								<input id="new_discount_btn" type="button" name="new_discount_btn" value="確認新增"> -->
							</form>
						</div>
		      		</div>
		      		<div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button id="new_discount_btn" type="button" name="new_discount_btn" class="btn btn-primary">Save changes</button>
		      		</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$(function(){
		$.ajax({
			url:'${pageContext.request.contextPath}/DiscountServlet?action=getAll',
			type:'POST',
			dataType:'json',
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			success: function(response_all_discount_list) {
				console.log(response_all_discount_list);
			
				for(var i=0; i<response_all_discount_list.length; i++) {
					$('#all_discount_table').append('<tr id="discount_tr_' + i + '"></tr>').css({'border-bottom':'1px solid gray','padding':'10px'});
					$('#discount_tr_' + i).append('<td>' + response_all_discount_list[i].packageNo + '</td>');
					$('#discount_tr_' + i).append('<td>' + response_all_discount_list[i].descript + '</td>');
					$('#discount_tr_' + i).append('<td>' + response_all_discount_list[i].quantity_condition + '</td>');
					
					if(response_all_discount_list[i].discount1 > 0) {
						$('#discount_tr_' + i).append('<td>' + parseFloat(response_all_discount_list[i].discount1).toFixed(2) * 10 + '折</td>');
					}
					else {
						$('#discount_tr_' + i).append('<td>' + response_all_discount_list[i].discount2 + '/1件</td>');
					}
					
					$('#discount_tr_' + i).append('<td><input type="button" name= "discount_update" value="修改" class="update" id="edit_' + response_all_discount_list[i].packageNo + '"></td>');
					$('#discount_tr_' + i).append('<td><input type="button" name= "discount_delete" value="刪除" class="delete" id="delete_' + response_all_discount_list[i].packageNo + '"></td>');
// 					<!-- Button trigger modal -->
//					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
// 					  Launch demo modal
//					</button>
// 					<!-- "新增折扣"按鈕 -->
// 					<button id="add_new_rule" type="button" name="add_new_rule" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
// 			 		 	新增折扣
// 					</button>

				
				}
			}
		})
		
	});
	
	$('.half_toggle').click(function(){
		$('.half_toggle').css({'background-color':'rgb(173,216,230)','color':'black'});//兩顆都先變背景藍
		var half_toggle_id = this.id;
		var on_click_id = half_toggle_id.split("_")[1];
		
		$('#' + half_toggle_id).css({	
			'background-color':'rgb(56, 153, 236)',
			'color':'white'	
		});
		
		//輸入折扣或單件金額有兩個input，都先隱藏，點到的再show出來，看起來的效果會像點到哪個就出現哪個
		$('.add_discount').hide();
		$("#add_discount_"+ on_click_id).show();	
	});
	
	$('.half_toggle').mouseenter(function(){
		var half_toggle_id = this.id;
		var color = $('#' + half_toggle_id).css('background-color');//偵測mouseenter那顆的背景色

		if(color != "rgb(56, 153, 236)") {	//顏色不等於較深藍
			$('#' + half_toggle_id).css({
				'background-color': 'rgb(78, 183, 245)',	//就設為淺藍、白字
				'color':'white'
			});
		}
	});
	
	$('.half_toggle').mouseout(function(){
		var half_toggle_id = this.id;
		var color = $('#' + half_toggle_id).css('background-color');//偵測mouseout那顆的背景藍

		if(color == "rgb(78, 183, 245)") {	//顏色等於淺藍
			$('#' + half_toggle_id).css({
				'background-color':'rgb(173,216,230)',	//就設為底色藍、黑字
				'color':'black'
			});
		}
	});	

	//修改與新增折扣規則對話框中-自動生成件數
	for(var i=1; i<11; i++){
		$("#edit_cloth_amount").append($("<option value=" + i + ">" + i + "</option>"));
		$("#add_cloth_amount").append($("<option value=" + i + ">" + i + "</option>"));
	}
	
	//修改(編輯)折扣規則
	$(document).on('click', '.update', function(){	
		$('#edit_dialog').show();
		
		//修改button的id:edit_${each_discountVO.packageNo} ex:edit_10
		//this.id指的是update class中，點到的button的id
		//on_click_id 是利用split("_")拆開後取得的純的數字，用來傳到servlet當作參數(getOne才知道是要根據哪個packageId去get)
		var button_on_click_id = this.id
		//console.log(button_on_click_id)
		var on_click_id = button_on_click_id.split("_")[1];	//ex:edit_10 ; 陣列:0是edit，1是10
		//console.log(edit_id);
		
		$.ajax({
			url: '${pageContext.request.contextPath}/DiscountServlet?action=getOne',
			type: 'POST',
			dataType: 'json',
			data: {
				edit_id: on_click_id
			},
			
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			
			success: function(response_discount_data) {	//去接Ajax傳回來的結果
				console.log(response_discount_data);
				
				$('#discount_id').text( response_discount_data.packageNo );
				$('#edit_discount_description').val(response_discount_data.descript);
				$('#edit_cloth_amount option[value="' + response_discount_data.quantity_condition + '"]').prop('selected', true);
				$('#edit_discount_type1').val( response_discount_data.discount1.toFixed(2) * 10 );
				$('#edit_discount_type2').val(response_discount_data.discount2)
			}			
		})
	});

	//修改(確認修改)折扣規則
	$('#update_discount_btn').click(function(){
		$('#edit_dialog').hide();
		
		$.ajax({
			url: '${pageContext.request.contextPath}/DiscountServlet?action=updateData',
			type: 'POST',
			dataType: "json",
			data: {
				updated_no: $("#discount_id").text(),
				updated_description: $("#edit_discount_description").val(),
				updated_cloth_amount: $('#edit_cloth_amount').val(),
				updated_discount1:parseFloat( $('#edit_discount_type1').val() * 0.1 ),
				updated_discount2: parseFloat( $('#edit_discount_type2').val() * 1.0 )
			},
			success: function(response_count){
				//alert("已更新" + response_count + "筆資料");
				location.href = "${pageContext.request.contextPath}/mangerPage.jsp";
			}
		})
	})
	
	//新增規則
	$('#add_new_rule').click(function(){
		$('#add_dialog').show();
	});
	
	//新增規則(確定新增)
	$('#new_discount_btn').click(function(){
		$('#add_dialog').hide();
// 		console.log($('#add_discount_description').val());
// 		console.log($('#add_cloth_amount').val());
// 		console.log( $('#add_discount_type1').val() * 0.1 );
// 		console.log($('#add_discount_type2').val());
		
		if( $('#add_discount_type1').val().length == 0 ) {
			$('#add_discount_type1').val(0.0);
		}
		
		if( $('#add_discount_type2').val().length == 0 ) {
			$('#add_discount_type2').val(0.0);
		}
		
		$.ajax({
			url:'${pageContext.request.contextPath}/DiscountServlet?action=insert',
			type:'POST',
			datatype:'json',
			data:{
				dis_name: $('#add_discount_description').val(),
				dis_amount: $('#add_cloth_amount').val(),
				dis_type1: parseFloat( $('#add_discount_type1').val() * 0.1 ), 
				dis_type2: parseFloat( $('#add_discount_type2').val() )
			},
			//資料送出前的錯誤處理
// 			beforeSend: function(xhr){
// 					var input_result = inputValidation(["dis_name", "dis_amount", "dis_type1", "dis_type2"]);
// 					if(input_result == false){
// 						xhr.abort();
// 					}
// 			},
			//ajax發生錯誤時的錯誤處理
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			//成功時的處理 ; 會有一個alert的message
			success: function(response_count) {	//去接ajax傳回來的結果				
				//alert("成功新增" + response_count + "筆資料。");
				location.href = "${pageContext.request.contextPath}/mangerPage.jsp";
			}
		})
	});
		//刪除規則
	$(document).on('click', '.delete', function(){	
		var button_on_click_id = this.id
		var on_click_id = button_on_click_id.split("_")[1];
 		//console.log(delete_id);
		$.ajax({
			url: '${pageContext.request.contextPath}/DiscountServlet?action=delete',
			type: 'POST',
			dataType: 'json',
			data:{
				delete_id: on_click_id
			},
			error: function(xhr) {
				alert('Ajax request 發生錯誤');
			},
			success: function(response_delete_count){
				//alert("成功刪除" + response_delete_count + "筆資料。" );
				
				swal("刪除成功", "", "success")
				//location.href = "${pageContext.request.contextPath}/mangerPage.jsp";
			}
		})
	});	
	
	
</script>
</html>