package com.image.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.activation.DataSource;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.production.model.ProductionService;
import com.production.model.ProductionVO;


public class productImageServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int len = request.getPathInfo().length() ;
		String imageName = null;
		Integer pno = null;

		byte[] content = null;
		try {
        
			   pno = Integer.parseInt(request.getPathInfo().substring(1, len)); // Returns
																	// "index_background.jpg".
			   
//			 System.out.println(pno);
            
            String servletPath = request.getServletPath().substring(1);
//            System.out.println("servletPath:"+servletPath);
			ProductionService psvc = new ProductionService();
			
			if (servletPath.substring(Math.max(0, servletPath.length()-13)).equals("productImages")){
				if(psvc.getOneProduct(pno).getPicture_main()!=null)
			        content = psvc.getOneProduct(pno).getPicture_main();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			else if (servletPath.equals("colorImages")||servletPath.equals("productPages/colorImages")){
				if(psvc.getOneProduct(pno).getPicture_color()!=null)
						content = psvc.getOneProduct(pno).getPicture_color();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			else if (servletPath.equals("modelImages1")||servletPath.equals("productPages/modelImages1")){
				if(psvc.getOneProduct(pno).getPicture_model1()!=null)
				    content = psvc.getOneProduct(pno).getPicture_model1();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			else if (servletPath.equals("modelImages2")||servletPath.equals("productPages/modelImages2")){
				if(psvc.getOneProduct(pno).getPicture_model2()!=null)
				content = psvc.getOneProduct(pno).getPicture_model2();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			else if (servletPath.equals("modelImages3")||servletPath.equals("productPages/modelImages3")){
				if(psvc.getOneProduct(pno).getPicture_model3()!=null)
				content = psvc.getOneProduct(pno).getPicture_model3();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			else if (servletPath.equals("modelImages4")||servletPath.equals("productPages/modelImages4")){
				if(psvc.getOneProduct(pno).getPicture_model4()!=null)
				content = psvc.getOneProduct(pno).getPicture_model4();
				else{
					File fi =new File("C:/Framework-Webapp/eclipse_workspace1/WebsiteV1.3/WebContent/productImages/not_available.jpg");
					byte[] fileContent = Files.readAllBytes(fi.toPath());
					content = fileContent;
				}
			}
			
			response.setContentType(getServletContext().getMimeType("xxx.jpg"));
			response.setContentLength(content.length);
			response.getOutputStream().write(content);

			response.getOutputStream().flush();
			response.getOutputStream().close();

		} catch (Exception e) {
			throw new ServletException("Something failed at SQL/DB level.", e);
		}
	}

}