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
 
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UploadServlet2 extends HttpServlet {
     
	private static final long serialVersionUID = 1L;

     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
    	request.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=UTF-8");
    	String name = null;
    	String size = null;
    	String color = null;
    	Double price = null;
    	Integer discountCat = null;
    	String descript = null;
    	Integer categoryId = null;
    	Integer noInStock = null;
    	boolean for_sale = false;
        if (request.getParameter("name")!=null&&!request.getParameter("name").equals("")){
    	    name = request.getParameter("name");
        }
        if (request.getParameter("size")!=null&&!request.getParameter("size").equals("")){
            size = request.getParameter("size");
        }
        if (request.getParameter("color")!=null&&!request.getParameter("color").equals("")){
           color = request.getParameter("color");
        }
        if (request.getParameter("price")!=null&&!request.getParameter("price").equals("")){
            price =Double.parseDouble(request.getParameter("price"));
        }
        if (request.getParameter("discountCat")!=null&&!request.getParameter("discountCat").equals("")){
            discountCat = Integer.parseInt(request.getParameter("discountCat"));
        }
        if (request.getParameter("descript")!=null&&!request.getParameter("descript").equals("")){
            descript = request.getParameter("descript");
        }
        if (request.getParameter("categoryId")!=null&&!request.getParameter("categoryId").equals("")){
            categoryId = Integer.parseInt(request.getParameter("categoryId"));
        }
        if (request.getParameter("noInStock")!=null&&!request.getParameter("noInStock").equals("")){
            noInStock = Integer.parseInt(request.getParameter("noInStock"));
        }
        if (request.getParameter("for_sale")!=null&&!request.getParameter("for_sale").equals("")){
            for_sale = Boolean.valueOf(request.getParameter("for_sale"));
        }
         
        InputStream inputStream1 = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        InputStream inputStream4 = null; // input stream of the upload file
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
        
        if (icon != null) {
            // prints out some information for debugging
//            System.out.println(icon.getName());
//            System.out.println(icon.getSize());
//            System.out.println(icon.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = icon.getInputStream();
            bytes1 = IOUtils.toByteArray(inputStream1);
        }
        if (productImg != null) {
            // prints out some information for debugging
//            System.out.println(productImg.getName());
//            System.out.println(productImg.getSize());
//            System.out.println(productImg.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = productImg.getInputStream();
            bytes2 = IOUtils.toByteArray(inputStream2);
        }
        if (colorImg != null) {
            // prints out some information for debugging
            System.out.println(colorImg.getName());
            System.out.println(colorImg.getSize());
            System.out.println(colorImg.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = colorImg.getInputStream();
            bytes3 = IOUtils.toByteArray(inputStream3);
        }
        
        if (modelImg1 != null) {
            // prints out some information for debugging
//            System.out.println(modelImg1.getName());
//            System.out.println(modelImg1.getSize());
//            System.out.println(modelImg1.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = modelImg1.getInputStream();
            bytes4 = IOUtils.toByteArray(inputStream4);
        }
        
        if (modelImg2 != null) {
            // prints out some information for debugging
//            System.out.println(modelImg2.getName());
//            System.out.println(modelImg2.getSize());
//            System.out.println(modelImg2.getContentType());
             
            // obtains input stream of the upload file
            inputStream5 = modelImg2.getInputStream();
            bytes5 = IOUtils.toByteArray(inputStream5);
        } 
        if (modelImg3 != null) {
            // prints out some information for debugging
//            System.out.println(modelImg3.getName());
//            System.out.println(modelImg3.getSize());
//            System.out.println(modelImg3.getContentType());
             
            // obtains input stream of the upload file
            inputStream6 = modelImg3.getInputStream();
            bytes6 = IOUtils.toByteArray(inputStream6);
        } 
        if (modelImg4 != null) {
            // prints out some information for debugging
//            System.out.println(modelImg4.getName());
//            System.out.println(modelImg4.getSize());
//            System.out.println(modelImg4.getContentType());
             
            // obtains input stream of the upload file
            inputStream7 = modelImg4.getInputStream();
            bytes7 = IOUtils.toByteArray(inputStream7);
        } 
         
        try {
            // connects to the database
            ProductionService psvc = new ProductionService();
            psvc.addProduct(name, size, color, price, discountCat, noInStock,for_sale,descript,categoryId, bytes1, bytes2, bytes3, bytes4,bytes5,bytes6,bytes7);
            
            request.setAttribute("result1", "以新增");
            request.getRequestDispatcher("/mangerPage.jsp").forward(request, response);
             
        
 
            
           
        } catch (Exception ex) {
            
            ex.printStackTrace();
        } 

    }
}