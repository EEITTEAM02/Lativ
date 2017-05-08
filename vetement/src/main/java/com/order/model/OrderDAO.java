package com.order.model;

/*
 Hibernate is providing a factory.getCurrentSession() method for retrieving the current session. A
 new session is opened for the first time of calling this method, and closed when the transaction is
 finished, no matter commit or rollback. But what does it mean by the ��current session��? We need to
 tell Hibernate that it should be the session bound with the current thread.

 <hibernate-configuration>
 <session-factory>
 ...
 <property name="current_session_context_class">thread</property>
 ...
 </session-factory>
 </hibernate-configuration>

 */

import org.hibernate.*;


import com.orderItem.model.OrderItemVO;

import hibernate.util.HibernateUtil;
import java.util.*;

public class OrderDAO implements OrderDAO_interface {

	@Override
	public Set<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo) {
		Set<OrderItemVO>	set = findByPrimaryKey(orderNo).getOrderItemVOs();
		return set;
	}

	private static final String GET_ALL_STMT = "from OrderVO order by orderNo";

	@Override
	public void insert(OrderVO orderVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(orderVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void update(OrderVO orderVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(orderVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void delete(Integer orderNo) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			OrderVO orderVO = new OrderVO();
			orderVO.setOrderNo(orderNo);
			session.delete(orderVO);

			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public OrderVO findByPrimaryKey(Integer orderNo) {
		OrderVO orderVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			orderVO = (OrderVO) session.get(OrderVO.class, orderNo);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return orderVO;
	}

	@Override
	public List<OrderVO> getAll() {
		List<OrderVO> list = null;
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

	public static void main(String[] args) {

		OrderDAO dao = new OrderDAO();

		//�� �s�W
//		com.member.model.MemberVO memberVO = new com.member.model.MemberVO(); // ����POJO
//		memberVO.setMno(201704031007L);
//
//		OrderVO orderVO1 = new OrderVO();
//		orderVO1.setOrderDate(java.sql.Date.valueOf("2005-01-01"));
//		orderVO1.setMemberVO(memberVO);
//		orderVO1.setDeliveryAddr("here");
//		orderVO1.setOrderSum(500.0);
//		dao.insert(orderVO1);



		//�� �ק�
//		OrderVO orderVO2 = new OrderVO();
//		orderVO2.setorderNo(7001);
//		orderVO2.setEname("�d�ç�2");
//		orderVO2.setJob("MANAGER2");
//		orderVO2.setHiredate(java.sql.Date.valueOf("2002-01-01"));
//		orderVO2.setSal(new Double(20000));
//		orderVO2.setComm(new Double(200));
//		orderVO2.setDeptVO(memberVO);
//		dao.update(orderVO2);



		//�� �R��(�p��cascade - �h��emp2.hbm.xml�p�G�]�� cascade="all"��
		// cascade="delete"�N�|�R���Ҧ��������-�]�A���ݳ����P�P�������䥦���u�N�|�@�ֳQ�R��)
		// �ҥH�ثe�b�W��65��67��A�ĥΥh�����p���Y��A�A�R�����覡�A�o�O����w�����覡
//		dao.delete(7014);



		//�� �d��-findByPrimaryKey (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
//		OrderVO orderVO3 = dao.findByPrimaryKey(7001);
//		System.out.print(orderVO3.getEmpno() + ",");
//		System.out.print(orderVO3.getEname() + ",");
//		System.out.print(orderVO3.getJob() + ",");
//		System.out.print(orderVO3.getHiredate() + ",");
//		System.out.print(orderVO3.getSal() + ",");
//		System.out.print(orderVO3.getComm() + ",");
//		// �`�N�H�U�T�檺�g�k (�u!)
//		System.out.print(orderVO3.getDeptVO().getDeptno() + ",");
//		System.out.print(orderVO3.getDeptVO().getDname() + ",");
//		System.out.print(orderVO3.getDeptVO().getLoc());
//		System.out.println("\n---------------------");



		//�� �d��-getAll (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
		List<OrderVO> list = dao.getAll();
		for (OrderVO anOrder : list) {
			System.out.print(anOrder.getOrderNo() + ",");
			System.out.print(anOrder.getDealDate() + ",");
			System.out.print(anOrder.getAddr_send() + ",");
			System.out.print(anOrder.getPrice_total() + ",");
			System.out.print(anOrder.isStatus1() + ",");
			System.out.print(anOrder.getTel_send() + ",");
			System.out.print(anOrder.getName_send() + ",");
			// �`�N�H�U�T�檺�g�k (�u!)
			System.out.print(anOrder.getCustomerVO().getCustomerId() + ",");
			System.out.print(anOrder.getCustomerVO().getName() + ",");
			System.out.print(anOrder.getCustomerVO().getMail());
			System.out.println();
			
			Set<OrderItemVO> set2 = anOrder.getOrderItemVOs();
			for (OrderItemVO anItem : set2) {
				System.out.print("hi:"+anItem.getSeqNo() + ",");
				
				System.out.println();
			}
		}
	}

	@Override
	public List<OrderVO> getOrdersByCustomerId(Integer customerId) {
		List<OrderVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from OrderVO where customerId=:customerId and status1=1 order by dealDate");
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
	public List<OrderItemVO> getShoppingCartOrderItemsByOrderNo(Integer orderNo) {
		List<OrderItemVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from OrderItemVO where orderNo=:orderNo order by ProductId");
			query.setParameter("orderNo", orderNo);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

}
