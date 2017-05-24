<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${sessionScope.login_customer_info.getCustomerId() == '5'}">
	<c:redirect url = "mangerPage.jsp"/>
</c:if>	
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vetements</title>

    <!-- Bootstrap Core CSS -->
<!--     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Theme CSS -->
    <link href="css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
* {margin:0;padding:0;border:0 none;}
*,*:before,*:after {box-sizing:border-box;}

.slider {
	background: green;
	display: -webkit-flex;
	display: -moz-flex;
	display: -ms-flex;
	display: -o-flex;
	display: flex;
	flex-direction: column;
	height: 100vh;/**/
	overflow: hidden;/**/
	transition: 0.6s;/**/
	width: 100%;/**/
}

.slider__element {
	flex: 1;
	padding: 1em;/**/
	transition: 1.2s;/**/
}
.slider__element:hover {
	flex: 10;
}
.slider__element:first-child {
  background: #fff;
}
.slider__element:nth-child(2) {
  background: #eee;
}
.slider__element:nth-child(3) {
  background:  #fff;
}
.slider__element:nth-child(4) {
  background:  #eee;
}
.slider__element:nth-child(5) {
  background:  #fff;
}

@media (min-width: 640px) {
	.slider {
		flex-direction: row;
		height: 400px;/**/
	}
}

.discountImg{
	width:600px;
	height:290px;
	border-radius:10px; 
}

.custom_index{
	bakground-color:#e7e7e7;
	border-color: #e7e7e7;
}

.intro-header{
	margin-top:2.7%
}
</style>
</head>

<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
    <!-- Navigation -->
    <nav id="header" class="navbar navbar-default navbar-fixed-top custom_index" >
<!--         <div class="container-fluid" "> -->
<!--             Brand and toggle get grouped for better mobile display -->
<!--             <div class="navbar-header page-scroll"> -->
<!--                 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> -->
<!--                     <span class="sr-only">Toggle navigation</span> -->
<!--                     Menu <i class="fa fa-bars"></i> -->
<!--                 </button> -->
<!--                 <a class="navbar-brand " href="indexTemplate.jsp"><span class="text-danger">首頁</span></a> -->
<%--                 <a class="navbar-brand" href="${context}/Search/search.jsp">產品</a> --%>
<%--                 <a class="navbar-brand" href="memberLounge.jsp"><c:if test="${user == 'authenticated'}">會員專區</c:if></a> --%>
<!--                                 <a class="navbar-brand" href="aboutUs.jsp">關於我們</a> -->
<!--             </div> -->

<!--             Collect the nav links, forms, and other content for toggling -->
<!--             <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" > -->
<!--                 <ul class="nav navbar-nav navbar-right "> -->
<!--                     <li > -->
<%--                         <a class="glyphicon glyphicon-user"><span class="text-warning">${sName}</span><c:if --%>
<%-- 								test="${user != 'authenticated'}"><span class="text-warning">訪客</span></c:if></a> --%>
<!--                     </li> -->
<!--                     <li id="login-user" > -->
<!--                         <a href="#"><span class="text-warning">登入</span></a> -->
<!--                     </li> -->
<!--                     <li id="register-user" > -->
<!--                        <a href="#"><span class="text-warning">註冊</span></a> -->
<!--                     </li> -->
<!--                     <li  id="logout" > -->
<!--                         <a href="#"><span class="text-warning">登出</span></a> -->
<!--                     </li>             -->
<!--                 </ul> -->
<!--             </div> -->
<!--             /.navbar-collapse -->
<!--         </div> -->
        <!-- /.container -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('images/background_closet.jpg');opacity: 0.8; ">
        <div class="container" >
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>Vetements</h1>
                        <hr class="small">
                        <span class="subheading"></span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
<!--     <div class="container-fluid"> -->
<!--     <section class="slider"> -->
<!-- 	<article class="slider__element"><img src ="productImages/1" style="width:100px;"></img>A common English usage misconception is that a paragraph has three to five sentences; single-word paragraphs can be seen in some professional writing, and journalists often use single-sentence paragraphs.[9] -->

<!-- The crafting of clear, coherent paragraphs is the subject of considerable stylistic debate. Forms generally vary among types of writing. For example, newspapers, scientific journals, and fictional essays have somewhat different conventions for the placement of paragraph breaks. -->

<!-- English students are sometimes taught that a paragraph should have a topic sentence or "main idea", preferably first, and multiple "supporting" or "detail" sentences which explain or supply evidence. One technique of this type, intended for essay writing, is known as the Schaffer paragraph. For example, the following excerpt from Dr. Samuel Johnson's Lives of the English Poets, the first sentence is the main idea: that Joseph Addison is a skilled "describer of life and manners". The succeeding sentences are details that support and explain the main idea in a specific way. -->

<!-- As a describer of life and manners, he must be allowed to stand perhaps the first of the first rank. His humour, which, as Steele observes, is peculiar to himself, is so happily diffused as to give the grace of novelty to domestic scenes and daily occurrences. He never "o'ersteps the modesty of nature," nor raises merriment or wonder by the violation of truth. His figures neither divert by distortion nor amaze by aggravation. He copies life with so much fidelity that he can be hardly said to invent; yet his exhibitions have an air so much original, that it is difficult to suppose them not merely the product of imagination. -->

<!-- This advice differs from stock advice for the construction of paragraphs in Japanese (translated as danraku 段落).[10]</article> -->
<!-- 	<article class="slider__element"><img src ="productImages/564" style="width:100px;"></img>A common English usage misconception is that a paragraph has three to five sentences; single-word paragraphs can be seen in some professional writing, and journalists often use single-sentence paragraphs.[9] -->

<!-- The crafting of clear, coherent paragraphs is the subject of considerable stylistic debate. Forms generally vary among types of writing. For example, newspapers, scientific journals, and fictional essays have somewhat different conventions for the placement of paragraph breaks. -->

<!-- English students are sometimes taught that a paragraph should have a topic sentence or "main idea", preferably first, and multiple "supporting" or "detail" sentences which explain or supply evidence. One technique of this type, intended for essay writing, is known as the Schaffer paragraph. For example, the following excerpt from Dr. Samuel Johnson's Lives of the English Poets, the first sentence is the main idea: that Joseph Addison is a skilled "describer of life and manners". The succeeding sentences are details that support and explain the main idea in a specific way. -->

<!-- As a describer of life and manners, he must be allowed to stand perhaps the first of the first rank. His humour, which, as Steele observes, is peculiar to himself, is so happily diffused as to give the grace of novelty to domestic scenes and daily occurrences. He never "o'ersteps the modesty of nature," nor raises merriment or wonder by the violation of truth. His figures neither divert by distortion nor amaze by aggravation. He copies life with so much fidelity that he can be hardly said to invent; yet his exhibitions have an air so much original, that it is difficult to suppose them not merely the product of imagination. -->

<!-- This advice differs from stock advice for the construction of paragraphs in Japanese (translated as danraku 段落).[10]</article> -->
<!-- 	<article class="slider__element"><img src ="productImages/98" style="width:100px;"></img>A common English usage misconception is that a paragraph has three to five sentences; single-word paragraphs can be seen in some professional writing, and journalists often use single-sentence paragraphs.[9] -->

<!-- The crafting of clear, coherent paragraphs is the subject of considerable stylistic debate. Forms generally vary among types of writing. For example, newspapers, scientific journals, and fictional essays have somewhat different conventions for the placement of paragraph breaks. -->

<!-- English students are sometimes taught that a paragraph should have a topic sentence or "main idea", preferably first, and multiple "supporting" or "detail" sentences which explain or supply evidence. One technique of this type, intended for essay writing, is known as the Schaffer paragraph. For example, the following excerpt from Dr. Samuel Johnson's Lives of the English Poets, the first sentence is the main idea: that Joseph Addison is a skilled "describer of life and manners". The succeeding sentences are details that support and explain the main idea in a specific way. -->

<!-- As a describer of life and manners, he must be allowed to stand perhaps the first of the first rank. His humour, which, as Steele observes, is peculiar to himself, is so happily diffused as to give the grace of novelty to domestic scenes and daily occurrences. He never "o'ersteps the modesty of nature," nor raises merriment or wonder by the violation of truth. His figures neither divert by distortion nor amaze by aggravation. He copies life with so much fidelity that he can be hardly said to invent; yet his exhibitions have an air so much original, that it is difficult to suppose them not merely the product of imagination. -->

<!-- This advice differs from stock advice for the construction of paragraphs in Japanese (translated as danraku 段落).[10]</article> -->
<!-- 	<article class="slider__element"><img src ="productImages/25" style="width:100px;"></img>A common English usage misconception is that a paragraph has three to five sentences; single-word paragraphs can be seen in some professional writing, and journalists often use single-sentence paragraphs.[9] -->

<!-- The crafting of clear, coherent paragraphs is the subject of considerable stylistic debate. Forms generally vary among types of writing. For example, newspapers, scientific journals, and fictional essays have somewhat different conventions for the placement of paragraph breaks. -->

<!-- English students are sometimes taught that a paragraph should have a topic sentence or "main idea", preferably first, and multiple "supporting" or "detail" sentences which explain or supply evidence. One technique of this type, intended for essay writing, is known as the Schaffer paragraph. For example, the following excerpt from Dr. Samuel Johnson's Lives of the English Poets, the first sentence is the main idea: that Joseph Addison is a skilled "describer of life and manners". The succeeding sentences are details that support and explain the main idea in a specific way. -->

<!-- As a describer of life and manners, he must be allowed to stand perhaps the first of the first rank. His humour, which, as Steele observes, is peculiar to himself, is so happily diffused as to give the grace of novelty to domestic scenes and daily occurrences. He never "o'ersteps the modesty of nature," nor raises merriment or wonder by the violation of truth. His figures neither divert by distortion nor amaze by aggravation. He copies life with so much fidelity that he can be hardly said to invent; yet his exhibitions have an air so much original, that it is difficult to suppose them not merely the product of imagination. -->

<!-- This advice differs from stock advice for the construction of paragraphs in Japanese (translated as danraku 段落).[10]</article> -->
<!-- 	<article class="slider__element"><img src ="productImages/11" style="width:100px;"></img>A common English usage misconception is that a paragraph has three to five sentences; single-word paragraphs can be seen in some professional writing, and journalists often use single-sentence paragraphs.[9] -->

<!-- The crafting of clear, coherent paragraphs is the subject of considerable stylistic debate. Forms generally vary among types of writing. For example, newspapers, scientific journals, and fictional essays have somewhat different conventions for the placement of paragraph breaks. -->

<!-- English students are sometimes taught that a paragraph should have a topic sentence or "main idea", preferably first, and multiple "supporting" or "detail" sentences which explain or supply evidence. One technique of this type, intended for essay writing, is known as the Schaffer paragraph. For example, the following excerpt from Dr. Samuel Johnson's Lives of the English Poets, the first sentence is the main idea: that Joseph Addison is a skilled "describer of life and manners". The succeeding sentences are details that support and explain the main idea in a specific way. -->

<!-- As a describer of life and manners, he must be allowed to stand perhaps the first of the first rank. His humour, which, as Steele observes, is peculiar to himself, is so happily diffused as to give the grace of novelty to domestic scenes and daily occurrences. He never "o'ersteps the modesty of nature," nor raises merriment or wonder by the violation of truth. His figures neither divert by distortion nor amaze by aggravation. He copies life with so much fidelity that he can be hardly said to invent; yet his exhibitions have an air so much original, that it is difficult to suppose them not merely the product of imagination. -->

<!-- This advice differs from stock advice for the construction of paragraphs in Japanese (translated as danraku 段落).[10]</article> -->
<!-- </section> -->
<!--     </div> -->
    
    
    
    
    
<!--     <div class="container"> -->
<!--         <div class="row"> -->
<!--             <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1"> -->
<!--                 <div class="post-preview"> -->
<!--                     <a href="post.html"> -->
<!--                         <h2 class="post-title"> -->
<!--                             Man must explore, and this is exploration at its greatest -->
<!--                         </h2> -->
<!--                         <h3 class="post-subtitle"> -->
<!--                             Problems look mighty small from 150 miles up -->
<!--                         </h3> -->
<!--                     </a> -->
<!--                     <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on September 24, 2014</p> -->
<!--                 </div> -->
<!--                 <hr> -->
<!--                 <div class="post-preview"> -->
<!--                     <a href="post.html"> -->
<!--                         <h2 class="post-title"> -->
<!--                             I believe every human has a finite number of heartbeats. I don't intend to waste any of mine. -->
<!--                         </h2> -->
<!--                     </a> -->
<!--                     <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on September 18, 2014</p> -->
<!--                 </div> -->
<!--                 <hr> -->
<!--                 <div class="post-preview"> -->
<!--                     <a href="post.html"> -->
<!--                         <h2 class="post-title"> -->
<!--                             Science has not yet mastered prophecy -->
<!--                         </h2> -->
<!--                         <h3 class="post-subtitle"> -->
<!--                             We predict too much for the next year and yet far too little for the next ten. -->
<!--                         </h3> -->
<!--                     </a> -->
<!--                     <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on August 24, 2014</p> -->
<!--                 </div> -->
<!--                 <hr> -->
<!--                 <div class="post-preview"> -->
<!--                     <a href="post.html"> -->
<!--                         <h2 class="post-title"> -->
<!--                             Failure is not an option -->
<!--                         </h2> -->
<!--                         <h3 class="post-subtitle"> -->
<!--                             Many say exploration is part of our destiny, but it’s actually our duty to future generations. -->
<!--                         </h3> -->
<!--                     </a> -->
<!--                     <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on July 8, 2014</p> -->
<!--                 </div> -->
<!--                 <hr> -->
<!--                 Pager -->
<!--                 <ul class="pager"> -->
<!--                     <li class="next"> -->
<!--                         <a href="#">Older Posts &rarr;</a> -->
<!--                     </li> -->
<!--                 </ul> -->
<!--             </div> -->
<!--         </div> -->
<!--     </div> -->
    <!-- /Main Content -->
    
    <div class="row">
    	<div class="col-md-4"><a href="Search/discountDivison1.jsp"><img class="discountImg  img-responsive" src="img/discount1.jpg"/></a></div>
    	<div class="col-md-4"><a href="Search/discountDivison2.jsp"><img class="discountImg  img-responsive" src="img/discount2_3.jpg"/></a></div>
    	<div class="col-md-4"><a href="Search/discountDivison3.jsp"><img class="discountImg  img-responsive" src="img/discount3_2.jpg"/></a></div>
    </div>
    
    	
<!-- 		http://photofunia.com/results/59194a12089f7a5c038b45a5 -->
<!--     	http://upuptoyou.com -->
<!-- 		http://goo.gl/Wv5BqJ -->
    
    <div id="dialogRegister-form" title="Register New User" style="display:none">
						<p class="validateTips">All form fields are required.</p>

						<form id="registerForm" class="form-horizontal">
							<div class="form-group">
								<label for="name" class="col-lg-2 control-label">姓名</label>
								<div class="col-lg-10">
									<div class="input-group">
										<input type="text" id="name" name="name"
											class="form-control" placeholder="請輸入姓名"> 
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
									</div><span id="spanRegister2"></span>
								</div>
							</div>
							
							<div class="form-group">
								<label for="gender" class="col-lg-2 control-label">性別</label>
								<div class="col-lg-10">
									<div class="input-group">
										<label id="label1">
                                           <input id="radio1" type="radio" name="gender" value="male" id="genderM"/>男
                                        </label>
                                        <label id="label2">
                                        <input  id="radio2" type="radio" name="gender" value="female" id="genderF"/>女
                                        </label>
									</div><span id="spanRegister"></span>
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
    <div id="dialogLogin-form" title="user login" style="display:none">
						<p class="validateTips">All form fields are required.</p>

						<form id="loginForm" class="form-horizontal">
							<div class="form-group">
								<label for="email" class="col-lg-2 control-label">電子郵件</label>
								<div class="col-lg-10">
									<div class="input-group">
										<input type="email" id="email2" name="email2"
											class="form-control" placeholder="請輸入電子郵件">  <span id="spanEmail"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-lg-2 control-label">密碼</label>
								<div class="col-lg-10">
									<div class="input-group">
										<input type="password" id="password2" name="password2"
											class="form-control" placeholder="請輸入密碼">  <span id="spanPwd"></span>
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

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!--     Theme JavaScript -->
    <script src="js/clean-blog.min.js"></script>
    
    <script src="js/jquerysession.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
	<script>
		$(function(){
			$('#header').load('header.jsp');
			
		});	
	</script> 
       
        <script>
	
// 		$(function() {
				
//             	if (localStorage.chkbx && localStorage.chkbx != '') {
//                     $('#rm').attr('checked', 'checked');
//                     $('#email2').val(localStorage.email2);
//                     $('#password2').val(localStorage.password2);
//                 } else {
//                     $('#rm').removeAttr('checked');
//                     $('#email2').val('');
//                     $('#password2').val('');
//                 }
              
 
//                 $('#rm').on('click',function() {
 
//                     if ($('#rm').is(':checked')) {
//                         // save username and password
                       
//                          $('#spanEmail').text($('#email2').val()).hide();
//                          $('#spanPwd').text($('#password2').val()).hide();
//                          console.log($('#spanPwd').text());
//                         localStorage.email2 = $('#spanEmail').text();
//                         localStorage.password2 =$('#spanPwd').text();
//                         localStorage.chkbx = $('#rm').val();
//                     } else {
//                         localStorage.email2 = '';
//                         localStorage.password2 = '';
//                         localStorage.chkbx = '';
//                     }
//                 });
           
//              $('#buttonLogin').hide();
//              $('#buttonRegister').hide();
// 			$('#logout').click(function() {
// 				$.get("Logout.do", function(data) {
// 					location.reload();
// 				});
// 			})
			
// 			var dialog, formRegister, formLogin, email2 = $("#email2"), email1 = $("#email1"),password2 = $("#password2"), password1 = $("#password1"), name = $("#name")
// 			,addr = $("#address"),phoneno = $("#phoneno"),genderM = $('#genderM'), genderF = $('#genderF'),
// 			emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
// 			allFieldsLogin = $([]).add(email2).add(password2),
// 			tips = $( ".validateTips" ),
// 			allFieldsRegister = $([]).add(name).add(email1).add(password1).add(addr).add(phoneno).add(genderM).add(genderF);
			
// 			function updateTips( t ) {
// 			      tips
// 			        .text( t )
// 			        .addClass( "ui-state-highlight" );
// 			      setTimeout(function() {
// 			        tips.removeClass( "ui-state-highlight", 1500 );
// 			      }, 500 );
// 			    }
			
// 			function checkLength( o, n, min, max ) {
// 			      if ( o.val().length > max || o.val().length < min ) {
// 			        o.addClass( "ui-state-error" );
// 			        updateTips( "Length of " + n + " must be between " +
// 			          min + " and " + max + "." );
// 			        return false;
// 			      } else {
// 			        return true;
// 			      }
// 			    }
			
// 			function checkRegexp( o, regexp, n ) {
// 			      if ( !( regexp.test( o.val() ) ) ) {
// 			        o.addClass( "ui-state-error" );
// 			        updateTips( n );
// 			        return false;
// 			      } else {
// 			        return true;
// 			      }
// 			    }

			

// 			function loginUser() {

// 				var valid = true;
// 			      allFieldsLogin.removeClass( "ui-state-error" );
			 
// 			      valid = valid && checkLength( email2, "email", 6, 80 );
// 			      valid = valid && checkLength( password2, "password", 3, 16 );
			
// 			      valid = valid && checkRegexp( email2, emailRegex, "eg. ui@jquery.com" );
// 			      valid = valid && checkRegexp( password2, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
				
// 				event.preventDefault();
// 				if (valid) {
// 				var data = $('#loginForm').serialize();
// 				$.post("LoginNew.do", data, function(data) {
				
// 					if (data==''){
						
// 						location.reload();
// 					}
// 					else if (data.substring(0, 2) != "We") {
// 						$('#spanPwd').html(data);
// 					} 						
					
// 					else {
// 						$('#spanPwd').empty();

// 						dialogLogin.dialog("close");
// 						location.reload();
// 					}
// 				})
// 				}


// 				return valid;
// 			}
			
// 			function registerUser() {
// 				var valid = true;
// 				 allFieldsRegister.removeClass( "ui-state-error" );
				  
// 			 	  valid = valid && checkLength( name, "name", 3, 80 );
// 			      valid = valid && checkLength( email1, "email", 6, 80 );
// 			      valid = valid && checkLength( password1, "password", 3, 16 );
			      
// 			      valid = valid && checkLength( addr, "address", 3, 50 );
// 			      valid = valid && checkLength( phoneno, "phone #", 3, 16 );
			
// 			      valid = valid && checkRegexp( email1, emailRegex, "eg. ui@jquery.com" );
// 			      valid = valid && checkRegexp( password1, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
// 			      valid = valid && checkRegexp(phoneno,/^([0-9])+$/,"phone no field only allow : 0-9");
			      
// 			    event.preventDefault();
// 			    if (valid) {
// 				var data = $('#registerForm').serialize();
// 				$.post("Register.do", data, function(data) {
// 					if (data.substring(0, 2) != "Su") {
// 						$('#spanRegister').html(data);
// 					} else {
// 						$('#spanRegister').empty();


//  						alert(data);
// 						dialogLogin.dialog("close");
// 						location.reload();
// 					}
// 				})
// 			    }
// 			    return valid;
// 			}

// 			dialogLogin = $("#dialogLogin-form").dialog({
				
// 				closeOnEscape: true,
// 			    open: function(event, ui) {
// 			        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
// 			    },
				
			   
// 				autoOpen : false,
// //  				height: 400,
//  				width :500,
// 				modal : true,
// 				resizable : false,
// 				 buttons: {"Login": loginUser,
// 				        Cancel: function() {
// 				        	if ($('#rm').is(':checked')) {
// 				        	     $('#spanEmail').text($('#email2').val()).hide();
// 		                         $('#spanPwd').text($('#password2').val()).hide();
// 		                        localStorage.email2 = $('#spanEmail').text();
// 		                        localStorage.password2 =$('#spanPwd').text();
// 		                        localStorage.chkbx = $('#rm').val();
// 		                    } else {
// 		                        localStorage.email2 = '';
// 		                        localStorage.password2 = '';
// 		                        localStorage.chkbx = '';
// 		                    }
// 				          dialogLogin.dialog( "close" );
// 				        }
// 				      },
// 				close : function() {
					
// 					$('#spanPwd').empty();
// 					formLogin[0].reset();
// 					allFieldsLogin.removeClass("ui-state-error");
// 				}
// 			});
			
// 			dialogRegister = $("#dialogRegister-form").dialog({
				
// 				closeOnEscape: true,
// 			    open: function(event, ui) {
// 			        $(".ui-dialog-titlebar-close", ui.dialog | ui).hide();
// 			    },
				
				
			
// 				autoOpen : false,
// // 				height: 400,
// 				width : 500,
// 				modal : true,
// 				resizable : false,
// 				buttons : {
// 					"Register": registerUser,
// 			        Cancel:function (){
// 			            dialogRegister.dialog( "close" );
// 			        }
// 				},
// 				close : function() {
// 					$('#spanPwd').empty();
// 					formRegister[0].reset();
// 					allFieldsRegister.removeClass("ui-state-error");
					
// 				}
// 			});

// 			formRegister = dialogRegister.find("#registerForm").on("submit", function(event) {
// 				event.preventDefault();
// 				registerUser();
// 			});
// 			formLogin = dialogLogin.find("#loginForm").on("submit", function(event) {
// 				event.preventDefault();
// 				if ($('#rm').is(':checked')) {
// 	        	     $('#spanEmail').text($('#email2').val()).hide();
//                     $('#spanPwd').text($('#password2').val()).hide();
//                    localStorage.email2 = $('#spanEmail').text();
//                    localStorage.password2 =$('#spanPwd').text();
//                    localStorage.chkbx = $('#rm').val();
//                } else {
//                    localStorage.email2 = '';
//                    localStorage.password2 = '';
//                    localStorage.chkbx = '';
//                }
// 				loginUser();
// 			});

// 			$("#login-user").on("click", function() {
// 				if (localStorage.chkbx != '') {
//                     $('#rm').attr('checked', 'checked');
//                     $('#email2').val(localStorage.email2);
//                     $('#password2').val(localStorage.password2);
//                 } else {
//                     $('#rm').removeAttr('checked');
//                     $('#email2').val('');
//                     $('#password2').val('');
//                 }
// 				dialogLogin.dialog("open").css('overflow', 'hidden');   //hides scroll bar
// 				$('.validateTips').text('All form fields are required.');
// 			});
// 			$("#register-user").on("click", function() {
// 				dialogRegister.dialog("open").css('overflow', 'hidden');;
// 				$('.validateTips').text('All form fields are required.');
// 			});
// 		});
	</script>

</body>

</html>
