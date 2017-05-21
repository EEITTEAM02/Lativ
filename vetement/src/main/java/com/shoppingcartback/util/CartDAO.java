package com.shoppingcartback.util;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.order.model.OrderVO;
import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

public class CartDAO {
	private static final String OrderItem_Delete=
			"delete from OrderItemVO where orderNo=:orderNo and productId=:productId";
	
	private static final String OrderItem_Update=
			"update OrderItemVO set quantity_order=:quantity_order, price_discount=:price_discount, price_item=:price_item "
			+ "where orderNo=:orderNo and productId=:productId";
	
	private static final String OrderItem_Delete_All_ByOrderNo = "delete from OrderItemVO where orderNo=:orderNo";
	
	private static final String GetProductForImg = 
			"from ProductionVO where productName=:productName and size=:size and color=:color";
	
	private static final String GetProductForImg02 = 
			"Select picture_main from production where productId=:productId";
	
	public void insertByOrderNo(OrderVO orderVO){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			session.saveOrUpdate(orderVO);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
	}
	
	public void deleteAllByOrderNO(Integer orderNo){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(OrderItem_Delete_All_ByOrderNo);
			query.setParameter("orderNo", orderNo);
			query.executeUpdate();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
	}
	
	public OrderVO findByOrderNo(Integer orderNo){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		OrderVO orderVO = null;
		try{
			session.beginTransaction();
			Query query = session.createQuery(OrderItem_Delete_All_ByOrderNo);
			orderVO = (OrderVO)session.get(OrderVO.class, orderNo);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return orderVO;
	}
	
	public void orderItemVODelete(Integer orderNo,Integer productId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			
			Query query = session.createQuery(OrderItem_Delete);
			query.setParameter("orderNo", orderNo);
			query.setParameter("productId", productId);
			//修改、刪除資料表時需要query.executeUpdate();
			query.executeUpdate();
			
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
	}

	public void orderItemVOUpdate(Integer orderNo,Integer productId,Integer count,
			Double price_discount, Double price_item) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			
			Query query = session.createQuery(OrderItem_Update);
			query.setParameter("orderNo", orderNo);
			query.setParameter("productId", productId);
			query.setParameter("quantity_order", count);
			query.setParameter("price_discount", price_discount);
			query.setParameter("price_item", price_item);
			//修改、刪除資料表時需要query.executeUpdate();
			query.executeUpdate();
			
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
	}
	
	public ProductionVO getProductionForImage(String productName, String size, String color){
		List<ProductionVO> list = null;
		ProductionVO productionVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Criteria query = session.createCriteria(ProductionVO.class);
			query.add(Restrictions.eq("productName", productName));
			query.add(Restrictions.eq("size", size));
			query.add(Restrictions.eq("color", color));
			list = query.list();
			productionVO = list.get(0);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return productionVO;
	}
	
	public ProductionVO getProductionForSearch(Integer productId){
		ProductionVO productionVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			productionVO = (ProductionVO)session.get(ProductionVO.class, productId);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return productionVO;
	}
	
	public byte[] getProductionForImg(Integer productId){
		byte[] pic = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createSQLQuery(GetProductForImg02);
			query.setParameter("productId", productId);
			pic = (byte[])query.list().get(0);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return pic;
	}
	
	public static void main(String args[]){
		CartDAO dao = new CartDAO();
//		dao.orderItemVODelete(1,1);
//		dao.orderItemVOUpdate(1,1,10,2000.0,2001.0);
//		dao.deleteAllByOrderNO(3);
		
//		OrderVO orderVO = dao.findByOrderNo(3);
//		System.out.println(orderVO.getOrderNo());
		
//		ProductionVO VO = dao.getProductionForImage("Pima 棉V領T恤", "L", "紅");
//		ProductionVO VO = dao.getProductionForSearch(1);
//		System.out.println(VO.getProductName());
		
		byte[] pic = dao.getProductionForImg(1);
		System.out.println(pic);
	}
}
