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

.container ={
margin:0 auto;
}
</style>
</head>
<body>


					
					<!-- 每頁不同的內容從這裡開始 -->
<div class="container" style="border:1px solid #cecece;">
  <div class="row">
    <div class="col-md-6">

        <h1>Upload Product to Database </h1>
        <form method="post" action="UploadServlet2" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Product Name: </td>
                    <td><input type="text" name="name" size="20"/></td>
                </tr>
                <tr>
                    <td>Size: </td>
                    <td><select name="size" style="width:174px;">
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>color: </td>
                    <td><input type="text" name="color" size="20"/></td>
                </tr>
                <tr>
                    <td>price: </td>
                    <td><input type="number" name="price" size="50"/></td>
                </tr>
                <tr>
                    <td>discountCat: </td> 
                    <td ><select id="discountSelect1" name="discountCat" style="width:174px;"></select></td>
                </tr>
                <tr>
                    <td>description: </td>
                    <td><input type="textarea" name="descript" size="20"/></td>
                </tr>
                <tr>
                    <td>categoryId: </td>
                    <td><select id="categoryId1" name="categoryId" style="width:174px;"></select></td>
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
                    <td><select id="categoryId2" style="width:174px;"><option disabled selected value>-- select an option --</option></select></td>
                </tr>
                <tr>
                    <td>Product Number: </td>
                    <td><select name="pno" id="pno" style="width:174px;"><option value="0">0</option></select></td><td><select name="pnoA" id="pnoA" style="width:174px;"></select></td>
                </tr>
                <tr>
                    <td>Product Name: </td>
                    <td><input type="text" name="name" size="20"/></td>
                </tr>
                <tr>
                    <td>Size: </td>
                    <td><select name="size" style="width:174px;">
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>color: </td>
                    <td><input type="text" name="color" size="20"/></td>
                </tr>
                <tr>
                    <td>price: </td>
                    <td><input type="number" name="price" size="50"/></td>
                </tr>
                <tr>
                    <td>discountCat: </td>
                    <td><select id="discountSelect2" name="discountCat" style="width:174px;"></select></td>
                </tr>
                <tr>
                    <td>description: </td>
                    <td><input type="textarea" name="descript" size="20"/></td>
                </tr>
                <tr>
                    <td>categoryId: </td>
                    <td><select id="categoryId3" name="categoryId" style="width:174px;"></select></td>
                </tr>
                
                <tr>
                    <td>noInStock: </td>
                    <td><input type="text" name="noInStock" size="20"/></td>
                </tr>
                <tr>
                    <td>for_sale: </td>
                    <td><select name="for_sale" ><option value="1">上架</option><option value="0">下架</option></select></td>
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
    	 	
    	         $('#pnoA').change(function(){
    	    	    	var pnoA =$('#pnoA').val();
                        console.log("pnoA:"+pnoA);
    	    	    	$('#myForm img').remove();
    	    	    	var image1 = $('<img></img>').attr('src','productImages/'+pnoA).css({'width':'50px','height':'50px'});
    	    	    	var image2 = $('<img></img>').attr('src','colorImages/'+pnoA).css({'width':'50px','height':'50px'});
    	    	    	var image3 = $('<img></img>').attr('src','modelImages1/'+pnoA).css({'width':'50px','height':'50px'});
    	    	    	var image4 = $('<img></img>').attr('src','modelImages2/'+pnoA).css({'width':'50px','height':'50px'});
    	    	    	var image5 = $('<img></img>').attr('src','modelImages3/'+pnoA).css({'width':'50px','height':'50px'}); 
    	    	    	var image6 = $('<img></img>').attr('src','modelImages4/'+pnoA).css({'width':'50px','height':'50px'});
    	    	    	
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
    	    	var image1 = $('<img></img>').attr('src','productImages/'+pno).css({'width':'50px','height':'50px'});
    	    	var image2 = $('<img></img>').attr('src','colorImages/'+pno).css({'width':'50px','height':'50px'});
    	    	var image3 = $('<img></img>').attr('src','modelImages1/'+pno).css({'width':'50px','height':'50px'});
    	    	var image4 = $('<img></img>').attr('src','modelImages2/'+pno).css({'width':'50px','height':'50px'});
    	    	var image5 = $('<img></img>').attr('src','modelImages3/'+pno).css({'width':'50px','height':'50px'}); 
    	    	var image6 = $('<img></img>').attr('src','modelImages4/'+pno).css({'width':'50px','height':'50px'});
    	    	
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