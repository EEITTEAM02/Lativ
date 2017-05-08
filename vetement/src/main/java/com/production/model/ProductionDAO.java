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
	
	public static void main(String[] args) {

		ProductionDAO dao = new ProductionDAO();

		//�� �s�W
//		com.dept.model.DeptVO deptVO = new com.dept.model.DeptVO(); // ����POJO
//		deptVO.setDeptno(10);

//		ProductionVO ProductionVO1 = new ProductionVO();
//		ProductionVO1.setName("輕柔短袖衫-女");
//		ProductionVO1.setSize("S");
//		ProductionVO1.setColor("khaki");
//		ProductionVO1.setPrice(249d);
//		ProductionVO1.setDiscountCat(0);
//		ProductionVO1.setCat1("女");
//		ProductionVO1.setCat2("上衣");
//		ProductionVO1.setCat3("短袖衫");
//		ProductionVO1.setquantity_in_stock(19);
//		ProductionVO1.setAvailable(true);
//		dao.insert(ProductionVO1);



		//�� �ק�
//		ProductionVO ProductionVO1 = new ProductionVO();
//		ProductionVO1.setName("輕柔短袖衫-女");
//		ProductionVO1.setSize("S");
//		ProductionVO1.setColor("khaki");
//		ProductionVO1.setPrice(249d);
//		ProductionVO1.setDiscountCat(0);
//		ProductionVO1.setCat1("女");
//		ProductionVO1.setCat2("上衣");
//		ProductionVO1.setCat3("短袖衫");
//		ProductionVO1.setquantity_in_stock(19);
//		ProductionVO1.setAvailable(true);
//		dao.update(ProductionVO1);



		//�� �R��(�p��cascade - �h��emp2.hbm.xml�p�G�]�� cascade="all"��
		// cascade="delete"�N�|�R���Ҧ��������-�]�A���ݳ����P�P�������䥦���u�N�|�@�ֳQ�R��)
		// �ҥH�ثe�b�W��65��67��A�ĥΥh�����p���Y��A�A�R�����覡�A�o�O����w�����覡
//		dao.delete(2017041007l);



		//�� �d��-findByPrimaryKey (�h��emp2.hbm.xml�����]��lazy="false")(�u!)
//		MemberVO empVO3 = dao.findByPrimaryKey(10);
//		System.out.print(empVO3.getMno() + ",");
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
