<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/clean-blog.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="../css/jquery.fancybox.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"
	charset="utf-8"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/js/jquerysession.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mycart.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/js/clean-blog.min.js"></script>
<style>
.vertical-menu {
	width: 250px;
	/*     margin-left:250px; */
	margin-top: 150px;
	/*     display:inline-block; */
}

.vertical-menu a {
	background-color: #eee;
	color: black;
	display: block;
	padding: 12px;
	text-decoration: none;
}

.vertical-menu a:hover {
	background-color: #ccc;
	cursor: pointer;
	text-decoration: none;
}

.vertical-menu a.active {
	background-color: #888888;
	color: white;
}

img {
	width: 100%;
}

.colorImg {
	margin: 5px;
}


.dialogRegister-form input {
	width: 35px;
}

.dialogLogin-form input {
	width: 35px;
}

label, input {
	display: block;
}

input.text {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 25px;
	display: inline-block;
}

/* h1 { */
/* 	font-size: 1.2em; */
/* 	margin: .6em 0; */
/* } */
.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}

img.displayImg {
	/* 	display:block; */
	height: 100%;
	width: 100%;
}
</style>
</head>
<body>
	<c:set var="context" value="${pageContext.request.contextPath}" />
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
				href="/WebsiteV1.3/indexTemplate.jsp">首頁</a> <a class="navbar-brand"
				href="${context}/Search/search.jsp">產品</a> <a class="navbar-brand"
				href="${context}/memberLounge.jsp"><c:if
					test="${user == 'authenticated'}">會員專區</c:if></a>
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

	<!-- /.container --> </nav>

	<header class="intro-header">
	<div class="container" style="margin-bottom: 100px"></div>
	</header>

	<div style="position: fixed" draggable="true" id="dragme">
		<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span
			class="badge badge-notify my-cart-badge"></span></span>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="vertical-menu">
					<div class="side">
						<a name="middle" class="active">上身類</a> <a name="bottom">短袖印花T恤</a>
						<a name="bottom">POLO衫</a> <a name="bottom">家居服</a>
					</div>
					<div class="side">
						<a name="middle" class="active">襯衫類</a> <a name="bottom">休閒襯衫</a>
						<a name="bottom">商務襯衫</a> <a name="bottom">法蘭絨襯衫</a>
					</div>
					<div class="side">
						<a name="middle" class="active">針織衫</a> <a name="bottom">美麗諾羊毛</a>
					</div>
					<div class="side">
						<a name="middle" class="active">外套類</a> <a name="bottom">休閒外套</a>
						<a name="bottom">風衣</a> <a name="bottom">羽絨系列</a>
					</div>
					<div class="side">
						<a name="middle" class="active">褲裝裙裝</a> <a name="bottom">牛仔褲</a>
						<a name="bottom">束口褲</a> <a name="bottom">裙裝洋裝</a>
					</div>
					<div class="side">
						<a name="middle" class="active">內著類</a> <a name="bottom">清涼系列</a>
						<a name="bottom">襪子</a>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div id="outter">
					<jsp:include page="/util/navbar.jsp"></jsp:include>
					<img src="${pageContext.request.contextPath}/img/women.jpg" />
					<div id="display"></div>
					<div id="imgDiv" style="text-align: center;">
						<img id="img1" src="../img/ajax-loader.gif" />
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal login/register  -->
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
										<label> <input type="radio" name="gender" value="male"
											id="genderM" />男
										</label> <label> <input type="radio" name="gender"
											value="female" id="genderF" />女
										</label>
									</div>
									<span id="spanRegister"></span>
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
					
	<script>
		$(function() {
			var val_top = "女";
			getClassTopData(val_top);

			$('input[name="searcher"]').keydown(function() {
				search(event)
			})
			
			$('a[name="bottom"]').click(function(){
				var val_bottom = $(this).text();
 				var val_middle = $(this).parent().children('a[name="middle"]').text();
 				getBottomData(val_top,val_middle,val_bottom);
			})
			
			function search(event) {
				var keyWord = $('input[name="searcher"]').val();
				if (event.which == 13) {
					//將關鍵字傳給Search.do，
					SearchKeyword = $('input[name="searcher"]').val();
 					location.href="Search.do?SearchKeyword="+SearchKeyword;
				}
			}

			function getClassTopData(value) {
				$.getJSON("CategorySearch.do", {
					"classTop" : value,
				}, function(data) {
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i, product) {
						content(product,docFragment);
					})
					$("#display").append(docFragment);
				})
			}
			
			function getBottomData(val_top,val_middle,val_bottom){
				$.getJSON("CategorySearch.do",{
					"classTop":val_top,"classMiddle":val_middle,"classBottom":val_bottom
				},function(data){
					$("#display").empty();
					var docFragment = $(document.createDocumentFragment());
					$.each(data, function(i,product){
						content(product,docFragment);
					})
					$("#display").append(docFragment);
				})
			}
			
			function content(product,docFragment){
				var productLi = $("<li></li>");

				var elementA = $('<a></a>');
				elementA.attr("href", '/vetement/productPages/'+product.productId + ".jsp");//連接柏瑜的網址

				var img = $("<img/>");
				img.attr("alt", product.productName);
				img.attr("title", product.productName);
				img.attr("src", "Image.do?productId="
						+ product.productId);
				img.addClass("productImage");
				elementA.append(img);

				var name = $("<p></p>");
				name.text(product.productName);
				name.addClass("productName");

				var price = $("<p></p>");
				price.text("NT$ " + product.price);
				price.addClass("productPrice");

				productLi.append(elementA);
				productLi.append(name);
				productLi.append(price);

				docFragment.append(productLi);
			}
			

			$('#img1').hide();
			// 			$(document).ajaxStart(function(){
			// 				$('#img1').show(500);
			// 			}).ajaxStop(function(){
			// 				$('#img1').hide(500);
			// 			})
			
			var goToCartIcon = function($addTocartBtn){
			    
				
			    var $cartIcon = $(".my-cart-icon");
			
			   var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
//						  console.log ($addTocartBtn.data("image"));

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
                    		    url: ctx+"/LoginCheckServlet.do",
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
				    		  cancelButtonText: 'No, cancel!',
				    		  confirmButtonClass: 'btn btn-success',
				    		  cancelButtonClass: 'btn btn-danger',
				    	}  

                           ,function(isConfirm){
				    			if(isConfirm){
				                    $.ajax({
		                    		    type: "POST",
		                    		    url: "/vetement/ProductBack/Checkout.do",
			                    		    success: function() {
			                    		    	window.location ="/vetement/ProductBack/ProductCheck.jsp";
			                    		    }
				                    })
				    			}}
				    		
				    	)}},	
				    		
				    clickOnAddToCart: function($addTocart){

				      goToCartIcon($addTocart);
				
				    }
			
				  }
                    $('.my-cart-btn').myCart(cartCart); 
                   
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
//                             console.log($('#spanPwd').text());
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
       				$.get(ctx+"/Logout.do", function(data) {
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
       				$.post(ctx+"/LoginNew.do", data, function(data) {
       				
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
//        				height: 450,
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
       				//height: 450,
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
		})
	</script>
</body>
</html>