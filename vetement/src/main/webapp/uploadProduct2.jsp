<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ProductUpload/Modify</title>

<style>

h1#a {
	text-indent: 100%;
	white-space: nowrap;
	overflow: hidden;
}


h1 {
	font-size: 1.2em;
	margin: .6em 0;
}


#myForm2 input {
  width:100%;
  box-sizing:border-box;
}

#myForm2 select {
  width:100%;
  box-sizing:border-box;
}

#myForm input {
  width:100%;
  box-sizing:border-box;
}

#myForm select {
  width:100%;
  box-sizing:border-box;
}

.col-md-6{
position:relative;
}

#myForm,#myForm2{
  min-height:650px;
}

#mybtn1,#mybtn2{
position:absolute;
bottom:0;
}



</style>
</head>
<body>


					
					<!-- 每頁不同的內容從這裡開始 -->
<div class="container-fluid" style="border:1px solid #cecece;">
  <div class="row">
    <div class="col-md-6" >

        <h1>新增產品 </h1>
        <form id="myForm2" method="post" action="UploadServlet2" enctype="multipart/form-data">
            <table >
                <tr>
                    <td>產品名: </td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>大小: </td>
                    <td><select name="size" ">
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>顏色: </td>
                    <td><input type="text" name="color" /></td>
                </tr>
                <tr>
                    <td>價錢: </td>
                    <td><input type="number" name="price" /></td>
                </tr>
                <tr>
                    <td>折價: </td> 
                    <td ><select id="discountSelect1" name="discountCat" ></select></td>
                </tr>
                <tr>
                    <td>描述: </td>
                    <td><input type="textarea" name="descript" /></td>
                </tr>
                <tr>
                    <td>分類: </td>
                    <td><select id="categoryId1" name="categoryId" ></select></td>
                </tr>
                
                <tr>
                    <td>庫存: </td>
                    <td><input type="number" name="noInStock" /></td>
                </tr>
                <tr>
                    <td>上下架: </td>
                    <td><select><option value="true">上架</option><option value="false">下架</option></select></td>
                </tr>
                
                <tr>
                    <td>標誌: </td>
                    <td><input type="file" name="icon" /></td>
                </tr>
                <tr>
                    <td>產品圖: </td>
                    <td><input type="file" name="productImg" /></td>
                </tr>
                <tr>
                    <td>顏色圖: </td>
                    <td><input type="file" name="colorImg" /></td>
                </tr>
                <tr>
                    <td>大圖1: </td>
                    <td><input type="file" name="modelImg1" /></td>
                </tr>
                <tr>
                    <td>大圖2: </td>
                    <td><input type="file" name="modelImg2" /></td>
                </tr>
                <tr>
                    <td>大圖3: </td>
                    <td><input type="file" name="modelImg3" /></td>
                </tr>
                <tr>
                    <td>大圖4: </td>
                    <td><input type="file" name="modelImg4" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <button type="submit" value="Save" class="btn btn-info" id="mybtn1">送出</button>
                    </td>
                </tr>
               
            </table>
        </form>
         <span>${result1}</span>
         </div>
         
         <div class="col-md-6">

        <h1>調整產品 </h1>
        <form id="myForm" method="post" action="ProductModify2.do" enctype="multipart/form-data">
            <table >
               
                <tr>
                    <td>請先選 分類: </td>
                    <td><select id="categoryId2" ><option disabled selected value>-- select an option --</option></select></td>
                </tr>
                <tr>
                    <td>產品編號: </td>
                    <td><select name="pno" id="pno" ><option value="0">0</option></select></td>
<!--                     <td><select name="pnoA" id="pnoA" ></select></td> -->
                </tr>
                <tr>
                    <td>產品名: </td>
                    <td><input type="text" name="name" size="20"/></td>
                </tr>
                <tr>
                    <td>大小: </td>
                    <td><select name="size" >
                    <option value="XL">XL</option>
                    <option value="L">L</option>
                    <option value="M">M</option>
                    <option value="S">S</option>
                    <option value="XS">XS</option>
                    </select></td>
                </tr>
                <tr>
                    <td>顏色: </td>
                    <td><input type="text" name="color" /></td>
                </tr>
                <tr>
                    <td>價錢: </td>
                    <td><input type="number" name="price" /></td>
                </tr>
                <tr>
                    <td>折價: </td>
                    <td><select id="discountSelect2" name="discountCat" ></select></td>
                </tr>
                <tr>
                    <td>描述: </td>
                    <td><input type="textarea" name="descript" /></td>
                </tr>
                <tr>
                    <td>分類: </td>
                    <td><select id="categoryId3" name="categoryId" ></select></td>
                </tr>
                
                <tr>
                    <td>庫存: </td>
                    <td><input type="text" name="noInStock" /></td>
                </tr>
                <tr>
                    <td>上下架: </td>
                    <td><select name="for_sale" ><option value="1">上架</option><option value="0">下架</option></select></td>
                </tr>
                
                <tr>
                    <td>影響同名商品: </td>
                    <td><input type="checkbox" name="checkbox" /></td>
                </tr>
                <tr>
                
                <tr>
                    <td>標誌: </td>
                    <td><input type="file" name="icon" /></td>
                </tr>
                <tr>
                                      
                <tr id="productImg">
                    <td>產品圖: </td>
                    <td><input type="file" name="productImg"/></td>
                </tr>
                <tr id="colorImg">
                    <td>顏色圖: </td>
                    <td><input type="file" name="colorImg"  /></td>
                </tr>
                <tr id="modelImg1">
                    <td>大圖1: </td>
                    <td><input type="file" name="modelImg1" /></td>
                </tr>
                <tr id="modelImg2">
                    <td>大圖2: </td>
                    <td><input type="file" name="modelImg2" /></td>
                </tr>
                <tr id="modelImg3">
                    <td>大圖3: </td>
                    <td><input type="file" name="modelImg3" /></td>
                </tr>
                <tr id="modelImg4">
                    <td>大圖4: </td>
                    <td><input type="file" name="modelImg4" /></td>
                </tr>
                <tr >
                    <td colspan="2">
                        <button type="submit" value="Save" class="btn btn-info " id="mybtn2">送出</button>
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
    			var counter =0;
                for (var i =1;i<=length;i++){
                	
                	var option1 = $('<option></option>').val(i).text(data[i]);
                	var option2 = $('<option></option>').val(i).text(data[i]);
                	var option3 = $('<option></option>').val(i).text(data[i]);               	
                	var option4 = $('<option></option>').val('all').text('不分類');
                	$('#categoryId1').append(option1);
                 	
                	if (counter ===0)             	
                 		$('#categoryId2').append(option4)                	
                 	
                	$('#categoryId2').append(option2);                 	
                 	$('#categoryId3').append(option3);
                 	counter++;
                }
                $('#categoryId2').change(function(){
            		var selectedCat = $('#categoryId2').val();
            		if (selectedCat !== 'all'){
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
            		}
            		
            		else{
            			 $.ajax({
            		    	   'url':'GetAllProdId.do',
            		    	   'success':function(data){
            		    		   var selectPno = $('#pno');
            		    		   selectPno.empty();
            		    		   $.each(data,function(){
            		    			   var option = $('<option></option').val(window.parseInt(this)).text(window.parseInt(this));
            		    			   selectPno.append(option);
            		    		   })
            		    	   }
            		       }) 
            		}
            	});
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
    	        	    	$('#myForm select:eq(3)').val(data.size);   //look for the option with val data.size and select it
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
    	    	    console.log(data.size);
    	    		$('#myForm input:eq(0)').val(data.name);
        	    	$('#myForm select:eq(2)').val(data.size).change;   //look for the option with val data.size and select it
        	    	$('#myForm input:eq(1)').val(data.color);
        	    	$('#myForm input:eq(2)').val(data.price);
        	    	$('#myForm select:eq(3)').val(data.discountCat).change;
        	    	$('#myForm input:eq(3)').val(data.descript);
        	    	$('#myForm select:eq(4)').val(data.categoryId).change;
        	    	$('#myForm input:eq(4)').val(data.noInStock);
        	    	$('#myForm select:eq(5)').val(data.for_sale).change;
        	    	
        	    	
    	    	})
    	    	
    	    })
    	
    })
    </script>

</body>
</html>