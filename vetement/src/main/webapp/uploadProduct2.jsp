<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ProductUpload/Modify</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="js/jquery-3.2.0.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/jquerysession.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/bootstrap.min.js"></script>
<style>
div span {
    display: inline-block;
    width: 35px;
    text-align: center;
}

.dialogRegister-form input {
    width: 35px;
}

.dialogLogin-form input {
    width: 35px;
}
/* .ui-dialog-titlebar-close { */
/*     visibility: hidden; */
/* } */
@media ( min-width : 768px) {
	.navbar-nav {
		width: 100%;
		text-align: center;
	}
	.navbar-nav>li {
		float: none;
		display: inline-block;
	}
	.navbar-nav>li.navbar-right {
		float: right !important;
	}
}

h1#a {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}

h1.topRight {
	text-align: right;
	color: white;
	line-height: 3px;
}

h1 {
	font-size: 1.2em;
	margin: .6em 0;
}
</style>
</head>
<body>
<div class="container">
		<nav class="navbar navbar-inverse">
		<h1 class="topRight">${sName}</h1>
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">vetements</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav ">
					<li class="navbar-left "><a href="index.jsp">Home</a></li>
					<li class="navbar-left "><a href="productDisplay.jsp">Product</a></li>
					<li class="navbar-left active"><a href="#">UploadProduct</a></li>
					<li class="navbar-left"><a href="memberLounge.jsp"><c:if test="${user == 'authenticated'}">OrderHistory</c:if></a></li>
					<li class="navbar-right" id="login-user"><a href="#">登入</a></li>
					<li class="navbar-right" id="register-user"><a href="#">註冊</a></li>
					<li class="navbar-right" id="logout"><a href="#">登出</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	
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
<div class="container">
  <div class="row">
    <div class="col-md-6">

        <h1>Upload Product to Database </h1>
        <form method="post" action="UploadServlet2" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Product Name: </td>
                    <td><input type="text" name="name" size="50"/></td>
                </tr>
                <tr>
                    <td>Size: </td>
                    <td><select name="size" />
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>color: </td>
                    <td><input type="text" name="color" size="50"/></td>
                </tr>
                <tr>
                    <td>price: </td>
                    <td><input type="number" name="price" size="50"/></td>
                </tr>
                <tr>
                    <td>discountCat: </td>
                    <td ><select id="discountSelect1" name="discountCat"></select></td>
                </tr>
                <tr>
                    <td>description: </td>
                    <td><input type="textarea" name="descript" size="50"/></td>
                </tr>
                <tr>
                    <td>categoryId: </td>
                    <td><select id="categoryId1" name="categoryId"></select></td>
                </tr>
                
                <tr>
                    <td>noInStock: </td>
                    <td><input type="number" name="noInStock" size="50"/></td>
                </tr>
                <tr>
                    <td>for_sale: </td>
                    <td><select><option value="true">上架</option><option value="false">下架</option></select></td>
                </tr>
                
                <tr>
                    <td>icon: </td>
                    <td><input type="file" name="icon" size="50"/></td>
                </tr>
                <tr>
                    <td>productImg: </td>
                    <td><input type="file" name="productImg" size="50"/></td>
                </tr>
                <tr>
                    <td>colorImg: </td>
                    <td><input type="file" name="colorImg" size="50"/></td>
                </tr>
                <tr>
                    <td>modelImg1: </td>
                    <td><input type="file" name="modelImg1" size="50"/></td>
                </tr>
                <tr>
                    <td>modelImg2: </td>
                    <td><input type="file" name="modelImg2" size="50"/></td>
                </tr>
                <tr>
                    <td>modelImg3: </td>
                    <td><input type="file" name="modelImg3" size="50"/></td>
                </tr>
                <tr>
                    <td>modelImg4: </td>
                    <td><input type="file" name="modelImg4" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
               
            </table>
        </form>
         <span>${result1}</span>
         </div>
         
         <div class="col-md-6">

        <h1>Modify Product </h1>
        <form id="myForm" method="post" action="ProductModify2.do" enctype="multipart/form-data">
            <table border="0">
               
                <tr>
                    <td>請先選 categoryId: </td>
                    <td><select id="categoryId2" ><option disabled selected value>-- select an option --</option></select></td>
                </tr>
                <tr>
                    <td>Product Number: </td>
                    <td><select name="pno" id="pno"><option value="0">0</option></select></td><td><select name="pnoA" id="pnoA"></select></td>
                </tr>
                <tr>
                    <td>Product Name: </td>
                    <td><input type="text" name="name" size="50"/></td>
                </tr>
                <tr>
                    <td>Size: </td>
                    <td><select name="size" />
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>color: </td>
                    <td><input type="text" name="color" size="50"/></td>
                </tr>
                <tr>
                    <td>price: </td>
                    <td><input type="text" name="price" size="50"/></td>
                </tr>
                <tr>
                    <td>discountCat: </td>
                    <td><select id="discountSelect2" name="discountCat"></select></td>
                </tr>
                <tr>
                    <td>description: </td>
                    <td><input type="textarea" name="descript" size="50"/></td>
                </tr>
                <tr>
                    <td>categoryId: </td>
                    <td><select id="categoryId3" name="categoryId"></select></td>
                </tr>
                
                <tr>
                    <td>noInStock: </td>
                    <td><input type="text" name="noInStock" size="50"/></td>
                </tr>
                <tr>
                    <td>for_sale: </td>
                    <td><select name="for_sale"><option value="1">上架</option><option value="0">下架</option></select></td>
                </tr>
                
                <tr>
                    <td>icon: </td>
                    <td><input type="file" name="icon" size="50"/></td>
                </tr>
                <tr id="productImg">
                    <td>productImg: </td>
                    <td><input type="file" name="productImg"size="50"/></td>
                </tr>
                <tr id="colorImg">
                    <td>colorImg: </td>
                    <td><input type="file" name="colorImg"  size="50"/></td>
                </tr>
                <tr id="modelImg1">
                    <td>modelImg1: </td>
                    <td><input type="file" name="modelImg1" size="50"/></td>
                </tr>
                <tr id="modelImg2">
                    <td>modelImg2: </td>
                    <td><input type="file" name="modelImg2" size="50"/></td>
                </tr>
                <tr id="modelImg3">
                    <td>modelImg3: </td>
                    <td><input type="file" name="modelImg3" size="50"/></td>
                </tr>
                <tr id="modelImg4">
                    <td>modelImg4: </td>
                    <td><input type="file" name="modelImg4" size="50"/></td>
                </tr>
                <tr >
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
               
            </table>
        </form>
         <span>${result2}</span>
         </div>
       
        
         </div>
         </div>
         
         
          <script>
                    $(function() {

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
                    });
 
        </script>
        
         <!-- 每頁不同的內容到這裡結束 -->
    <script>
    $(function() {
    	$.ajax({
    		'url':'GetDiscountCat.do',
    		'success':function(data){
    			var length = Object.keys(data).length;
                for (var i =1;i<=length;i++){
                	var option1 = $('<option></option>').val(i).text(data[i]);
                	var option2 = $('<option></option>').val(i).text(data[i]);
                	$('#discountSelect1').append(option1);
                	$('#discountSelect2').append(option2);
                }
    		}
    	})
    	
    	$.ajax({
    		'url':'GetCategoryId.do',
    		'success':function(data){
    			var length = Object.keys(data).length;
                for (var i =1;i<=length;i++){
                	
                	var option1 = $('<option></option>').val(i).text(data[i]);
                	var option2 = $('<option></option>').val(i).text(data[i]);
                	var option3 = $('<option></option>').val(i).text(data[i]);
                	$('#categoryId1').append(option1);
                 	$('#categoryId2').append(option2);
                 	$('#categoryId3').append(option3);
                }
                $('#categoryId2').change(function(){
            		var selectedCat = $('#categoryId2').val();
            		var selectPno = $('#pno');
            		selectPno.empty();
            		var option0 = $('<option></option>').val('option0').text('select an option');
            		selectPno.append(option0);
            		$.ajax({
            			url:'GetProductInCategory.do',
            			data:{'selectedCat':selectedCat},
            			success:function(data){            				            				           				
            				$.each(data,function(){
            					
             					var option = $('<option></option>').val(window.parseInt(this)).text(window.parseInt(this));           					
             					selectPno.append(option);
            				})
            				
            			}
            		})
            	});
    		}
    	})
                
       $.ajax({
    	   'url':'GetAllProdId.do',
    	   'success':function(data){
    		   var selectPnoA = $('#pnoA');
    		   selectPnoA.empty();
    		   $.each(data,function(){
    			   var option = $('<option></option').val(window.parseInt(this)).text(window.parseInt(this));
    			   selectPnoA.append(option);
    		   })
    	   }
       })         	      
    	 	
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
//     	 var $submit = $('input[type="submit"]');
//     	    $submit.prop('disabled', true);
//     	    $('input[type="text"]').on('input change', function() { //'input change keyup paste'
//     	        $submit.prop('disabled', !$(this).val().length);
//     	    });

    	         $('#pnoA').change(function(){
    	    	    	var pnoA =$('#pnoA').val();
                        console.log("pnoA:"+pnoA);
    	    	    	$('#myForm img').remove();
    	    	    	var image1 = $('<img></img>').attr('src','productImages/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	});
    	    	    	var image2 = $('<img></img>').attr('src','colorImages/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	});
    	    	    	var image3 = $('<img></img>').attr('src','modelImages1/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	});
    	    	    	var image4 = $('<img></img>').attr('src','modelImages2/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	});
    	    	    	var image5 = $('<img></img>').attr('src','modelImages3/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	}); 
    	    	    	var image6 = $('<img></img>').attr('src','modelImages4/'+pnoA).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    	    $(this).css("cursor","pointer");
    	    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	    	}).mouseleave(function() {   
    	    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	    	});
    	    	    	
    	    	    	$('#productImg').append(image1);   	    	
    	    	    	$('#colorImg').append(image2);
    	    	    	$('#modelImg1').append(image3);
    	    	    	$('#modelImg2').append(image4);
    	    	    	$('#modelImg3').append(image5);
    	    	    	$('#modelImg4').append(image6);
    	    	    	
    	    	    	
    	    	    	$.get('AutoCompleteProductServlet.do',{'pno':pnoA},function(obj){
    	    	    		var data = $.parseJSON(obj);
    	    	    	    
    	    	    		$('#myForm input:eq(0)').val(data.name);
    	        	    	$('#myForm select:eq(3)').val(data.size).change();   //look for the option with val data.size and select it
    	        	    	$('#myForm input:eq(1)').val(data.color);
    	        	    	$('#myForm input:eq(2)').val(data.price);
    	        	    	$('#myForm select:eq(4)').val(data.discountCat).change;
    	        	    	$('#myForm input:eq(3)').val(data.descript);
    	        	    	$('#myForm select:eq(5)').val(data.categoryId).change;
    	        	    	$('#myForm input:eq(4)').val(data.noInStock);
    	        	    	$('#myForm select:eq(6)').val(data.for_sale).change;
    	        	    	   	        	    	
    	    	    	})
    	    	    	
    	    	    })
    	    	
                $('#pno').change(function(){   
                var pno = $('#pno').val();
                console.log("pno:"+pno);
    	    	$('#myForm img').remove();
    	    	var image1 = $('<img></img>').attr('src','productImages/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	});
    	    	var image2 = $('<img></img>').attr('src','colorImages/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	});
    	    	var image3 = $('<img></img>').attr('src','modelImages1/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	});
    	    	var image4 = $('<img></img>').attr('src','modelImages2/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	});
    	    	var image5 = $('<img></img>').attr('src','modelImages3/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	}); 
    	    	var image6 = $('<img></img>').attr('src','modelImages4/'+pno).css({'width':'50px','height':'50px'}).mouseenter(function() {
    	    	    $(this).css("cursor","pointer");
    	    	    $(this).animate({width: "150%", height: "200%"}, 'slow');
    	    	}).mouseleave(function() {   
    	    	    $(this).animate({width: "60%"}, 'slow');
    	    	});
    	    	
    	    	$('#productImg').append(image1);   	    	
    	    	$('#colorImg').append(image2);
    	    	$('#modelImg1').append(image3);
    	    	$('#modelImg2').append(image4);
    	    	$('#modelImg3').append(image5);
    	    	$('#modelImg4').append(image6);
    	    	$('#pno option[value=option0]').remove();
    	    	
    	    	$.get('AutoCompleteProductServlet.do',{'pno':pno},function(obj){
    	    		var data = $.parseJSON(obj);
    	    	    
    	    		$('#myForm input:eq(0)').val(data.name);
        	    	$('#myForm select:eq(3)').val(data.size).change();   //look for the option with val data.size and select it
        	    	$('#myForm input:eq(1)').val(data.color);
        	    	$('#myForm input:eq(2)').val(data.price);
        	    	$('#myForm select:eq(4)').val(data.discountCat).change;
        	    	$('#myForm input:eq(3)').val(data.descript);
        	    	$('#myForm select:eq(5)').val(data.categoryId).change;
        	    	$('#myForm input:eq(4)').val(data.noInStock);
        	    	$('#myForm select:eq(6)').val(data.for_sale).change;
        	    	
        	    	
    	    	})
    	    	
    	    })
    	    
    	
    	
    })
    </script>

</body>
</html>