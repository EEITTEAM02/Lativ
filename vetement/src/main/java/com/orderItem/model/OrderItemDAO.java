package com.orderItem.model;

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
import hibernate.util.HibernateUtil;
import java.util.*;

public class OrderItemDAO implements OrderItemDAO_interface {

	private static final String GET_ALL_STMT = "from OrderItemVO order by seqNo";

	

	@Override
	public void insert(OrderItemVO orderItemVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(orderItemVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void update(OrderItemVO orderItemVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(orderItemVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void delete(Integer seqNo) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			OrderItemVO orderItemVO = new OrderItemVO();
			orderItemVO.setSeqNo(seqNo);
			session.delete(orderItemVO);

		session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public OrderItemVO findByPrimaryKey(Integer seqNo) {
		OrderItemVO orderItemVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			orderItemVO = (OrderItemVO) session.get(OrderItemVO.class, seqNo);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return orderItemVO;
	}

	@Override
	public List<OrderItemVO> getAll() {
		List<OrderItemVO> list = null;
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
	public List<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo) {
		List<OrderItemVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery("from OrderItemVO where orderNo=:orderNo order by productId");
			query.setParameter("orderNo", orderNo);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	


	public static void main(String[] args) {

		OrderItemDAO dao = new OrderItemDAO();

		//�� �s�W
//		com.order.model.OrderVO orderVO = new com.order.model.OrderVO(); // ����POJO
//		orderVO.setOno(1);
//		
//		com.product.model.ProductVO productVO = new com.product.model.ProductVO(); // ����POJO
//		productVO.setPno(1111111001L);
//
//		OrderItemVO orderItemVO1 = new OrderItemVO();
//
//		orderItemVO1.setOrderVO(orderVO);
//		orderItemVO1.setProductVO(productVO);
//		orderItemVO1.setQuantity(99);
//		orderItemVO1.setDiscountedPrice(99);
//		dao.insert(orderItemVO1);



		//�� �ק�
//		OrderItemVO orderItemVO2 = new OrderItemVO();
//		orderItemVO2.setseqNo(7001);
//		orderItemVO2.setEname("�d�ç�2");
//		orderItemVO2.setJob("MANAGER2");
//		orderItemVO2.setHiredate(java.sql.Date.valueOf("2002-01-01"));
//		orderItemVO2.setSal(new Double(20000));
//		orderItemVO2.setComm(new Double(200));
//		orderItemVO2.setDeptVO(memberVO);
//		dao.update(orderItemVO2);



		//�� �R��(�p��cascade - �h��emp2.hbm.xml�p�G�]�� cascade="all"��
		// cascade="delete"�N�|�R���Ҧ��������-�]�A���ݳ����P�P�������䥦���u�N�|�@�ֳQ�R��)
		// �ҥH�ثe�b�W��65��67��A�ĥΥh�����p���Y��A�A�R�����覡�A�o�O����w�����覡
//		dao.delete(5);



		//�� �d��-findByPrimaryKey (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
//		OrderItemVO orderItemVO3 = dao.findByPrimaryKey(7001);
//		System.out.print(orderItemVO3.getEmpno() + ",");
//		System.out.print(orderItemVO3.getEname() + ",");
//		System.out.print(orderItemVO3.getJob() + ",");
//		System.out.print(orderItemVO3.getHiredate() + ",");
//		System.out.print(orderItemVO3.getSal() + ",");
//		System.out.print(orderItemVO3.getComm() + ",");
//		// �`�N�H�U�T�檺�g�k (�u!)
//		System.out.print(orderItemVO3.getDeptVO().getDeptno() + ",");
//		System.out.print(orderItemVO3.getDeptVO().getDname() + ",");
//		System.out.print(orderItemVO3.getDeptVO().getLoc());
//		System.out.println("\n---------------------");



		//�� �d��-getAll (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
		List<OrderItemVO> list = dao.getAll();
		for (OrderItemVO anOrderItem : list) {
			System.out.print(anOrderItem.getSeqNo() + ",");

			System.out.print(anOrderItem.getQuantity_order() + ",");
			System.out.print(anOrderItem.getPrice_origin() + ",");
			System.out.print(anOrderItem.getPrice_discount() + ",");
			System.out.print(anOrderItem.getPrice_item() + ",");
			System.out.print(anOrderItem.getProductionVO().getProductId() + ",");
			System.out.print(anOrderItem.getProductionVO().getProductName() + ",");
            
			System.out.print(anOrderItem.getOrderVO().getOrderNo() + ",");
			System.out.print(anOrderItem.getOrderVO().getPrice_total() + ",");
			System.out.println();
		}
	}

}
