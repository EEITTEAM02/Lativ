<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:set var="context" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ProductDetail</title>

<link href="${pageContext.request.contextPath}/css/clean-blog.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/jquery.fancybox.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sweetalert.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css" />
<script src="http://code.jquery.com/jquery-1.12.1.min.js"></script>
<script src="${context}/js/bootstrap.min.js"></script>
<script src="${context}/js/jquerysession.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${context}/js/jquery.fancybox.min.js"></script>
<script src="${context}/js/sweetalert.min.js"></script>
<script src="${context}/js/clean-blog.min.js"></script>
<script type='text/javascript' src="${context}/js/jquery.mycart.js"></script>
<script src="${context}/jsUtil/includeHeader.js"></script>
<script type="text/javascript" src="js/jquery.autocomplete.js"></script>

<style>
.glyphicon:before {
	font-family: Glyphicons Halflings
}

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

#div26 a {
	font-weight: bold;
	text-decoration: none;
	color: #337ab7;
}
</style>


</head>

<body>


	<!-- Navigation -->
	<nav id="header"
		class="navbar navbar-default navbar-custom navbar-fixed-top"></nav>

	<header class="intro-header">
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
							<a title="Pima 棉V領T恤" href="productImages/${param.Pid}"
								data-fancybox="gallery1" id="bigImg"> <img
								src="productImages/${param.Pid}" class="img-rounded"
								width="100%" id="smallImg" />
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
								<div class="col-sm-6 well" id="div25"></div>
							</div>
							<div class="row">
								<div class="col-sm-6 well" id="div26">
									<div id="comm" style="display: inline-block">
										<a href='#' onClick=openwindow(
											'showComment.jsp?pid=${param.Pid}','test',700,500)>查看評價</a>
									</div>
									<div id="like"
										style="display: inline-block; margin-left: 60px;">
										<img id="likeimg" data-toggle="tooltip" data-placement="top"
											title="加入我的收藏">
									</div>
								</div>
							</div>

						</div>
					</div>
					<!-- carousel -->
					<div class="row carousel-holder">
						<div class="col-md-3">
							<div id="carousel-example-generic" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li data-target="#carousel-example-generic" data-slide-to="0"
										class="active"></li>
									<li data-target="#carousel-example-generic" data-slide-to="1"></li>
									<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								</ol>
								<div class="carousel-inner">
									<div class="item active">
										<a><img class="slide-image"
											src="http://placehold.it/200x100"
											style="width: 200px; height: 100px;" alt=""></a>
									</div>
									<div class="item">
										<a><img class="slide-image"
											src="http://placehold.it/200x100"
											style="width: 200px; height: 100px;""></a>
									</div>
									<div class="item">
										<a><img class="slide-image"
											src="http://placehold.it/200x100"
											style="width: 200px; height: 100px;""></a>
									</div>
								</div>
								<a class="left carousel-control"
									href="#carousel-example-generic" data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span>
								</a> <a class="right carousel-control"
									href="#carousel-example-generic" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
						</div>

						<!-- /carousel -->
					</div>



					<!-- 每頁不同的內容到這裡結束 -->


				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<img src="modelImages1/${param.Pid}" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages2/${param.Pid}" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages3/${param.Pid}" style="width: 100%">
			</div>
		</div>
		<br></br>
		<div class="row">
			<div class="col-md-12">
				<img src="modelImages4/${param.Pid}" style="width: 100%">
			</div>
		</div>
		<br></br>

		<!-- 	    <script src="http://code.jquery.com/jquery-1.12.1.min.js"></script> -->
		<%-- 		<script src="${context}/js/bootstrap.min.js"></script> --%>
		<%-- 		<script src="${context}/js/jquerysession.js"></script> --%>
		<!-- 		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
		<%-- 		<script src="${context}/js/jquery.fancybox.min.js"></script> --%>
		<%-- 		<script src="${context}/js/sweetalert.min.js"></script> --%>
		<%-- 		<script src="${context}/js/clean-blog.min.js"></script> --%>
		<%--        <script type='text/javascript' src="${context}/js/jquery.mycart.js"></script> --%>
		<%-- 		 <script src="${context}/jsUtil/includeHeader.js"></script> --%>

		<script>
		var ctx = "<%=request.getContextPath()%>";
		
		
		// 查詢評價彈出視窗
		function openwindow(url,name,iWidth,iHeight){
			  var url;     //網頁位置;
			  var name;    //網頁名稱;
			  var iWidth;  //視窗的寬度;
			  var iHeight; //視窗的高度;
			  var iTop = (window.screen.availHeight-30-iHeight)/2;  //視窗的垂直位置;
			  var iLeft = (window.screen.availWidth-10-iWidth)/2;   //視窗的水平位置;
			  window.open(url,name,'height='+iHeight+',,innerHeight='+iHeight+',width='+iWidth+',innerWidth='+iWidth+',top='+iTop+',left='+iLeft+',status=no,location=no,status=no,menubar=no,toolbar=no,resizable=no,scrollbars=no');
			}
		
		$(function() {
			
			var cid = null;
			var pid = ${param.Pid};
			
			 $('[data-toggle="tooltip"]').tooltip()
			
			//載入頁面同時確認是否已收藏
			if("${sessionScope.login_customer_info.customerId}"==""){
				$('#like>img').attr("src","images/Like2.png");
			}else{
					cid=${sessionScope.login_customer_info.customerId}
				   $.get('FavoriteCheck',{action:"getOne_For_Display",'customerId':cid,'productId':pid},function(data){
					   if(data.trim() == "not add"){
						   $('#like>img').attr({"src":"images/Like2.png","title":"加入我的收藏"});
					   }else{
						   $('#like>img').attr({"src":"images/heart2.png","title":"取消我的收藏"});
					   }
				   })					
			}

			    
			//	點擊切換收藏狀態    
				 $("#likeimg").bind("click",function(){	
					 if( "${sessionScope.login_customer_info.customerId}"==""){
						 swal("請先登入會員");	
					 }else{
						 cid=${sessionScope.login_customer_info.customerId}
						 $.get('FavoriteCheck',{action:"getChange_For_Display",'customerId':cid,'productId':pid},function(data){
							 if(data.trim() == "insert"){
								 $("#likeimg").attr({"src":"images/heart2.png","title":"取消我的收藏"});
			        		 }else{
			        			 $("#likeimg").attr({"src":"images/Like2.png","title":"加入我的收藏"});
			        		 }
						 })				 
					 }
				 })
			
			
	
			getCarouselItems(1);
			
			function getCarouselItems(id){
				$.ajax({
					url:'${context}/GetMostInStockProduct.do',
					data:{"id":id},
					success:function(data){
	 					console.log(data);
					var counter =0;
						$.each(data,function(idx,entity){
							$('.carousel-inner img:eq('+counter+')').attr('src','productImages/'+idx);
							$('.carousel-inner a:eq('+counter+')').attr('href',ctx+'/productPages/'+entity+'.jsp');								
							counter++;
						})
					
					}
				})
			}
		
            var discountList = $('ul.list-group:eq(0)');
            
            
		var universalPno = ${param.Pid};
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
                var cid = <%=session.getAttribute("mno")%>
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
          		            img = $('<img></img>').attr({"src":"colorImages/"+datas.l2[i],"id":i}).addClass("colorImg").click(function loadSth(event){
          		            	span2.empty();
          		            	span1.empty();
          		            	$('#smallImg').attr("src","productImages/"+datas.l2[event.target.id]);
          		            	$('#bigImg').attr("href","productImages/"+datas.l2[event.target.id]);
           		            	 var length = ($(datas.array1)[event.target.id].length);
                                 
                                
                                 for (var i =0;i<length;i++){
                                 var outerI = event.target.id;
                                 var innerI = i;
                               
                                 clickableSize = $(datas.array1)[outerI][innerI];
                                
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
          		      document.getElementById('0').click();
                      span2.append($('<select><option>先選商品</option></select>')).append($("<button class='btn btn-danger'>add to cart</button>"));
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
                             
                           window.fn1 = function(){
                                $('.my-cart-btn').myCart(cartCart);   
                           }
                           fn1();
                             
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
