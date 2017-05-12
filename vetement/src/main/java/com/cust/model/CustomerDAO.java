package com.cust.model;

import org.hibernate.*;

import com.order.model.OrderVO;

import hibernate.util.HibernateUtil;

import java.io.Serializable;
import java.util.*;

public class CustomerDAO implements ICustomerDAO {
	
	private static final String GET_SPEC_CUSTOMER_DATA = 
			//"SELECT customerId,name,gender,mail,pswd,addr_customer,tel FROM customer where mail = ? and pswd = ?";
			"FROM CustomerVO where mail=:mail and pswd=:pswd";
	
	private static final String CHECK_SPEC_CUSTOMER_EXIST = 
			//"SELECT customerId,name,gender,mail,pswd,addr_customer,tel FROM customer where mail = ?";
			"FROM CustomerVO where mail=:mail";
	
	//搜尋符合該帳號的會員資料(有資料代表帳號有存在)
	@Override
	public CustomerVO findbyAccount(String mail) {
		CustomerVO customerVO = new CustomerVO();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			//customerVO = (CustomerVO) session.get(CustomerVO.class, mail);
			Query query = session.createQuery(CHECK_SPEC_CUSTOMER_EXIST);
			query.setParameter("mail", mail);

			customerVO = (CustomerVO) query.uniqueResult();
			
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return customerVO;
	}			
	
	//搜尋符合該帳號與密碼的會員資料
	@Override
	public CustomerVO findbyAccountAndPassword(String mail, String pswd){
		CustomerVO customerVO = new CustomerVO();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try{
			session.beginTransaction();
			Query query = session.createQuery(GET_SPEC_CUSTOMER_DATA);
			query.setParameter("mail", mail);
			query.setParameter("pswd", pswd);
		
			customerVO = (CustomerVO) query.uniqueResult();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return customerVO;
	}

	@Override
	public void insert(CustomerVO customerVO) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try{
			session.beginTransaction();
			session.saveOrUpdate(customerVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public CustomerVO findByPrimaryKey(Integer customerId) {
		CustomerVO customerVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			customerVO = (CustomerVO) session.get(CustomerVO.class, customerId);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return customerVO;
	}		

	
	@Override
	public void update(CustomerVO customerVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(customerVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}		
	}
	
	@Override
	public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId) {
		Set<OrderVO> set = findByPrimaryKey(customerId).getOrderVOs();
		return set;
	}
	
//	public static void main(String[] args) {
//		CustomerDAO custmoerDao = new CustomerDAO();
//		CustomerVO customerVo = new CustomerVO();
//		
//		customerVo = custmoerDao.findByPrimaryKey(1);
//		
//		System.out.println( customerVo.getGender() );
//	}	
	
}


