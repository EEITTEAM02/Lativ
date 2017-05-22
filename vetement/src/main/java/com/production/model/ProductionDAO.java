package com.production.model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.production.model.ProductionDAO;
import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

public class ProductionDAO implements ProductionDAO_interface{
	
	private static final String GET_ALL_STMT = "from ProductionVO order by productId";

	@Override
	public void insert(ProductionVO ProductionVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(ProductionVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}
	
	@Override
	public List<ProductionVO> getMostInStock(){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<ProductionVO> list = null;
		try {
			session.beginTransaction();
			SQLQuery q = session.createSQLQuery("select top 3 * from production order by quantity_in_stock desc");
			q.addEntity(ProductionVO.class);
			list =q.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	
	
	@Override
	public List<ProductionVO> findByCategoryId(Integer categoryId){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<ProductionVO> list = null;
		try {
			session.beginTransaction();
			Query q = session.createQuery("from ProductionVO where categoryId=:categoryId ");
			q.setParameter("categoryId",categoryId);
			list =q.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	@Override
	public void updateQuantity(Integer productId,Integer quantity_in_stock) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query q = session.createQuery("update ProductionVO set quantity_in_stock=:quantity_in_stock where productId=:productId ");
			q.setParameter("productId",productId);
			q.setParameter("quantity_in_stock", quantity_in_stock);
			q.executeUpdate();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}



	@Override
	public void update(ProductionVO ProductionVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(ProductionVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}

	@Override
	public void delete(Integer productId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

//        �i���ɦh��(�y)�i�ĥ�HQL�R���j
//			Query query = session.createQuery("delete MemberVO where mno=?");
//			query.setParameter(0, mno);
//			System.out.println("�R��������=" + query.executeUpdate());

//        �i�Φ��ɦh��(�])�i�ĥΥh�����p���Y��A�A�R�����覡�j
			ProductionVO ProductionVO = new ProductionVO();
			ProductionVO.setProductId(productId);
			session.delete(ProductionVO);

//        �i���ɦh�褣�i(���y)�ĥ�cascade�p�ŧR���j
//        �i�h��emp2.hbm.xml�p�G�]�� cascade="all"�� cascade="delete"�N�|�R���Ҧ��������-�]�A���ݳ����P�P�������䥦���u�N�|�@�ֳQ�R���j
//			MemberVO empVO = (MemberVO) session.get(MemberVO.class, mno);
//			session.delete(empVO);

			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}

	@Override
	public ProductionVO findByPrimaryKey(Integer productId) {
		ProductionVO ProductionVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			ProductionVO = (ProductionVO) session.get(ProductionVO.class, productId);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return ProductionVO;
	}

	@Override
	public List<ProductionVO> getAll() {
		List<ProductionVO> list = null;
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
	
	//select size,quantity_in_stock,productId,price from production where color=? and productName=?
	
	public List<Object[]> getProductDetails(String color,String productName){
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		List<Object[]> list = null;
				try {
					session.beginTransaction();
					Query query = session.createQuery("select size,quantity_in_stock,productId,price from ProductionVO where color=:color and productName=:productName");
					query.setParameter("color", color);
					query.setParameter("productName", productName);
					list = query.list();
					session.getTransaction().commit();
				} catch (RuntimeException ex) {
					session.getTransaction().rollback();
					throw ex;
				}
		
		return list;
	}
	public static void main(String[] args) {

		ProductionDAO dao = new ProductionDAO();

		List<ProductionVO> list = dao.getAll();
		for (ProductionVO aProduct : list) {
			System.out.print(aProduct.getProductId() + ",");
			System.out.print(aProduct.getProductName() + ",");
			System.out.print(aProduct.getSize() + ",");
			System.out.print(aProduct.getColor() + ",");
			System.out.print(aProduct.getPrice() + ",");
			System.out.print(aProduct.getPackageNo() + ",");

			System.out.print(aProduct.getQuantity_in_stock() + ",");
			System.out.print(aProduct.isFor_sale() + ",");

			System.out.println();
		}
	}

}
