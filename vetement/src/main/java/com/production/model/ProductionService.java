package com.production.model;

import java.util.List;


public class ProductionService {

	private ProductionDAO_interface dao;

	public ProductionService() {
		dao = new ProductionDAO();
	}

	public ProductionVO addProduct(String productName, String size, String color,
			 Double price, Integer packageNo, Integer quantity_in_stock, boolean for_sale,String describe, Integer categoryId, byte[] icon,byte[] picture_main,
			 byte[] picture_color,byte[] picture_model1,byte[] picture_model2,byte[] picture_model3,byte[] picture_model4) {

		ProductionVO productVO = new ProductionVO();

		productVO.setProductName(productName);
		productVO.setSize(size);
		productVO.setColor(color);
		productVO.setPrice(price);
		productVO.setPackageNo(packageNo);
        productVO.setCategoryId(categoryId);
        productVO.setDescribe(describe);
		productVO.setQuantity_in_stock(quantity_in_stock);
		productVO.setFor_sale(for_sale);
		productVO.setIcon(icon);
		productVO.setPicture_main(picture_main);
		productVO.setPicture_color(picture_color);
		productVO.setPicture_model1(picture_model1);
		productVO.setPicture_model2(picture_model2);
		productVO.setPicture_model3(picture_model3);
		productVO.setPicture_model4(picture_model4);

		dao.insert(productVO);

		return productVO;
	}

	public ProductionVO updateProduct(Integer productId, String productName, String size, String color,
			 Double price, Integer packageNo, Integer quantity_in_stock, boolean for_sale,String describe, Integer categoryId, byte[] icon,byte[] picture_main,
			 byte[] picture_color,byte[] picture_model1,byte[] picture_model2,byte[] picture_model3,byte[] picture_model4) {

		ProductionVO productVO = new ProductionVO();
        productVO.setProductId(productId);
        productVO.setProductName(productName);
		productVO.setSize(size);
		productVO.setColor(color);
		productVO.setPrice(price);
		productVO.setPackageNo(packageNo);
        productVO.setCategoryId(categoryId);
        productVO.setDescribe(describe);
		productVO.setQuantity_in_stock(quantity_in_stock);
		productVO.setFor_sale(for_sale);
		productVO.setIcon(icon);
		productVO.setPicture_main(picture_main);
		productVO.setPicture_color(picture_color);
		productVO.setPicture_model1(picture_model1);
		productVO.setPicture_model2(picture_model2);
		productVO.setPicture_model3(picture_model3);
		productVO.setPicture_model4(picture_model4);
		
		dao.update(productVO);

		return dao.findByPrimaryKey(productId);
	}

	public void deleteProduct(Integer productId) {
		dao.delete(productId);
	}
	
	public void updateQuantity(Integer productId,Integer quantity_in_stock){
		dao.updateQuantity(productId, quantity_in_stock);
	}

	public ProductionVO getOneProduct(Integer productId) {
		return dao.findByPrimaryKey(productId);
	}

	public List<ProductionVO> getAll() {
		return dao.getAll();
	}
	public List<ProductionVO> findByCategoryId(Integer categoryId){
		return dao.findByCategoryId(categoryId);
	}
	public List<ProductionVO> getMostInStock(){
		return dao.getMostInStock();
	}
	
}
