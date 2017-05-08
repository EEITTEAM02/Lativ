package com.production.controller;


import java.io.IOException;
import java.io.InputStream; 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;

import com.production.model.ProductionService;
import com.production.model.ProductionVO;
 
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class ProductModifyServlet2 extends HttpServlet {
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=UTF-8");
    	Integer pno = Integer.parseInt(request.getParameter("pno"));
        String name = request.getParameter("name");
        String size = request.getParameter("size");
        String color = request.getParameter("color");
        Double price =Double.parseDouble(request.getParameter("price"));
        Integer discountCat = Integer.parseInt(request.getParameter("discountCat"));
        String descript = request.getParameter("descript");
        Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
        Integer noInStock = Integer.parseInt(request.getParameter("noInStock"));
        String for_sale0 = request.getParameter("for_sale");
        if (for_sale0.equals("1")){
        	for_sale0 = "true";
        }
        else
        	for_sale0 = "false";
        
        boolean for_sale = Boolean.valueOf(for_sale0);
        
        ProductionService psvc = new ProductionService();
        ProductionVO aProduct = psvc.getOneProduct(pno);
         
        InputStream inputStream1 = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        InputStream inputStream4 = null;
        InputStream inputStream5 = null;
        InputStream inputStream6 = null;
        InputStream inputStream7 = null;
        byte[] bytes1 =null;
        byte[] bytes2 =null;
        byte[] bytes3 =null;
        byte[] bytes4 =null;
        byte[] bytes5 =null;
        byte[] bytes6 =null;
        byte[] bytes7 =null;
        // obtains the upload file part in this multipart request
        Part icon = request.getPart("icon");
        Part productImg = request.getPart("productImg");
        Part colorImg = request.getPart("colorImg");
        Part modelImg1 = request.getPart("modelImg1");
        Part modelImg2 = request.getPart("modelImg2");
        Part modelImg3 = request.getPart("modelImg3");
        Part modelImg4 = request.getPart("modelImg4");
        
        if (icon.getSize()!=0) {
            // prints out some information for debugging
//            System.out.println(icon.getName());
//            System.out.println(icon.getSize());
//            System.out.println(icon.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = icon.getInputStream();
            bytes1 = IOUtils.toByteArray(inputStream1);
        } else{
        	
        	bytes1 =aProduct.getIcon();
        }
        if (productImg.getSize()!=0) {
            // prints out some information for debugging
//            System.out.println(productImg.getName());
//            System.out.println(productImg.getSize());
//            System.out.println(productImg.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = productImg.getInputStream();
            bytes2 = IOUtils.toByteArray(inputStream2);
        } else{
        	
        	bytes2 =aProduct.getPicture_main();
        }
        if (colorImg.getSize() != 0) {
            // prints out some information for debugging
//            System.out.println(colorImg.getName());
//            System.out.println(colorImg.getSize());
//            System.out.println(colorImg.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = colorImg.getInputStream();
            bytes3 = IOUtils.toByteArray(inputStream3);
         }else{
        	 
        	bytes3 =aProduct.getPicture_color();
        }
       
        if (modelImg1.getSize() != 0) {
            // prints out some information for debugging
//            System.out.println(modelImg1.getName());
//            System.out.println(modelImg1.getSize());
//            System.out.println(modelImg1.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = modelImg1.getInputStream();
            bytes4 = IOUtils.toByteArray(inputStream4);
        }
        else{
        	
        	bytes4 =aProduct.getPicture_model1();
        }
        if (modelImg2.getSize() != 0) {
            // prints out some information for debugging
//            System.out.println(modelImg2.getName());
//            System.out.println(modelImg2.getSize());
//            System.out.println(modelImg2.getContentType());
             
            // obtains input stream of the upload file
            inputStream5 = modelImg2.getInputStream();
            bytes5 = IOUtils.toByteArray(inputStream5);
        } 
        else{
        	
        	bytes5 =aProduct.getPicture_model2();
        }
        
        if (modelImg3.getSize() != 0) {
            // prints out some information for debugging
//            System.out.println(modelImg3.getName());
//            System.out.println(modelImg3.getSize());
//            System.out.println(modelImg3.getContentType());
             
            // obtains input stream of the upload file
            inputStream6 = modelImg3.getInputStream();
            bytes6 = IOUtils.toByteArray(inputStream6);
        } 
        else{
        	
        	bytes6 =aProduct.getPicture_model3();
        }
        
        if (modelImg4.getSize() != 0) {
            // prints out some information for debugging
//            System.out.println(modelImg4.getName());
//            System.out.println(modelImg4.getSize());
//            System.out.println(modelImg4.getContentType());
             
            // obtains input stream of the upload file
            inputStream7 = modelImg4.getInputStream();
            bytes7 = IOUtils.toByteArray(inputStream7);
        } 
        else{
        	
        	bytes7 =aProduct.getPicture_model4();
        }
         
        try {
            // connects to the database
            psvc.updateProduct(pno,name, size, color, price, discountCat, noInStock,for_sale,descript,categoryId, bytes1, bytes2, bytes3, bytes4,bytes5,bytes6,bytes7);
            
            request.setAttribute("result2", "modified");
            request.getRequestDispatcher("/uploadProduct2.jsp").forward(request, response);
             
        
 
            
           
        } catch (Exception ex) {
            
            ex.printStackTrace();
        } 

    }
}