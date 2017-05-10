package com.comment.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.*;

import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

public class CommentDAO implements Comment_interface{
	
	private static final String DELETE =
		      "delete from CommentVO where customerId = ? and productId = ?";
	private static final String GET_ALL_STMT =
			"select p.productId,comment,pubtime,orderNo,productName,size,color from CommentVO c join ProductionVO p on c.productId = p.productId where productName = (select productName from ProductionVO where productId = ?)";
	private static final String GET_ONE_STMT =
			"FROM CommentVO where customerId = ? and productId= ?";
	@Override
	public void insert(CommentVO commentVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			
			CommentVO commentvo = new CommentVO();//POJO1-saveOrUpdate-新增或修改
			commentvo.setComment(commentVO.getComment());
			commentvo.setCustomerId(commentVO.getCustomerId());
			commentvo.setProductId(commentVO.getProductId());
			commentvo.setOrderNo(commentVO.getOrderNo());
			Date today = new Date();
			String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(today);
			System.out.println(sdf);
			commentvo.setPubtime(today);
			session.save(commentvo);
			
			session.getTransaction().commit();
			System.out.println("新增成功");
		}catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
	}

	@Override
	public void delete(Integer customerId, Integer productId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(DELETE);
			query.setParameter(0, customerId);
			query.setParameter(1, productId);
			query.executeUpdate();
			session.getTransaction().commit();
			
			System.out.println("刪除成功");
		}catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}	
	}

	@Override
	public List<ComentOnlyVO> getAll(Integer productId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<ComentOnlyVO> list =new ArrayList<ComentOnlyVO>();
		try{
			session.beginTransaction();
			Query query = session.createSQLQuery("{call compro(?)}");
			query.setParameter(0,1);
			List<Object[]> objects =  query.list();
			
			for(Object[] object:objects){
				ComentOnlyVO alist = new ComentOnlyVO();
				alist.setProductId((Integer)object[0]);
				alist.setComment((String)object[1]);
				alist.setPubtime((Timestamp)object[2]);
				alist.setOrderNo((Integer)object[3]);
				alist.setProductName((String)object[4]);
				alist.setSize((String)object[5]);
				alist.setColor((String)object[6]);
				list.add(alist);
			}
			session.getTransaction().commit();
		}catch (Exception e) {
			session.getTransaction().rollback();
			throw e;
		}
		return list;
	}

	@Override
	public Set<CommentVO> findByPrimaryKey(Integer customerId, Integer productId) {
		Set<CommentVO> set = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		
		try{
			session.beginTransaction();
			Query query = session.createQuery(GET_ONE_STMT);
			query.setParameter(0, customerId);
			query.setParameter(1, productId);
			List list = query.list();
			set = new HashSet<CommentVO>(list);
			session.getTransaction().commit();
						
		}catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
		return set;
	}

	public static void main(String[] args){
		CommentDAO dao = new CommentDAO();
		
//		CommentVO commentvo = new CommentVO();
//		commentvo.setComment("88888");
//		commentvo.setCustomerId(3);
//		commentvo.setProductId(1);
//		commentvo.setOrderNo(1);
//		dao.insert(commentvo);
		
//		dao.delete(2,1);
//		
//		List<ComentOnlyVO> list = dao.getAll(1);
//		for (ComentOnlyVO aEmp : list) {
//			System.out.print(aEmp.getComment() + ",");
//			System.out.print(aEmp.getColor() + ",");
//			System.out.print(aEmp.getProductName() + ",");
//			System.out.print(aEmp.getSize() + ",");
//			System.out.print(aEmp.getCustomerId() + ",");
//			System.out.print(aEmp.getOrderNo() + ",");
//			System.out.print(aEmp.getProductId() + ",");
//		//	String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(aEmp.getPubtime());
//		//	System.out.print(sdf + ",");
//			System.out.println();
//		}
		
//		Set<CommentVO> set = dao.findByPrimaryKey(1,1);
//		for (CommentVO aEmp : set) {
//			System.out.print(aEmp.getComment() + ",");
//			System.out.print(aEmp.getCommentNo() + ",");
//			System.out.print(aEmp.getCustomerId() + ",");
//			System.out.print(aEmp.getOrderNo() + ",");
//			String sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(aEmp.getPubtime());
//			System.out.print(sdf + ",");
//			System.out.println();
//		}
//		List  l1 = new LinkedList();
//		List<ComentOnlyVO> sel =  dao.getAll(1);
//		for (ComentOnlyVO aComment : sel) {
//			Map m1 = new HashMap();
//			m1.put("comment", aComment.getComment());
//			m1.put("orderNo", aComment.getOrderNo());
//			m1.put("productName", aComment.getProductName());
//			m1.put("size", aComment.getSize());
//			m1.put("color", aComment.getColor());
//			String sdt = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(aComment.getPubtime());
//			System.out.println(sdt);
//			m1.put("pubtime", sdt);
//			l1.add(m1);	
//		}
//		System.out.println(l1);
	}
}
