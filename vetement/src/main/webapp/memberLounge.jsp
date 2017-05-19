<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, shrink-to-fit=no, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Member Lounge</title>
<link href="css/clean-blog.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="js/jquery-3.2.0.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="css/simple-sidebar.css" rel="stylesheet">
<style>
div span {
	display: inline-block;
	width: 35px;
	text-align: center;
}

/* .dialogRegister-form input { */
/*     width: 35px; */
/* } */

/* .dialogLogin-form input { */
/*     width: 35px; */
/* } */

/* label, input { */
/* 	display: block; */
/* } */

/* input.text { */
/* 	margin-bottom: 12px; */
/* 	width: 95%; */
/* 	padding: .4em; */
/* } */

/* fieldset { */
/* 	padding: 0; */
/* 	border: 0; */
/* 	margin-top: 25px; */
/* 	display: inline-block; */
/* } */
h1 {
	font-size: 1.2em;
	margin: .6em 0;
}


h1#a {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}

img.displayImg {
	height: 40px;
	width: 40px;
}
</style>

</head>

<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
	
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a style="opacity: 1; color: black;" class="navbar-brand"
					href="indexTemplate.jsp"><p>首頁</p></a>
					 <a class="navbar-brand" href="${context}/Search/search.jsp"><p>產品</p></a> 	
					 <a class="navbar-brand" href="memberLounge.jsp">
					 <c:if test="${user == 'authenticated'}"><p class="text-danger">會員專區</p></c:if></a> 
					 <a class="navbar-brand" href="aboutUs.jsp"><p>關於我們</p></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="glyphicon glyphicon-user">${sName}<c:if
								test="${user != 'authenticated'}">訪客</c:if></a></li>
					<li id="login-user"><a href="#">登入</a></li>
					<li id="register-user"><a href="#">註冊</a></li>
					<li id="logout"><a href="#">登出</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<header class="intro-header">
		<div class="container" style="margin-bottom: 100px"></div>
	</header>

	<div id="dialogLogin-form" title="user login">
		<p class="validateTips">All form fields are required.</p>

		<form id="loginForm" class="form-horizontal">
			<div class="form-group">
				<label for="email" class="col-lg-2 control-label">電子郵件</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="email" id="email2" name="email2" class="form-control"
							placeholder="請輸入電子郵件"> <span id="spanEmail"></span>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-lg-2 control-label">密碼</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="password" id="password2" name="password2"
							class="form-control" placeholder="請輸入密碼"> <span
							id="spanPwd"></span>
					</div>
				</div>
			</div>

			<div class="checkbox">
				<label for="checkbox"><input id="rm" name="rm"
					type="checkbox" value="true">記得我</label>
			</div>

			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="submit" id="buttonLogin" class="btn btn-primary">登入</button>
					<div id="messageLogin"></div>
				</div>

			</div>
		</form>
	</div>

	<div id="dialogRegister-form" title="Register New User">
		<p class="validateTips">All form fields are required.</p>

		<form id="registerForm" class="form-horizontal">
			<div class="form-group">
				<label for="name" class="col-lg-2 control-label">姓名</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="text" id="name" name="name" class="form-control"
							placeholder="請輸入姓名">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-lg-2 control-label">電子郵件</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="email" id="email1" name="email1" class="form-control"
							placeholder="請輸入電子郵件">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-lg-2 control-label">密碼</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="password" id="password1" name="password1"
							class="form-control" placeholder="請輸入密碼">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-lg-2 control-label">地址</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="text" id="address" name="address"
							class="form-control" placeholder="請輸入地址">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="phoneno" class="col-lg-2 control-label">電話</label>
				<div class="col-lg-10">
					<div class="input-group">
						<input type="text" id="phoneno" name="phoneno"
							class="form-control" placeholder="請輸入電話">
					</div>
					<span id="spanRegister2"></span>
				</div>
			</div>

			<div class="form-group">
				<label for="gender" class="col-lg-2 control-label">性別</label>
				<div class="col-lg-10">
					<div class="input-group">
						<label> <input type="radio" name="gender" value="male"
							id="genderM" />男
						</label> <label> <input type="radio" name="gender" value="female"
							id="genderF" />女
						</label>
					</div>
					<span id="spanRegister"></span>
				</div>
			</div>


			<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
					<button type="submit" id="buttonRegister" class="btn btn-primary">註冊</button>
					<div id="messageRegister"></div>
				</div>

			</div>
		</form>
	</div>
	<div id="dialogOrderDetail-form" title="order detail">

		<table id="orderDetailTable" class="table table-bordered table-hover">
			<thead>
				<tr>
					<td>明細編號</td>
					<td>產品名</td>
					<td>尺寸</td>
					<td>顏色</td>
					<td>數量</td>
					<td>原價</td>
					<td>折價</td>
					<td>總價</td>
					<td>產品圖</td>
					<td>評分</td>
				</tr>
			</thead>
			<tbody>

			</tbody>


		</table>



	</div>



	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="#"> placeholder </a></li>
				<li><a href="#">訂單歷史</a></li>
				<li><a href="#">會員資料</a></li>
				<li><a href="#">客戶服務</a></li>
				<li><a href="#">信箱</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<!-- 每頁不同的內容從這裡開始 -->
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="jumbotron">

							<div class="row">

								<div class="col-sm-12" id="mainDiv"></div>
							</div>
							<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle
								Menu</a>
							<!-- 每頁不同的內容到這裡結束 -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="js/jquerysession.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.mycart.js"></script>
	<script src="js/clean-blog.min.js"></script>
	<script>
	$(function() {
		
		if (!checkAuth()){
			window.location.replace("indexTemplate.jsp");
		}
		$("#menu-toggle").click(function(e) {
	        e.preventDefault();
	        $("#wrapper").toggleClass("toggled");
	    });
		
		if (localStorage.chkbx && localStorage.chkbx != '') {
            $('#rm').attr('checked', 'checked');
            $('#email2').val(localStorage.email2);
            $('#password2').val(localStorage.password2);
        } else {
            $('#rm').removeAttr('checked');
            $('#email2').val('');
            $('#password2').val('');
        }
      
        $('#rm').on('click',function() {

            if ($('#rm').is(':checked')) {
                // save username and password
               
                 $('#spanEmail').text($('#email2').val()).hide();
                 $('#spanPwd').text($('#password2').val()).hide();
                 console.log($('#spanPwd').text());
                localStorage.email2 = $('#spanEmail').text();
                localStorage.password2 =$('#spanPwd').text();
                localStorage.chkbx = $('#rm').val();
            } else {
                localStorage.email2 = '';
                localStorage.password2 = '';
                localStorage.chkbx = '';
            }
        });		
	
		function checkAuth() {
		    var logged = (function() {
		        var isLogged = null;
		        $.ajax({
		            'async': false,
		            'global': false,
		            'url': 'LoginCheckServlet.do',
		            'success': function(resp) {
		                isLogged = (resp === "1");
		            }
		        });
		        return isLogged;
		    })();
		    return logged;
		}
		

	
		
		if (localStorage.chkbx && localStorage.chkbx != '') {
            $('#rm').attr('checked', 'checked');
            $('#email2').val(localStorage.email2);
            $('#password2').val(localStorage.password2);
        } else {
            $('#rm').removeAttr('checked');
            $('#email2').val('');
            $('#password2').val('');
        }
      

        $('#rm').on('click',function() {

            if ($('#rm').is(':checked')) {
                // save username and password
               
                 $('#spanEmail').text($('#email2').val()).hide();
                 $('#spanPwd').text($('#password2').val()).hide();
                 console.log($('#spanPwd').text());
                localStorage.email2 = $('#spanEmail').text();
                localStorage.password2 =$('#spanPwd').text();
                localStorage.chkbx = $('#rm').val();
            } else {
                localStorage.email2 = '';
                localStorage.password2 = '';
                localStorage.chkbx = '';
            }
        });
		 $('#buttonLogin').hide();
         $('#buttonRegister').hide();
		$('#logout').click(function() {
			$.get("Logout.do", function(data) {
				location.reload();
			});
		})
		
		<!-- login/logout-->
		
		var dialog, formRegister, formLogin, email2 = $("#email2"), email1 = $("#email1"),password2 = $("#password2"), password1 = $("#password1"), name = $("#name")
		,addr = $("#address"),phoneno = $("#phoneno"),genderM = $('#genderM'), genderF = $('#genderF'),
		emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
		allFieldsLogin = $([]).add(email2).add(password2),
		tips = $( ".validateTips" ),
		allFieldsRegister = $([]).add(name).add(email1).add(password1).add(addr).add(phoneno).add(genderM).add(genderF);
		
		function updateTips( t ) {
		      tips
		        .text( t )
		        .addClass( "ui-state-highlight" );
		      setTimeout(function() {
		        tips.removeClass( "ui-state-highlight", 1500 );
		      }, 500 );
		    }
		
		function checkLength( o, n, min, max ) {
		      if ( o.val().length > max || o.val().length < min ) {
		        o.addClass( "ui-state-error" );
		        updateTips( "Length of " + n + " must be between " +
		          min + " and " + max + "." );
		        return false;
		      } else {
		        return true;
		      }
		    }
		
		function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }

		function loginUser() {

			var valid = true;
		      allFieldsLogin.removeClass( "ui-state-error" );
		 
		      valid = valid && checkLength( email2, "email", 6, 80 );
		      valid = valid && checkLength( password2, "password", 3, 16 );
		
		      valid = valid && checkRegexp( email2, emailRegex, "eg. ui@jquery.com" );
		      valid = valid && checkRegexp( password2, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
			
			event.preventDefault();
			if (valid) {
			var data = $('#loginForm').serialize();
			$.post("LoginNew.do", data, function(data) {
			
				if (data==''){
					
					location.reload();
				}
				else if (data.substring(0, 2) != "We") {
					$('#spanPwd').html(data);
				} 						
				
				else {
					$('#spanPwd').empty();

					dialogLogin.dialog("close");
					location.reload();
				}
			})
			}

			return valid;
		}
		
		function registerUser() {
			var valid = true;
			 allFieldsRegister.removeClass( "ui-state-error" );
			  
		 	  valid = valid && checkLength( name, "name", 3, 80 );
		      valid = valid && checkLength( email1, "email", 6, 80 );
		      valid = valid && checkLength( password1, "password", 3, 16 );
		      
		      valid = valid && checkLength( addr, "address", 3, 50 );
		      valid = valid && checkLength( phoneno, "phone #", 3, 16 );
		
		      valid = valid && checkRegexp( email1, emailRegex, "eg. ui@jquery.com" );
		      valid = valid && checkRegexp( password1, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
		      valid = valid && checkRegexp(phoneno,/^([0-9])+$/,"phone no field only allow : 0-9");
		      
		    event.preventDefault();
		    if (valid) {
			var data = $('#registerForm').serialize();
			$.post("Register.do", data, function(data) {
				if (data.substring(0, 2) != "Su") {
					$('#spanRegister').html(data);
				} else {
					$('#spanRegister').empty();


						alert(data);
					dialogLogin.dialog("close");
					location.reload();
				}
			})
		    }
		    return valid;
		}

		dialogLogin = $("#dialogLogin-form").dialog({
			
			closeOnEscape: true,
		    open: function(event, ui) {
		        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();   //hide top right X button
		    },
			autoOpen : false,
//				height: 450,
				width : 390,
			modal : true,
			resizable : false,
			 buttons: {"Login": loginUser,
			        Cancel: function() {
			        	if ($('#rm').is(':checked')) {
			        	     $('#spanEmail').text($('#email2').val()).hide();
	                         $('#spanPwd').text($('#password2').val()).hide();
	                        localStorage.email2 = $('#spanEmail').text();
	                        localStorage.password2 =$('#spanPwd').text();
	                        localStorage.chkbx = $('#rm').val();
	                    } else {
	                        localStorage.email2 = '';
	                        localStorage.password2 = '';
	                        localStorage.chkbx = '';
	                    }
			          dialogLogin.dialog( "close" );
			        }
			      },
			close : function() {
				
				$('#spanPwd').empty();
				formLogin[0].reset();
				allFieldsLogin.removeClass("ui-state-error");
			}
		});
		
		dialogRegister = $("#dialogRegister-form").dialog({
			
			closeOnEscape: true,
		    open: function(event, ui) {
		        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
		    },
			autoOpen : false,
			height: 500,
			width : 390,
			modal : true,
			resizable : false,
			buttons : {
				"Register": registerUser,
		        Cancel:function (){
		            dialogRegister.dialog( "close" );
		        }
			},
			close : function() {
				$('#spanPwd').empty();
				formRegister[0].reset();
				allFieldsRegister.removeClass("ui-state-error");
				
			}
		});

		formRegister = dialogRegister.find("#registerForm").on("submit", function(event) {
			event.preventDefault();
			registerUser();
		});
		formLogin = dialogLogin.find("#loginForm").on("submit", function(event) {
			event.preventDefault();
			if ($('#rm').is(':checked')) {
        	     $('#spanEmail').text($('#email2').val()).hide();
                $('#spanPwd').text($('#password2').val()).hide();
               localStorage.email2 = $('#spanEmail').text();
               localStorage.password2 =$('#spanPwd').text();
               localStorage.chkbx = $('#rm').val();
           } else {
               localStorage.email2 = '';
               localStorage.password2 = '';
               localStorage.chkbx = '';
           }
			loginUser();
		});

		$("#login-user").button().on("click", function() {
			if (localStorage.chkbx != '') {
                $('#rm').attr('checked', 'checked');
                $('#email2').val(localStorage.email2);
                $('#password2').val(localStorage.password2);
            } else {
                $('#rm').removeAttr('checked');
                $('#email2').val('');
                $('#password2').val('');
            }
			dialogLogin.dialog("open").css('overflow', 'hidden');   //hides scroll bar
			$('.validateTips').text('All form fields are required.');
		});
		$("#register-user").button().on("click", function() {
			dialogRegister.dialog("open").css('overflow', 'hidden');;
			$('.validateTips').text('All form fields are required.');
		});
		<!-- login/logout-->
		
		//order detail dialog
				
       var dialog;
								
								dialogOrderDetail = $("#dialogOrderDetail-form").dialog({
									autoOpen : false,
									//height: 450,
									width : 600,
									modal : true,
									resizable : false,
									close : function() {
									}
								});
		//order detail dialog
		$('.sidebar-nav > li:eq(1)').click(function(){
			$('#mainDiv').empty();
		var table = $('<table></table>').attr('id','orderHistoryTable').addClass('table table-bordered table-hover');
		var thead = $('<thead></thead>');
		var tr = $('<tr></tr>');
		var th1 =$('<th></th>').text('訂單編號');
		var th2 =$('<th></th>').text('訂購日期');
		var th3 =$('<th></th>').text('地址');
		var th4 =$('<th></th>').text('總價');
		var tbody = $('<tbody></tbody>');
		tr.append([th1,th2,th3,th4]);
		thead.append(tr);
		table.append(thead);
		table.append(tbody);
		$('#mainDiv').append(table);
			loadOrderHistory();
		})
		
		 
		 function loadOrderHistory(){
			 if (checkAuth()){
			 $.ajax({
				    type: "get", 
				    url: "OrderHistoryServlet.do",
				    datatype: "json",
				    success: function (datas) {
				    	
				    	var tb = $('#orderHistoryTable>tbody');
						   var docFrag = $(document.createDocumentFragment());
						   tb.empty();
				        $.each(JSON.parse(datas),function(idx,order){
				        	   var idd = idx+1;
				        
							   var cell1 = $('<td></td>').text(order.ono);
							   var cell2 = $('<td></td>').text(order.orderDate);
							   var cell3 = $('<td></td>').text(order.deliveryAddr);
							   var cell4 = $('<td></td>').text(order.orderSum);
							   var row = $('<tr></tr>').attr('id',idd);
							   row.append([cell1,cell2,cell3,cell4]);

								row.on("click", function() {

									dialogOrderDetail.dialog("open");
									$.ajax({
									    type: "get", 
									    url: "OrderItemHistoryServlet.do",
									    datatype: "json",
									    data:{'ono':order.ono},
									    success: function (data) {
		                                    
									    	var tb1 = $('#orderDetailTable>tbody');
											   var docFrag1 = $(document.createDocumentFragment());
											   tb1.empty();
									        $.each(JSON.parse(data),function(idx,orderItem){
									        
									               var cell1 = $('<td></td>').text(orderItem.oino);
												   var cell2 = $('<td></td>').text(orderItem.pname);
												   var cell3 = $('<td></td>').text(orderItem.size);
												   var cell4 = $('<td></td>').text(orderItem.color);
												   var cell5 = $('<td></td>').text(orderItem.quantity);
												   var cell6 = $('<td></td>').text(orderItem.unitPriceO);
												   var cell7 = $('<td></td>').text(orderItem.unitPriceD);
												   var cell8 = $('<td></td>').text(orderItem.totalPrice);
												   var cell9 = $('<img></img>').attr("src","productImages/"+orderItem.pno).addClass('displayImg');
												   var link = $('<a></a>').attr('href','${context}/productPages/'+orderItem.pnoWithPage+'.jsp').text(Math.round(orderItem.score));				
                                                   var cell10 =$('<td></td>').append(link);
												   var row1 = $('<tr></tr>');
												   row1.append([cell1,cell2,cell3,cell4,,cell5,cell6,cell7,cell8,cell9,cell10]);
												   docFrag1.append(row1);
									        })
									        
									        tb1.append(docFrag1);
									    
									    },
									    
									    error: function (request, status, error) {
									        alert(request.responseText);
									    }
									    
									
									})
								});
		   
								 docFrag.append(row);  
	   });
				        tb.append(docFrag);
				    },
				   //add this error handler you'll get alert
				    error: function (request, status, error) {
				        alert(request.responseText);
				    }
				});	   
		   }
		}
	});
    </script>
</body>
</html>