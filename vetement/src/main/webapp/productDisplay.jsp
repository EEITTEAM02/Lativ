<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ProductDisplay</title>
<link href="css/clean-blog.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- <link rel="stylesheet" href="css/jquery.fancybox.min.css" /> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<style>
div span {
	display: inline-block;
	width: 35px;
	text-align: center;
}

/* .dialogRegister-form input { */
/* 	width: 35px; */
/* } */

/* .dialogLogin-form input { */
/* 	width: 35px; */
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


.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}


h1#a {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}

img.displayImg {
	/* 	display:block; */
 	height: 100%; 
 	width: 100%; 
}

.flex-container {
  padding: 0;
  margin: 0;
  list-style: none;
  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
   display: flex; 
   -webkit-flex-flow: row wrap; 
   justify-content: space-around; 
 
}

 .flex-item { 
   background: none; 
   padding: 5px; 
   width: 200px; 
   height: 150px; 
/*     margin-top: 100px;   */
   line-height: 10px; 
   color: black;  
   font-size: 1em; 
 } 

.wrapper {
  display: -webkit-box;
  display: -moz-box;
  display: -ms-flexbox;
  display: -webkit-flex;
  display: flex;
  -webkit-flex-flow: row wrap;
  flex-flow: row wrap;
  font-weight: bold;
  text-align: center;
}

.wrapper > * {
   padding: 10px; 
  flex: 1 100%;
}
 
  .jumbotron{ 
 background:rgba(1,1,1,0.05) !important; 
 } 

.carousel-control,
.item {
    border-radius: 4px;
}
</style>
<script>

</script>


</head>

<body >
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
					href="indexTemplate.jsp">首頁</a> <a class="navbar-brand"
					href="productDisplay.jsp">產品</a> <a class="navbar-brand"
					href="uploadProduct2.jsp">Modify Products</a> 									
					<a class="navbar-brand" href="memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a>
					<a class="navbar-brand" href="aboutUs.jsp">關於我們</a>	
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

	<header class="intro-header"
		>
		<div class="container" style="margin-bottom: 100px"></div>
	</header>

	
<div style="position:fixed" draggable="true" id='dragme' >
	<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span
		class="badge badge-notify my-cart-badge"></span></span>
</div>
	<div class="container">
		<div class="row">

			<div class="col-md-12">
				<div class="jumbotron" >
					

					<div id="dialogLogin-form" title="user login">
						<p class="validateTips">All form fields are required.</p>

						<form id="loginForm" class="form-horizontal">
							<div class="form-group">
								<label for="email" class="col-lg-2 control-label">電子郵件</label>
								<div class="col-lg-10">
									<div class="input-group">
										<input type="email" id="email2" name="email2"
											class="form-control" placeholder="請輸入電子郵件"><span
											id="spanEmail"></span>
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
										<input type="email" id="email1" name="email1"
											class="form-control" placeholder="請輸入電子郵件">
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
										<label>
                                           <input type="radio" name="gender" value="male" id="genderM"/>男
                                        </label>
                                        <label>
                                        <input type="radio" name="gender" value="female" id="genderF"/>女
                                        </label>
									</div><span id="spanRegister"></span>
								</div>
							</div>



							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="submit" id="buttonRegister"
										class="btn btn-primary">註冊</button>
									<div id="messageRegister"></div>
								</div>

							</div>
						</form>
					</div>
					<!-- 每頁不同的內容從這裡開始 -->
					<div class="row carousel-holder">

                    <div class="col-md-6">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <a><img class="slide-image" src="http://placehold.it/400x300" style="width:400px;height:300px;" alt=""></a>
                                </div>
                                <div class="item">
                                    <a><img class="slide-image" src="http://placehold.it/400x300" style="width:400px;height:300px; alt=""></a>
                                </div>
                                <div class="item">
                                    <a><img class="slide-image" src="http://placehold.it/400x300" style="width:400px;height:300px; alt=""></a>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
					
					<div class="row" style="margin:50px;">
						<div class="col-sm-3" id="leftSide" style="margin-top:30px;">
							<mark>特價</mark>
							<ul class="list-group">							
							</ul>
							<mark>類別</mark>
							<ul class="list-group">
								<li data-id="1" class="list-group-item active">女</li>
								<li data-id="2" class="list-group-item">男</li>
								<li data-id="3" class="list-group-item">兒童</li>
							</ul>
						</div>
						<div class="col-sm-9">
							<table id="productTable" class="table table-bordered table-hover">
								<thead>								
								</thead>
								<tbody>	
								<ul class="flex-container"> 		                            
                                </ul>						 
								</tbody>
							</table>
						</div>
					</div>
					<!-- 每頁不同的內容到這裡結束 -->
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				
			</div>
			<div class="col-md-4">
				
			</div>
			<div class="col-md-4">
				
			</div>
		</div>

		<!-- Site footer -->
		<footer class="footer">
		<p>&copy; IIIEDU</p>
		</footer>

	</div>
<script type="text/javascript" src="js/jquery-3.2.0.min.js" charset="utf-8"></script>
<script src="js/jquerysession.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.mycart.js"></script>
<!-- <script src="js/jquery.fancybox.min.js"></script> -->
<script src="js/sweetalert.min.js"></script>
<script src="js/clean-blog.min.js"></script>
	<script>
	
		$(function() {
            var discountList = $('ul.list-group:eq(0)');
            var ctx = "<%=request.getContextPath()%>";
            $.ajax({
            	'url':'GetDiscountCat.do',
            	'success':function(data){
            		
            	var length = Object.keys(data).length;
            	for (var i=1;i<=length;i++){
            		var li = $('<li></li>').attr('data-id',i+3).addClass('list-group-item').text(data[i]);
         			discountList.append(li);
            	}
                if (window.location.search){
                    id = window.location.search.substring(1);	
                }
                else{
                	id = 1; 
                }
                if(id<=3){
                	loadProduct(id);
                    getCarouselItems(id);           
                $('ul.list-group>li').removeClass('active');
                $('ul.list-group:eq(1)>li[data-id="' + id + '"]').addClass('active');
                }
                else{
                	loadDiscountProduct(id);
                	getCarouselItems(1);
                	 $('ul.list-group>li').removeClass('active');
                     $('ul.list-group:eq(0)>li[data-id="' + id + '"]').addClass('active');
                }
            	}
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
//                      console.log($('#spanPwd').text());
                    localStorage.email2 = $('#spanEmail').text();
                    localStorage.password2 =$('#spanPwd').text();
                    localStorage.chkbx = $('#rm').val();
                } else {
                    localStorage.email2 = '';
                    localStorage.password2 = '';
                    localStorage.chkbx = '';
                }
            });
			
			if(!checkAuth()){
		    	$('#dragme').hide();
		    }
		    else{
		    	$('#dragme').show();
		    }
			
			function getCarouselItems(id){
			$.ajax({
				url:'GetMostInStockProduct.do',
				data:{"id":id},
				success:function(data){
// 					console.log(data);
				var counter =0;
					$.each(data,function(idx,entity){
						$('.carousel-inner img:eq('+counter+')').attr('src','productImages/'+idx);
						$('.carousel-inner a:eq('+counter+')').attr('href',ctx+'/productPages/'+entity+'.jsp');								
						counter++;
					})
				
				}
			})
		}
					
			function drag_start(event) {
			    var style = window.getComputedStyle(event.target, null);
			    event.dataTransfer.setData("text/plain",
			    (parseInt(style.getPropertyValue("left"),10) - event.clientX) + ',' + (parseInt(style.getPropertyValue("top"),10) - event.clientY));
			} 

			function drop(event) {
			    var offset = event.dataTransfer.getData("text/plain").split(',');
			    var dm = document.getElementById('dragme');
			    dm.style.left = (event.clientX + parseInt(offset[0],10)) + 'px';
			    dm.style.top = (event.clientY + parseInt(offset[1],10)) + 'px';
			    event.preventDefault();
			    return false;
			}

			function drag_over(event) {
			    event.preventDefault();
			    return false;
			} 

			var dm = document.getElementById('dragme');
			dm.addEventListener('dragstart',drag_start,false);
			document.body.addEventListener('dragover',drag_over,false);
			document.body.addEventListener('drop',drop,false); 
			
            
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

			<!-- login/logout-->
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
//                      console.log($('#spanPwd').text());
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
			        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
			    },
			
				autoOpen : false,
// 				height: 450,
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
			
			
			 $('ul.list-group:eq(1)').on('click','li',function(){	
				   var id = $(this).data('id');
				   loadProduct(id);
				   getCarouselItems(id);
				   $('ul.list-group >li').removeClass('active');
 				   $('ul.list-group:eq(1) > li[data-id="' + id + '"]').addClass('active');
 				   
			   })
			   
			   $('ul.list-group:eq(0)').on('click','li',function(){	
				   var id = $(this).data('id');
				   loadDiscountProduct(id);				  
 				   $('ul.list-group > li').removeClass('active');
				   $('ul.list-group:eq(0) > li[data-id="' + id + '"]').addClass('active');
				  
			   })
			   		   
			   function loadDiscountProduct(id){
				 
				   $.getJSON('GetDiscountProduct.do',{'id':id},function(datas){
					   
					   var flexContainer = $('.flex-container');
					   var docFrag = $(document.createDocumentFragment());
					   flexContainer.empty();
					   var counter =0;
                     var len = datas.length;
                     var remainder = len%3;
					   $.each(datas,function(idx,product){
						   counter++;
					       
						   var no =idx+1;
						   var li = $('<li></li>').addClass("flex-item wrapper");
						   if (no>3){
							   li.css('margin-top','100px');
						   }
						   
						   var a =$('<a></a>').attr("href","productPages/"+product.pno+".jsp"+"?"+id);
						   var img = $('<img></img>').attr("src","productImages/"+product.pno).addClass('displayImg');
					       a.append(img);
						   var figcap1 = $('<figcaption></figcaption>').text(product.name);
						   var figcap2 = $('<figcaption></figcaption>').text(product.price);
					       li.append(a).append(figcap1).append(figcap2);
                         docFrag.append(li);
                         
                         if (counter == len && remainder == 1){
                      	   var li2 = $('<li></li>').addClass("flex-item wrapper");	
                      	   var li3 = $('<li></li>').addClass("flex-item wrapper");	
                      	   docFrag.append(li2).append(li3);
                         }
                         else if (counter == len && remainder == 2){
                      	   var li2 = $('<li></li>').addClass("flex-item wrapper");
                      	   docFrag.append(li2);
                         }


					   });
					   flexContainer.append(docFrag);

					   
					   var goToCartIcon = function($addTocartBtn){
						    
							
						    var $cartIcon = $(".my-cart-icon");
						
						   var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
//							  console.log ($addTocartBtn.data("image"));

						    $addTocartBtn.prepend($image);
						
						    var position = $cartIcon.position();
						
						    $image.animate({
						
						      top: position.top,

						      left: position.left
						
						    }, 1500 , "linear", function() {
						
						      $image.remove();
						
						    });
						
						  }
						
					   var cartCart = {
							
						    classCartIcon: 'my-cart-icon',
						
						    classCartBadge: 'my-cart-badge',
						
						    affixCartIcon: true,
						    
						    showCheckoutModal: true,
						        
						    classProductRemove: 'my-product-remove',
						 
						    checkoutCart: function(products) {
						    	var flag;
						    	var list;
		    	
						    	 $.ajax({
		                    		    type: "GET",
		                    		    url: "LoginCheckServlet.do",
                                     async:false,
		                    		    success: function(responseText) {
		                    		    	if (responseText==="oops"){
						                        flag=false;
						                    	$("#dialogLogin-form").dialog('open');
						                    }
						                    else{
						                    	flag=true;
						                    	list = new Array();
						                    	 $.each(products, function(){
						                    		var productInfo = this;
						                    		list.push(productInfo.id);
						                    		list.push(productInfo.quantity);

						                    		
				                              });
						                    }
		                    		        
		                    		    }
		                    		})

						    	if(flag){
						    	swal({
						    		  title: "Are you sure?",
						    		  text: "No turning back!",
						    		  type: "warning",
						    		  showCancelButton: true,
						    		  confirmButtonColor: "#DD6B55",
						    		  confirmButtonText: "Yes, proceed to checkout!",
						    		  closeOnConfirm: false,
//						    		 closeOnCancel: false,
						    		  cancelButtonText: 'No, cancel!',
						    		  confirmButtonClass: 'btn btn-success',
						    		  cancelButtonClass: 'btn btn-danger',
						    	}  
//						    		,function(isConfirm){
//						    			if(isConfirm){
//							                    $.ajax({
//					                    		    type: "POST",
//					                    		    url: "CartContentServlet.do",
//					                    		    contentType: "application/json", 
//					                    		    data: JSON.stringify(list),
//					                    		    success: function(response) {
//					                    		    	window.location.replace("checkoutCart.jsp");
//					                    		    }
//							                    })
				
						  
                                 ,function(isConfirm){
						    			if(isConfirm){
						                    $.ajax({
				                    		    type: "POST",
				                    		    url: "CheckoutWithDiscountServlet.do",
				                    		    contentType: "application/json", 
				                    		    data: JSON.stringify(list),
				                    		    success: function(response) {
				                    		    	window.location.replace("orderHistory.jsp");
				                    		    }
						                    })
						    			}}
						    		
						    	)}},	
						    		
						    clickOnAddToCart: function($addTocart){

						      goToCartIcon($addTocart);
						
						    }					
						  }
						
						  $('.my-cart-btn').myCart(cartCart,0);
				   })	   
			   }  
			   
			 function loadProduct(id){
						 
				   $.getJSON('Product.do',{'id':id},function(datas){
					   
					   var flexContainer = $('.flex-container');
 					   var docFrag = $(document.createDocumentFragment());
					   flexContainer.empty();
					   var counter =0;
                       var len = datas.length;
                       var remainder = len%3;
					   $.each(datas,function(idx,product){
						   counter++;
					       
						   var no =idx+1;
						   var li = $('<li></li>').addClass("flex-item wrapper");
						   if (no>3){
							   li.css('margin-top','100px');
						   }
						   
						   var a =$('<a></a>').attr("href","productPages/"+product.pno+".jsp"+"?"+id);
						   var img = $('<img></img>').attr("src","productImages/"+product.pno).addClass('displayImg');
					       a.append(img);
						   var figcap1 = $('<figcaption></figcaption>').text(product.name);
						   var figcap2 = $('<figcaption></figcaption>').text(product.price);
					       li.append(a).append(figcap1).append(figcap2);
                           docFrag.append(li);
                           
                           if (counter == len && remainder == 1){
                        	   var li2 = $('<li></li>').addClass("flex-item wrapper");	
                        	   var li3 = $('<li></li>').addClass("flex-item wrapper");	
                        	   docFrag.append(li2).append(li3);
                           }
                           else if (counter == len && remainder == 2){
                        	   var li2 = $('<li></li>').addClass("flex-item wrapper");
                        	   docFrag.append(li2);
                           }


					   });
 					   flexContainer.append(docFrag);

					   
					   var goToCartIcon = function($addTocartBtn){
						    
							
						    var $cartIcon = $(".my-cart-icon");
						
						   var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
// 							  console.log ($addTocartBtn.data("image"));

						    $addTocartBtn.prepend($image);
						
						    var position = $cartIcon.position();
						
						    $image.animate({
						
						      top: position.top,

						      left: position.left
						
						    }, 1500 , "linear", function() {
						
						      $image.remove();
						
						    });
						
						  }
						
					   var cartCart = {
							
						    classCartIcon: 'my-cart-icon',
						
						    classCartBadge: 'my-cart-badge',
						
						    affixCartIcon: true,
						    
						    showCheckoutModal: true,
						        
						    classProductRemove: 'my-product-remove',
						 
						    checkoutCart: function(products) {
						    	var flag;
						    	var list;
		    	
						    	 $.ajax({
		                    		    type: "GET",
		                    		    url: "LoginCheckServlet.do",
                                       async:false,
		                    		    success: function(responseText) {
		                    		    	if (responseText==="oops"){
						                        flag=false;
						                    	$("#dialogLogin-form").dialog('open');
						                    }
						                    else{
						                    	flag=true;
						                    	list = new Array();
						                    	 $.each(products, function(){
						                    		var productInfo = this;
						                    		list.push(productInfo.id);
						                    		list.push(productInfo.quantity);

						                    		
				                              });
						                    }
		                    		        
		                    		    }
		                    		})

						    	if(flag){
						    	swal({
						    		  title: "Are you sure?",
						    		  text: "No turning back!",
						    		  type: "warning",
						    		  showCancelButton: true,
						    		  confirmButtonColor: "#DD6B55",
						    		  confirmButtonText: "Yes, proceed to checkout!",
						    		  closeOnConfirm: false,
// 						    		 closeOnCancel: false,
						    		  cancelButtonText: 'No, cancel!',
						    		  confirmButtonClass: 'btn btn-success',
						    		  cancelButtonClass: 'btn btn-danger',
						    	}  
// 						    		,function(isConfirm){
// 						    			if(isConfirm){
// 							                    $.ajax({
// 					                    		    type: "POST",
// 					                    		    url: "CartContentServlet.do",
// 					                    		    contentType: "application/json", 
// 					                    		    data: JSON.stringify(list),
// 					                    		    success: function(response) {
// 					                    		    	window.location.replace("checkoutCart.jsp");
// 					                    		    }
// 							                    })
				
						  
                                   ,function(isConfirm){
						    			if(isConfirm){
						                    $.ajax({
				                    		    type: "POST",
				                    		    url: "CheckoutWithDiscountServlet.do",
				                    		    contentType: "application/json", 
				                    		    data: JSON.stringify(list),
				                    		    success: function(response) {
				                    		    	window.location.replace("orderHistory.jsp");
				                    		    }
						                    })
						    			}}
						    		
						    	)}},	
						    		
						    clickOnAddToCart: function($addTocart){

						      goToCartIcon($addTocart);
						
						    }					
						  }
						
						  $('.my-cart-btn').myCart(cartCart,0);
				   })	   
			   }
		});
		
	</script>
</body>
</html>
