package com.favorite.model;

import java.lang.annotation.Retention;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.mapping.Set;

import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

public class FavoriteDAO implements Favorite_interface{

	private static final String GET_ALL_STMT =
			"select p.productId,productName,p.size,color,p.price from FavoriteVO f join ProductionVO p on f.productId = p.productId where f.customerId = ?";
	private static final String DELETE =
		      "DELETE FROM FavoriteVO where customerId = ? and productId= ?";
	private static final String GET_ONE_STMT =
		      "SELECT customerId,productId FROM FavoriteVO where customerId = ? and productId= ?";
	
	
	@Override
	public void insert(FavoriteVO favoriteVO) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			FavoriteVO favorVO = new FavoriteVO();
			favorVO.setCustomerId(favoriteVO.getCustomerId());
			favorVO.setProductId(favoriteVO.getProductId());
			session.save(favorVO);
			session.getTransaction().commit();
//			System.out.println("新增成功");
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
	}

	@Override
	public void delete(Integer customerId, Integer productId) {
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {

			session.beginTransaction();
			Query query = session.createQuery(DELETE);
			query.setParameter(0, customerId);
			query.setParameter(1, productId);
			query.executeUpdate();
			session.getTransaction().commit();
//			System.out.println("刪除成功");
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		} 
	}

	@Override
	public List<ProductionVO> getAll(Integer customerId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<FavoriteVO> fav = null;
		List<ProductionVO> pro = new ArrayList<ProductionVO>();
		try {
			session.beginTransaction();
			
			Criteria query = session.createCriteria(FavoriteVO.class);
			query.add(Restrictions.eq("customerId",customerId));
			fav = query.list();
			for(FavoriteVO fa:fav){
				Integer pid = fa.getProductId();
				Criteria query2 = session.createCriteria(ProductionVO.class);
				query2.add(Restrictions.eq("productId",pid));
				pro.addAll(query2.list());
			}					
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
		return pro;
	}

	

	@Override
	public List<FavoriteVO> findByPrimaryKey(Integer customerId, Integer productId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<FavoriteVO> list =null;
		try{
			session.beginTransaction();
			Query query = session.createQuery(GET_ONE_STMT);
			query.setParameter(0, customerId);
			query.setParameter(1, productId);
			list = query.list();
			session.getTransaction().commit();
		}catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
		return list;
	}

	public static void main(String[] args){
		
//		FavoriteDAO dao = new FavoriteDAO();
		
//		FavoriteVO vo = new FavoriteVO();
//		vo.setCustomerId(1);
//		vo.setProductId(3);
//		dao.insert(vo);
		
		
//		dao.delete(1, 1);
				
//		List<ProductionVO> list = dao.getAll(1);
//		for(ProductionVO sel : list){
//			System.out.println(sel.getColor());
//			System.out.println(sel.getSize());
//			System.out.println(sel.getProductName());
//		}
		
//		List<FavoriteVO> set = dao.findByPrimaryKey(1, 4);
//		System.out.println(set);
		
		
	}
	

	
	
}
