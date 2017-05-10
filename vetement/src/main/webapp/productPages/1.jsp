<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ProductDetail</title>
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
.colorImg {
	margin: 5px;
}

/* div span { */
/* 	display: inline-block; */
/* 	width: 35px; */
/* 	text-align: center; */
/* } */
.dialogRegister-form input {
	width: 35px;
}

.dialogLogin-form input {
	width: 35px;
}
/* .ui-dialog-titlebar-close { */
/*     visibility: hidden; */
/* } */
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
				<a style="opacity: 1; color: black;" class="navbar-brand" href="/WebsiteV1.3/indexTemplate.jsp">首頁</a> 
				<a class="navbar-brand" href="${context}/Search/search.jsp">產品</a>
                <a class="navbar-brand" href="${context}/memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a>
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

	<div style="position: fixed" draggable="true" id="dragme">
		<span class="glyphicon glyphicon-shopping-cart my-cart-icon"><span
			class="badge badge-notify my-cart-badge"></span></span>
	</div>
	<div class="container">
		<div class="row">
            <jsp:include page="/util/navbar2.jsp"></jsp:include>
			<div class="col-md-12">
				<div class="jumbotron">

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
					<!-- 每頁不同的內容從這裡開始 -->
					<div class="row">
						<div class="col-sm-2" id="leftSide">
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
						<div class="col-sm-5">					
							<a title="Pima 棉V領T恤" href="productImages/1"
								data-fancybox="gallery1" id="bigImg"> <img
								src="productImages/1" class="img-rounded" width="100%"
								id="smallImg" />
							</a>

						</div>
						<div class="col-sm-5" id="div2">
							<div class="row">
								<div class="col-md-9 well" id="div21" style="">
									<div id="div211"
										style="position: absolute; top: 0; right: 15px; width: auto; text-align: right;">
									</div>
									<div id="div212"
										style="position: absolute; top: 10px; right: 15px; width: auto; text-align: right;">
										<h3></h3>
									</div>
									<div id="div213"
										style="position: absolute; bottom: 0; right: 15px; width: auto; text-align: right;">
									</div>
									<div id="div214"
										style="position: absolute; bottom: 0; left: 18px; width: auto; text-align: right;">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6 well" id="div22"></div>
							</div>
							<div class="row">
								<div class="col-sm-6 well" id="div23"></div>
							</div>
							<div class="row">
								<div class="col-sm-6 well" id="div24"></div>
							</div>
							<div class="row">
								<div class="col-sm-6 well" id="div25">
								</div>
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
//                                  console.log($('#spanPwd').text());
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


				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<img src="modelImages1/1" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages2/1" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages3/1" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages4/1" style="width: 100%">
			</div>
		</div>
		<br></br>

		<script>
	
		$(function() {
			var ctx = "<%=request.getContextPath()%>";
            var discountList = $('ul.list-group:eq(0)');
            
            
		var universalPno = 1;
			drawStar(universalPno);
		    if(!checkAuth()){
		    	$('#dragme').hide();
		    }
		    else{
		    	$('#dragme').show();
		    }
		    function drawStar(pno){
		    	    var x = Math.round(getRating(pno));
	                var y = x;
//	                 document.body.removeChild(document.body.childNodes[2]);
	                     
	                for (var i = 1; i <= 5; i++){
 	                      $('#div25').empty();
//                        document.getElementById('idimg' + i).parentNode.removeChild(document.getElementById('idimg' + i));
	                }
	                var ele = document.createElement('img');
	                ele.src = ctx+'/images/chngstar.gif';
	                var ele1 = document.createElement('img');
	                ele1.src = ctx+'/images/star.gif';
	                for (var i = 1; i <= x; i++) {
	                    var e = ele.cloneNode();
	                    e.style.width ="20px";
	                    e.style.height ="20px";
	                    e.id = 'idimg' + i;
	                    document.getElementById('div25').appendChild(e);
	                }
	                for (x; x < 5; x++) {
	                    var e = ele1.cloneNode();
	                    e.style.width ="20px";
	                    e.style.height ="20px";
	                    e.id = 'idimg' + (window.parseInt(x)+1) ;
// 	                    console.log(e.id);
	                    document.getElementById('div25').appendChild(e);
	                }
		    }
			
		    function getRating(pno) {
		    	 var rating = (function() {
				        var rating1 = null;
				        $.ajax({
				            'async': false,
				            'global': false,
				            'data':{'pno':pno},
				            'url': ctx+'/GetProductRating.do',
				            'success': function(resp) {
				                rating1 = resp;
				            }
				        });
				        return rating1;
				    })();
				    return rating;
		    }
			
		    if(checkAuth()){
		    	if(checkPurchase()){
			for (var i = 1; i < 6;i++)
                document.getElementById("idimg" + i).onmouseout = mouseout;
            for (var i = 1; i < 6; i++)
                document.getElementById("idimg" + i).onmouseover = mouseover;
            for (var i = 1; i < 6; i++)
                document.getElementById("idimg" + i).onmousedown = mousedown;
		    	}
		    }


            function mouseover(e) {
                var x = e.target.id.substr(5);
                for (var i = 1; i <= x; i++) {
                    document.getElementById('idimg' + i).src = ctx+'/images/chngstar.gif';
                }
            }

            function mouseout() {
                for (var i = 1; i <= 5; i++)
                    document.getElementById('idimg' + i).src = ctx+'/images/star.gif';
//                 document.body.removeChild(document.body.childNodes[2]);
                   document.getElementById('div25');
            }

            function mousedown(e) {
                var x = e.target.id.substr(5);
                var cid = <%= session.getAttribute("mno")%>
                var idScore = {'id':universalPno,'score':x};
                var idScore2 = JSON.stringify(idScore);
//                 console.log(idScore2);
                $.ajax({
                	'url':ctx+"/RateProduct.do",
                	'data':{'idScore':idScore2},
                	'success':function(){
                 		drawStar(universalPno);
                	}
                })
                var y = x;
//                 document.body.removeChild(document.body.childNodes[2]);
                     document.getElementById('div25');
                for (var i = 1; i <= 5; i++)
                    document.getElementById('idimg' + i).parentNode.removeChild(document.getElementById('idimg' + i));

                var ele = document.createElement('img');
                ele.src = ctx+'/images/chngstar.gif';
                var ele1 = document.createElement('img');
                ele1.src = ctx+'/images/star.gif';
                for (var i = 0; i < x; i++) {
                    var e = ele.cloneNode();
                    e.style.width ="20px";
                    e.style.height ="20px";
                    e.id = 'idimg' + (i + 6);
                    document.getElementById('div25').appendChild(e);
                }
                for (x; x < 5; x++) {
                    var e = ele1.cloneNode();
                    e.style.width ="20px";
                    e.style.height ="20px";
                    e.id = 'idimg' + (window.parseInt(x) + 6);
                    document.getElementById('div25').appendChild(e);
                }
//                 for (var i = 6; i < 11; i++)
//                     document.getElementById("idimg" + i).onmousedown = mousedown1;
                   swal("謝謝", "完成評分");
               
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

                function loadPage(){
                
                     $('ul.list-group>li').removeClass('active');
//                     var y = window.location.search.substring(1);
//                     if(y<=3)
//                         $('ul.list-group:eq(1)>li[data-id="' +y + '"]').addClass('active');
//                     else
//                     	 $('ul.list-group:eq(0)>li[data-id="' +y + '"]').addClass('active');
  				 $.ajax({
             		type: "GET",
         		    url: ctx+"/ProductDetailServlet.do",
         		    async:false,
         		    data:{"pno":universalPno},
         		    dataType:'json',
          		    success:function(datas){          		    	
          		      var img =null;                     
          		      var div21 = $('#div21');
                      var div22 = $('#div22');
                      var div23 = $('#div23');
                      var div24 = $('#div24');
                      var div211 = $('#div211');
                      var div212 = $('#div212');
                      var div213 = $('#div213');
                      var div214 = $('#div214');
                     var priceO = $(datas.array10)[0][0];
                     var priceD = datas.unitPriceDiscounted;
       		         var h1 = $('<h4></h4>').html(datas.pName).css('display','inline-block')
       		         var small = $('<small></small>').html(datas.discountType);
       		        div21.append(h1);
       		        div211.append(priceO).css('text-decoration','line-through');
       		        $('#div212 > h3').html('NT$'+priceD).addClass('text-danger');
       		        div213.html(small);

       	                $.ajax({
            	'url':ctx+'/GetDiscountCat.do',
            	async:false,
            	'success':function(data){
            		
            	var length = Object.keys(data).length;
            	for (var i=1;i<=length;i++){
            		var li = $('<li></li>').attr('data-id',i+3).addClass('list-group-item').text(data[i]);
         			discountList.append(li);
            	}

            	}
            	})

                 $('li:contains("'+datas.discountType+'")').addClass('active');
       	         $('li:contains("'+datas.mainCat+'")').addClass('active');      
       	                
       	                for (var i=0;i<datas.l2.length;i++){
          		            img = $('<img></img>').attr({"src":"colorImages/"+datas.l2[i],"id":i}).addClass("colorImg").click(function(event){
          		            	span2.empty();
          		            	span1.empty();
          		            	$('#smallImg').attr("src","productImages/"+datas.l2[event.target.id]);
          		            	$('#bigImg').attr("href","productImages/"+datas.l2[event.target.id]);
           		            	 var length = ($(datas.array1)[event.target.id].length);
                                 
                                 
                                 for (var i =0;i<length;i++){
                                 var outerI = event.target.id;
                                 var innerI = i;
                                
                                 var clickableSize = $(datas.array1)[outerI][innerI];
                                 var cs = $('<a></a>').append(clickableSize).css({'margin-right':'10px'});
                                 if(checkAuth()){ 
                                 var aa = $('<a></a>').attr({"outerI":outerI,"innerI":innerI}).append(cs).click(function(){
                                	 
                                	 span2.empty();
                                	 $(this).siblings().css({'background-color':'transparent'});
                                 	 $(this).css({'background-color':'white'});
                                 	
                                	var selectedSize = ($(datas.array1)[$(this).attr('outerI')][$(this).attr('innerI')]);
                                 	var selectedPno = ($(datas.array7)[$(this).attr('outerI')][$(this).attr('innerI')]);
                                 	var quantity = $(datas.array4)[$(this).attr('outerI')][$(this).attr('innerI')];
                                 	var price = $(datas.array10)[$(this).attr('outerI')][$(this).attr('innerI')];
 
                                 	var select = $('<select></select>');
                                 	for (var k=1;k<=quantity;k++){
                                 		var option = $('<option></option>').val(k).text(k);
                                 	    select.append(option);  
                                 		}                                  	
                                     select.change(function(){

                                    	 button.data('quantity',select.val());
                                     })
                                     
                                     var button = $('<button></button').myCart(cartCart).addClass('btn btn-danger my-cart-btn').attr
                                     ({'data-size':selectedSize,'data-unitPriceD':price,'data-unitPriceO':price,'data-id':selectedPno,'data-quantity':1,'data-name':datas.pName,'data-image':"productImages/"+selectedPno}).html('add to cart').mouseover(function(){                                    	

                                     });
                                     
                                     div214.text('產品編號:'+selectedPno);
                                 	span2.append(select).append(button)});                                   
          		            	span1.append(aa);
          		            	
                                 }
                                 }
          		            	});
          		           div22.append(img);
          		         
          		        }
          		        var span1 = $('<span></span>').css('display','inline-block');
          		        var span2 = $('<span></span>').css('display','inline-block');
          		        div23.append(span1);
          		        div24.append(span2);
          		        }

             		}
             	
             )
                	
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
                }
                loadPage();
                
                function checkPurchase() {
    			    var purchase = (function() {
    			        var isPurchase = null;
    			        var pno = universalPno;
//     			        console.log(pno);
    			        $.ajax({
    			            'async': false,
    			            'global': false,
    			            'data':{'pno':pno},
    			            'url': ctx+'/CheckPurchase.do',
    			            'success': function(resp) {
    			                isPurchase = (resp === "1");
    			            }
    			        });
    			        return isPurchase;
    			    })();
    			    return purchase;
    			}
            
            function checkAuth() {
			    var logged = (function() {
			        var isLogged = null;
			        $.ajax({
			            'async': false,
			            'global': false,
			            'url': ctx+'/LoginCheckServlet.do',
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
			   
			   $('.fancybox').fancybox({
    fitToView: false,
    autoSize: false,
    afterLoad: function () {
        this.width = $(this.element).data("width");
        this.height = $(this.element).data("height");
    }
});
					
		});
		
	</script>
</body>
</html>
