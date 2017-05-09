package com.customer_service.model;

import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;


import hibernate.util.HibernateUtil;

public class Customer_ServiceDAO implements Customer_ServiceDAO_interface {
	
	private static final String GET_ALL_STMT = "from Customer_ServiceVO order by no_service desc";
	private static final String GET_CUSTOMERId = "from Customer_ServiceVO where customerId=:customerId order by no_service desc";

	@Override
	public void insert(Customer_ServiceVO Customer_ServiceVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(Customer_ServiceVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}

	@Override
	public void update(Customer_ServiceVO Customer_ServiceVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(Customer_ServiceVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}

	@Override
	public Customer_ServiceVO findByPrimaryKey(Integer no_service) {
		Customer_ServiceVO customer_serviceVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			customer_serviceVO = (Customer_ServiceVO) session.get(Customer_ServiceVO.class, no_service);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return customer_serviceVO;
	}

	@Override
	public List<Customer_ServiceVO> findByCustomerId(Integer customerId) {
		List<Customer_ServiceVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery(GET_CUSTOMERId);
			query.setParameter("customerId", customerId);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	
	@Override
	public List<Customer_ServiceVO> getAll() {
		List<Customer_ServiceVO> list = null;
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
	public void delete(Integer no_service) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Customer_ServiceVO customer_serviceVO = new Customer_ServiceVO();
			customer_serviceVO.setNo_service(no_service);
			session.delete(customer_serviceVO);

			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}
	
	
	public static void main(String[] args) {

		Customer_ServiceDAO dao = new Customer_ServiceDAO();
		
//		List<Customer_ServiceVO> list = dao.getAll();
//		for (Customer_ServiceVO aEmp : list) {
//			System.out.print(aEmp.getNo_service() + ",");
//			System.out.print(aEmp.getCustomerId() + ",");
//			System.out.print(aEmp.getTitle_service() + ",");
//			System.out.print(aEmp.getContent_service() + ",");
//			System.out.print(aEmp.getReply_service() + ",");
//			System.out.print(aEmp.getReceive_date());
//			System.out.println();
//		}
//		Date now = new Date();
//		System.out.println(now);
		List<Customer_ServiceVO> list = dao.findByCustomerId(1);
		for (Customer_ServiceVO aEmp : list) {
			System.out.print(aEmp.getNo_service() + ",");
			System.out.print(aEmp.getCustomerId() + ",");
			System.out.print(aEmp.getTitle_service() + ",");
			System.out.print(aEmp.getContent_service() + ",");
			System.out.print(aEmp.getReply_service() + ",");
			System.out.print(aEmp.getReceive_date());
			System.out.println();
			
		}
	}

}
