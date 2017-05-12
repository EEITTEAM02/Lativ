package com.disc.model;
import java.util.*;


import org.hibernate.Query;
import org.hibernate.Session;

import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

import java.sql.*;


public class DiscountDAO implements IDiscountDAO {

	private static final String DELETE =
		      "DELETE FROM DiscountVO where packageNo=:packageNo";
	
	private static final String GET_ALL_STMT =
			"FROM DiscountVO";

	
	@Override
	public Set<ProductionVO> getProductsByPackageNo(Integer packageNo) {		
		Set<ProductionVO>	set = findByPrimaryKey(packageNo).getProducts();
		return set;
	}
	
	@Override
	public int delete(Integer packageNo){

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Integer result_count = null;
		try{
			session.beginTransaction();
			Query query = session.createQuery(DELETE);
			query.setParameter("packageNo", packageNo);

			result_count = query.executeUpdate();

			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return result_count;
	}
	
	
	@Override
	public void insert(DiscountVO discountVO) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try{
			session.beginTransaction();
			session.saveOrUpdate(discountVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public DiscountVO findByPrimaryKey(Integer packageNo) {
		DiscountVO discountVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			discountVO = (DiscountVO) session.get(DiscountVO.class, packageNo);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return discountVO;
	}		
	
	@Override
	public List<DiscountVO> getAll() {
		List<DiscountVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery(GET_ALL_STMT);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}	

	@Override
	public void update(DiscountVO discountVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(discountVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}		
	}
	
	
	public static void main(String[] args) {
		
		//查詢所有折扣規則
//		DiscountDAO dao = new DiscountDAO();
//		List<DiscountVO> list = dao.getAll();
//		for (DiscountVO aDiscount : list) {
//			System.out.print(aDiscount.getPackageNo() + ",");
//			System.out.print(aDiscount.getQuantity_condition() + ",");
//			System.out.print(aDiscount.getDiscount1() + ",");
//			System.out.print(aDiscount.getDiscount2() + ",");
//			System.out.print(aDiscount.getDescript());
//			System.out.println();
//		}
		

		// 查詢單筆折扣規則
//		DiscountDAO dao = new DiscountDAO();
//		DiscountVO discountVO3 = dao.findByPrimaryKey(4);
//		System.out.print(discountVO3.getPackageNo() + ",");
//		System.out.print(discountVO3.getQuantity_condition() + ",");
//		System.out.print(discountVO3.getDiscount1() + ",");
//		System.out.print(discountVO3.getDiscount2() + ",");
//		System.out.print(discountVO3.getDescript() + ",");
//		System.out.println("---------------------");
		
		//修改單筆折扣規則
//		DiscountDAO dao = new DiscountDAO();
//		DiscountVO discountVO4 = new DiscountVO();
//		discountVO4.setPackageNo(13);
//		discountVO4.setQuantity_condition(3);
//		discountVO4.setDiscount1(0.0f);
//		discountVO4.setDiscount2(100.0f);
//		discountVO4.setDescript("3件300");
//		dao.update(discountVO4);

		//新增一筆折扣規則
//		DiscountDAO dao = new DiscountDAO();
//		DiscountVO discountVO1 = new DiscountVO();
//		discountVO1.setQuantity_condition(3);
//		discountVO1.setDiscount1(0.0f);
//		discountVO1.setDiscount2(199.0f);
//		discountVO1.setDescript("3件597");
//		dao.insert(discountVO1);	
		
		//刪除單筆折扣規則
//		DiscountDAO dao = new DiscountDAO();
//		dao.delete(5);
	}
}
