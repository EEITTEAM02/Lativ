package com.customer.model;


import org.hibernate.*;

import com.order.model.OrderVO;

import hibernate.util.HibernateUtil;

import java.io.Serializable;
import java.util.*;

public class CustomerDAO implements CustomerDAO_interface {

	private static final String GET_ALL_STMT = "from customerVO order by customerId";

	@Override
	public void insert(CustomerVO empVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(empVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void update(CustomerVO empVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(empVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void delete(Integer customerId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			CustomerVO customerVO = new CustomerVO();
			customerVO.setCustomerId(customerId);
			session.delete(customerVO);

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
	public CustomerVO findByMail(String mail) {
		CustomerVO customerVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			String hql = "SELECT customerId FROM CustomerVO where mail = :mail";
			Query query = session.createQuery(hql);
			query.setParameter("mail", mail);
			List<Long> results = query.list();
			if (results.size()==0){
				return null;
			}
			customerVO = (CustomerVO) session.get(CustomerVO.class, results.get(0));
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return customerVO;
	}

	@Override
	public List<CustomerVO> getAll() {
		List<CustomerVO> list = null;
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
	public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId) {
		Set<OrderVO> set = findByPrimaryKey(customerId).getOrderVOs();
		return set;
	}
	public static void main(String[] args) {

		CustomerDAO dao = new CustomerDAO();

		//�� �s�W
//		com.dept.model.DeptVO deptVO = new com.dept.model.DeptVO(); // ����POJO
//		deptVO.setDeptno(10);

//		customerVO memVO1 = new customerVO();
//		memVO1.setName("�d�ç�1");
//		memVO1.setPw("123456");
//		memVO1.setEmail("123@gmail.com");
//		memVO1.setAddr("where");
//		memVO1.setPhoneno(87954);
//		dao.insert(memVO1);

       CustomerVO a = dao.findByMail("b12f3@gmail.com");
       System.out.println(a);

		//�� �ק�
//		customerVO empVO2 = new customerVO();
//		empVO2.setcustomerId(10);
//		empVO2.setName("�d�ç�2");
//		empVO2.setPw("MANAGER2");
//		empVO2.setEmail("new@gmail.com");
//		empVO2.setAddr("here");
//		empVO2.setphoneno(546977);
//		dao.update(empVO2);



		//�� �R��(�p��cascade - �h��emp2.hbm.xml�p�G�]�� cascade="all"��
		// cascade="delete"�N�|�R���Ҧ��������-�]�A���ݳ����P�P�������䥦���u�N�|�@�ֳQ�R��)
		// �ҥH�ثe�b�W��65��67��A�ĥΥh�����p���Y��A�A�R�����覡�A�o�O����w�����覡
	//	dao.delete(10);



		//�� �d��-findByPrimaryKey (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
//		customerVO empVO3 = dao.findByPrimaryKey(10);
//		System.out.print(empVO3.getcustomerId() + ",");
//		System.out.print(empVO3.getName() + ",");
//		System.out.print(empVO3.getPw() + ",");
//		System.out.print(empVO3.getAddr() + ",");
//		System.out.print(empVO3.getEmail() + ",");
//		System.out.print(empVO3.getphoneno() + ",");
//		// �`�N�H�U�T�檺�g�k (�u!)
//		System.out.print(empVO3.getDeptVO().getDeptno() + ",");
//		System.out.print(empVO3.getDeptVO().getDname() + ",");
//		System.out.print(empVO3.getDeptVO().getLoc());
//		System.out.println("\n---------------------");



		//�� �d��-getAll (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
		List<CustomerVO> list = dao.getAll();
		for (CustomerVO aMember : list) {
			System.out.print(aMember.getCustomerId() + ",");
			System.out.print(aMember.getName() + ",");
			System.out.print(aMember.getPswd() + ",");
			System.out.print(aMember.getMail() + ",");
			System.out.print(aMember.getAddr_customer() + ",");
			System.out.print(aMember.getTel() + ",");
			System.out.println("\n-----------------");
			Set<OrderVO> set = aMember.getOrderVOs();
			for (OrderVO anOrderVO : set) {
				System.out.print(anOrderVO.getDealDate() + ",");
				System.out.print(anOrderVO.getAddr_send() + ",");
				
				System.out.println();
			}
			System.out.println();
		}
	}

	
}
