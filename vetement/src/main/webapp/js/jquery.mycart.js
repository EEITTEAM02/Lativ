/*
* jQuery myCart - v1.1 - 2017-02-21
* http://asraf-uddin-ahmed.github.io/
* Copyright (c) 2017 Asraf Uddin Ahmed; Licensed None
*/

(function ($) {

  "use strict";
  
  function checkAuth() {
	    var logged = (function() {
	        var isLogged = null;
	        $.ajax({
	            'async': false,
	            'global': false,
	            'url': '/vetement/LoginCheckServlet.do',
	            'success': function(resp) {
	                isLogged = (resp === "1");
	            }
	        });
	        return isLogged;
	    })();
	    return logged;
	}
//Top of OptionManager
  var OptionManager = (function () {
    var objToReturn = {};

    var defaultOptions = {
      currencySymbol: '$',
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      classProductQuantity: 'my-product-quantity',
      classProductRemove: 'my-product-remove',
      classCheckoutCart: 'my-cart-checkout',
      affixCartIcon: true,
      showCheckoutModal: true,
      cartItems: [],
      clickOnAddToCart: function($addTocart) { },
      afterAddOnCart: function(products, totalPrice, totalQuantity) { },
      clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) { },
      checkoutCart: function(products, totalPrice, totalQuantity) { },
      getDiscountPrice: function(products, totalPrice, totalQuantity) { return null; }
    };


    var getOptions = function (customOptions) {
      var options = $.extend({}, defaultOptions);
      if (typeof customOptions === 'object') {
        $.extend(options, customOptions);
      }
      return options;
    }

    objToReturn.getOptions = getOptions;
    return objToReturn;
  }());
//End of OptionManager

//Top of ProductManager
  var ProductManager = (function(){
    var objToReturn = {};
    
    var getAllProducts = function(){
        try {
      		  // ajax call to DB to retrieve stored cart content
      	    var products1 = null;
        	if (checkAuth()){
          	 $.ajax({ 
  		    url: "/vetement/CartContentServlet1.do",
            async:false,
  		    success: function(products) {
  		    	products1 = JSON.parse(products);
          		}
          	 })
         	 return products1 ;
        } 
          	 }catch (e) {

          return e;
        }
       
      }

    /*
    PRIVATE
    */
//    localStorage.products = localStorage.products ? localStorage.products : "";
    var products = getAllProducts();
    var getIndexOfProduct = function(id){
      var productIndex = -1;
      var products = getAllProducts();
      $.each(products, function(index, value){
        if(value.id == id){
          productIndex = index;
          return;
        }
      });
      return productIndex;
    }
    var setAllProducts = function(products){
    	
    		//send product info to DB
    	if (checkAuth()){
    		
    		var list = new Array();
       	 $.each(products, function(){
       		var productInfo = this;
       		list.push(productInfo.id);
       		list.push(productInfo.quantity);
         })
	
    	$.ajax({
      		    type: "POST",
      		    url: "/vetement/CartContentServlet.do",
      		    contentType: "application/json; charset=utf-8", 
      		    'async':false,
      		    data: JSON.stringify(list),
      		    success: function(response) {
//      		    	console.log('back from cartContentServlet!');
      		    }
              })
    		}
    	
//    	console.log(JSON.stringify(products));
    	
//						 localStorage.products = JSON.stringify(products);
    }
    var addProduct = function(id, name, summary, unitPriceO, unitPriceD,size, quantity, image) {
      var products = getAllProducts();
      products.push({
        id: id,
        name: name,
        summary: summary,
        unitPriceO: unitPriceO,
        unitPriceD: unitPriceO,
        size:size,
        quantity: quantity,
        image: image
      });
//      console.log(products);
      setAllProducts(products);
    }

    /*
    PUBLIC
    */
     
    var updatePoduct = function(id, quantity) {
   	 
      var productIndex = getIndexOfProduct(id);
      console.log("line154:"+quantity);
      if(productIndex < 0){
        return false;
      }
      var products = getAllProducts();
      products[productIndex].quantity = typeof quantity === "undefined" ? products[productIndex].quantity * 1 + 1 : parseInt(products[productIndex].quantity)+parseInt(quantity);
      setAllProducts(products);
      return true;
      
    }
    var setProduct = function(id, name, summary, unitPriceO, unitPriceD, size, quantity, image) {
      if(typeof id === "undefined"){
        console.error("id required")
        return false;
      }
      if(typeof size === "undefined"){
          console.error("size required")
          return false;
        }
      if(typeof name === "undefined"){
        console.error("name required")
        return false;
      }
      if(typeof image === "undefined"){
        console.error("image required")
        return false;
      }
      if(!$.isNumeric(unitPriceO)){   	  
        console.error("price is not a number")
        return false;
      }
      if(!$.isNumeric(unitPriceD)){   	  
          console.error("priceD is not a number")
          return false;
        }
      if(!$.isNumeric(quantity)) {
        console.error("quantity is not a number");
        return false;
      }
      summary = typeof summary === "undefined" ? "" : summary;

      if(!updatePoduct(id,quantity)){
        addProduct(id, name, summary, unitPriceO, unitPriceD,size, quantity, image);
      }
    }
    var clearProduct = function(){
      setAllProducts([]);
    }
    var removeProduct = function(id){
      var products = getAllProducts();
      products = $.grep(products, function(value, index) {
        return value.id != id;
      });
      setAllProducts(products);
    }
    var getTotalQuantity = function(){
      var total = 0;
      var products = getAllProducts();
      $.each(products, function(index, value){
        total += value.quantity * 1;
      });
      return total;
    }
    var getTotalPrice = function(){
      var products = getAllProducts();
      var total = 0;
      $.each(products, function(index, value){
        total += value.quantity * value.unitPriceD;
      });
      return total;
    }

    objToReturn.getAllProducts = getAllProducts;
    objToReturn.updatePoduct = updatePoduct;
    objToReturn.setProduct = setProduct;
    objToReturn.clearProduct = clearProduct;
    objToReturn.removeProduct = removeProduct;
    objToReturn.getTotalQuantity = getTotalQuantity;
    objToReturn.getTotalPrice = getTotalPrice;
    return objToReturn;
  }());
//End of ProductManager
  
//Top of loadMyCartEvent
  var loadMyCartEvent = function(userOptions){

    var options = OptionManager.getOptions(userOptions);
    var $cartIcon = $("." + options.classCartIcon);
    var $cartBadge = $("." + options.classCartBadge);
    var classProductQuantity = options.classProductQuantity;
    var classProductRemove = options.classProductRemove;
    var classCheckoutCart = options.classCheckoutCart;

    var idCartModal = 'my-cart-modal';
    var idCartTable = 'my-cart-table';
    var idGrandTotal = 'my-cart-grand-total';
    var idEmptyCartMessage = 'my-cart-empty-message';
    var idDiscountPrice = 'my-cart-discount-price';
    var classProductTotal = 'my-product-total';
    var classAffixMyCartIcon = 'my-cart-icon-affix';


    if(userOptions.cartItems && userOptions.cartItems.constructor === Array) {
      ProductManager.clearProduct();
      $.each(options.cartItems, function() {
        ProductManager.setProduct(this.id, this.name, this.summary, this.unitPriceO, this.unitPriceD,this.size, this.quantity, this.image);
      });
    }

    $cartBadge.text(ProductManager.getTotalQuantity());

    if(!$("#" + idCartModal).length) {
      $('body').append(
        '<div class="modal fade" id="' + idCartModal + '" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">' +
        '<div class="modal-dialog" role="document">' +
        '<div class="modal-content">' +
        '<div class="modal-header">' +
        '<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
        '<h4 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-shopping-cart"></span> 購物車 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;大小 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;原價 &nbsp; &nbsp; &nbsp; 折價 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;數量&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;總價</h4>' +
        '</div>' +
        '<div class="modal-body">' +
        '<table class="table table-hover table-responsive" id="' + idCartTable + '"></table>' +
        '</div>' +
        '<div class="modal-footer">' +
        '<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>' +
        '<button type="button" class="btn btn-primary ' + classCheckoutCart + '">Checkout</button>' +
        '</div>' +
        '</div>' +
        '</div>' +
        '</div>'
      );
    }

    var drawTable = function(){
      var $cartTable = $("#" + idCartTable);
      $cartTable.empty();
    
      var products = ProductManager.getAllProducts();

      
      
//      var getTotalPrice = function(){
//          var products = getAllProducts();
//          var total = 0;
//          $.each(products, function(index, value){
//            total += value.quantity * value.unitPriceD;
//          });
//          return total;
//        }
      $.each(products, function(){
        var total = this.quantity * this.unitPriceD;  //* this.unitPriceD
        $cartTable.append(
          '<tr title="' + this.summary + '" data-id="' + this.id + '" data-unitPriceO="' + this.unitPriceO + '">' +
          '<td class="text-center" style="width: 30px;"><img width="30px" height="30px" src="' + this.image + '"/></td>' +
          '<td style="width: 95px;">' + this.name + '</td>' +
          '<td style="width: 65px;">' + this.size + '</td>' +
          '<td title="Unit Price" style="width: 75px;">' + options.currencySymbol + this.unitPriceO + '</td>' +
          '<td style="width: 90px;">' + options.currencySymbol + this.unitPriceD + '</td>' +  //this.unitPriceD
          '<td title="Quantity" style="width: 60px;">'+ this.quantity + '</td>' +
          '<td title="Total" class="' + classProductTotal + '">' + options.currencySymbol  + total + '</td>' +
          '<td title="Remove from Cart" class="text-center" style="width: 60px;"><a href="javascript:void(0);" class="btn btn-xs btn-danger ' + classProductRemove + '">X</a></td>' +
          '</tr>'
        );
      });

      $cartTable.append(products.length ?
        '<tr>' +
        '<td></td>' +
        '<td><strong>Total</strong></td>' +
        '<td></td>' +
        '<td></td>' +
        '<td><strong id="' + idGrandTotal + '"></strong></td>' +
        '<td></td>' +
        '</tr>'
        : '<div class="alert alert-danger" role="alert" id="' + idEmptyCartMessage + '">Your cart is empty</div>'
      );

      var discountPrice = options.getDiscountPrice(products, ProductManager.getTotalPrice(), ProductManager.getTotalQuantity());
      if(products.length && discountPrice !== null) {
        $cartTable.append(
          '<tr style="color: red">' +
          '<td></td>' +
          '<td><strong>Total (including discount)</strong></td>' +
          '<td></td>' +
          '<td></td>' +
          '<td><strong id="' + idDiscountPrice + '"></strong></td>' +
          '<td></td>' +
          '</tr>'
        );
      }

      showGrandTotal();
//      showDiscountPrice();
    }
    var showModal = function(){
//			    	console.log("2222");
      drawTable();
      $("#" + idCartModal).modal('show');
    }
    var updateCart = function(){
      $.each($("." + classProductQuantity), function(){
        var id = $(this).closest("tr").data("id");
        console.log("line355:"+$(this).val())
        ProductManager.updatePoduct(id, $(this).val());
        drawTable();
      });
    }
    var showGrandTotal = function(){
      $("#" + idGrandTotal).text(options.currencySymbol + ProductManager.getTotalPrice());
    }
    var showDiscountPrice = function(){
      $("#" + idDiscountPrice).text(options.currencySymbol + options.getDiscountPrice(ProductManager.getAllProducts(), ProductManager.getTotalPrice(), ProductManager.getTotalQuantity()));
    }

    /*
    EVENT
    */
    if(options.affixCartIcon) {
      var cartIconBottom = $cartIcon.offset().top * 1 + $cartIcon.css("height").match(/\d+/) * 1;
      var cartIconPosition = $cartIcon.css('position');
      $(window).scroll(function () {
        $(window).scrollTop() >= cartIconBottom ? $cartIcon.addClass(classAffixMyCartIcon) : $cartIcon.removeClass(classAffixMyCartIcon);
      });
    }

    $cartIcon.click(function(){
      options.showCheckoutModal ? showModal() : options.clickOnCartIcon($cartIcon, ProductManager.getAllProducts(), ProductManager.getTotalPrice(), ProductManager.getTotalQuantity());
    });

    $(document).on("input", "." + classProductQuantity, function () {
      var unitPriceO = $(this).closest("tr").data("unitpriceo");
      var id = $(this).closest("tr").data("id");
      var quantity = $(this).val();

      $(this).parent("td").next("." + classProductTotal).text("$" + unitPriceO * quantity);
      ProductManager.updatePoduct(id, quantity);

      $cartBadge.text(ProductManager.getTotalQuantity());
      drawTable();
      showGrandTotal();
//      showDiscountPrice();
    });

    $(document).on('keypress', "." + classProductQuantity, function(e){
      if((e.keyCode >= 48 && e.keyCode <= 57) || (e.keyCode >= 96 && e.keyCode <= 105)){
        return ;
      }
      e.preventDefault();
    });

    $(document).on('click', "." + classProductRemove, function(){
      var $tr = $(this).closest("tr");
      var id = $tr.data("id");
      $tr.hide(500, function(){
        ProductManager.removeProduct(id);
        drawTable();
        $cartBadge.text(ProductManager.getTotalQuantity());
      });
    });

    $("." + classCheckoutCart).click(function(){
      var products = ProductManager.getAllProducts();
      if(!products.length) {
        $("#" + idEmptyCartMessage).fadeTo('fast', 0.5).fadeTo('fast', 1.0);
        return ;
      }
      updateCart();
      options.checkoutCart(ProductManager.getAllProducts(), ProductManager.getTotalPrice(), ProductManager.getTotalQuantity());

      $cartBadge.text(ProductManager.getTotalQuantity());
      $("#" + idCartModal).modal("hide");
    });

  }
//end of loadMyCartEvent


  var MyCart = function (target, userOptions) {
    /*
    PRIVATE
    */
    var $target = $(target);
    var options = OptionManager.getOptions(userOptions);
    var $cartIcon = $("." + options.classCartIcon);
    var $cartBadge = $("." + options.classCartBadge);

    /*
    EVENT
    */
    $target.click(function(){
      options.clickOnAddToCart($target);

      var id = $target.data('id');
      var name = $target.data('name');
      var summary = $target.data('summary');
      var unitPriceO = $target.data('unitpriceo');
      var unitPriceD = $target.data('unitpriced');
      var size = $target.data('size');
      var quantity = $target.data('quantity');
      console.log("line453:"+quantity);
      var image = $target.data('image');
      ProductManager.setProduct(id, name, summary, unitPriceO, unitPriceD,size, quantity, image);
      $cartBadge.text(ProductManager.getTotalQuantity());
      console.log("line455:"+quantity);

      options.afterAddOnCart(ProductManager.getAllProducts(), ProductManager.getTotalPrice(), ProductManager.getTotalQuantity());
    });
  }


  $.fn.myCart = function (userOptions) {
    loadMyCartEvent(userOptions);
    return $.each(this, function () {
      new MyCart(this, userOptions);
    });
  }


})(jQuery);
