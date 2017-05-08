package com.discount.model;

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

import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;
import java.util.*;

public class DiscountDAO implements DiscountDAO_interface {

	private static final String GET_ALL_STMT = "from DiscountVO order by packageNo";

	@Override
	public void insert(DiscountVO discountVO) {
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

	@Override
	public void delete(Integer packageNo) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			DiscountVO discountVO = (DiscountVO) session.get(DiscountVO.class, packageNo);
			session.delete(discountVO);
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
	public Set<ProductionVO> getProductsByPackageNo(Integer packageNo) {		
		Set<ProductionVO>	set = findByPrimaryKey(packageNo).getProducts();
		return set;
	}

	public static void main(String[] args) {

		DiscountDAO dao = new DiscountDAO();

		//�� �s�W-1(�@��dept2.hbm.xml������cascade="save-update" ��cascade="all"���]�w)(���M�j�j,���L��ȤW�ä��`��)(��,�i�Φb�q��D�ɻP�����ɤ@���s�W���\)
//		DiscountVO discountVO = new DiscountVO(); // ����POJO
//		Set<ProductVO> set = new HashSet<ProductVO>();// �ǳƸm�J���u�ƤH,�H�Kcascade="save-update"������
//
//		ProductVO empXX = new ProductVO();   // ���uPOJO1
//		empXX.setEname("�d15");
//		empXX.setJob("MANAGER15");
//		empXX.setHiredate(java.sql.Date.valueOf("2001-01-15"));
//		empXX.setSal(new Double(15000));
//		empXX.setComm(new Double(150));
//		empXX.setDiscountVO(discountVO);
//
//		ProductVO empYY = new ProductVO();   // ���uPOJO2
//		empYY.setEname("�d16");
//		empYY.setJob("MANAGER16");
//		empYY.setHiredate(java.sql.Date.valueOf("2001-01-16"));
//		empYY.setSal(new Double(16000));
//		empYY.setComm(new Double(160));
//		empYY.setDiscountVO(discountVO);
//
//		set.add(empXX);
//		set.add(empYY);
//
//		discountVO.setDname("�s�y��");
//		discountVO.setLoc("���ꦿ��");
//		discountVO.setEmps(set);
//		dao.insert(discountVO);



		//�� �ק�-1(�@��dept2.hbm.xml������cascade="save-update" �� cascade="all"���]�w)(���M�j�j,���L��ȤW�ä��`��)(��,�i�����p�ϥΤ�)
//		DiscountVO discountVO = new DiscountVO(); // ����POJO
//		Set<ProductVO> set = new HashSet<ProductVO>(); // �ǳƸm�J���u�ƤH,�H�Kcascade="save-update"������
//
//		ProductVO empXX = new ProductVO(); // ���uPOJO1
//		empXX.setEmpno(7015); // �i�p�G�W�[ empXX.setEmpno(7015); �h�ܦ�update�j
//		empXX.setEname("�d��15");
//		empXX.setJob("MANAGER15");
//		empXX.setHiredate(java.sql.Date.valueOf("2001-01-15"));
//		empXX.setSal(new Double(15555));
//		empXX.setComm(new Double(155));
//		empXX.setDiscountVO(discountVO);
//
//		ProductVO empYY = new ProductVO(); // ���uPOJO2
//		empYY.setEmpno(7016); // �i�p�G�W�[ empXX.setEmpno(7016); �h�ܦ�update�j
//		empYY.setEname("�d��16");
//		empYY.setJob("MANAGER16");
//		empYY.setHiredate(java.sql.Date.valueOf("2001-01-16"));
//		empYY.setSal(new Double(16666));
//		empYY.setComm(new Double(166));
//		empYY.setDiscountVO(discountVO);
//
//		set.add(empXX);
//		set.add(empYY);
//
//		discountVO.setDeptno(50); // �i�p�G�W�[discountVO.setDeptno(50); �h�ܦ�update�j
//		discountVO.setDname("�s�y��1");
//		discountVO.setLoc("���ꦿ��1");
//		discountVO.setEmps(set);
//		dao.update(discountVO);



		//�� �ק�-2(���ݳ]�wcascade="save-update" �� cascade="all")(�o�O�g�`�n�Ψ쪺�@��ק�)
//		DiscountVO discountVO2 = new DiscountVO(); // ����POJO
//		discountVO2.setDeptno(50); // �i�p�G�W�[discountVO.setDeptno(50); �h�ܦ�update�j
//		discountVO2.setDname("�s�y��2");
//		discountVO2.setLoc("���ꦿ��2");
//		dao.update(discountVO2);



		//���R�� (�W�űj�j!�p�ߨϥ�!)(�@��dept2.hbm.xml������cascade="delete" �� cascade="all"���]�w, �A�[�Winverse="true"�]�w)
//		dao.delete(50);



		//�� �s�W-2(���ݭncascade="save-update" �� cascade="all"���]�w)(�o�O�g�`�n�Ψ쪺�@��s�W)
//		DiscountVO discountVO = new DiscountVO(); // ����POJO
//		discountVO.setDname("�s�y��s");
//		discountVO.setLoc("���ꦿ��s");
//		dao.insert(discountVO);



		//�� �d��-findByPrimaryKey (�u�q!) (�@��dept2.hbm.xml�����]��lazy="false")
//		DiscountVO discountVO3 = dao.findByPrimaryKey(30);
//		System.out.print(discountVO3.getDeptno() + ",");
//		System.out.print(discountVO3.getDname() + ",");
//		System.out.print(discountVO3.getLoc());
//		System.out.println("\n-----------------");
//		Set<ProductVO> set3 = discountVO3.getEmps();
//		for (ProductVO aEmp : set3) {
//			System.out.print(aEmp.getEmpno() + ",");
//			System.out.print(aEmp.getEname() + ",");
//			System.out.print(aEmp.getJob() + ",");
//			System.out.print(aEmp.getHiredate() + ",");
//			System.out.print(aEmp.getSal() + ",");
//			System.out.print(aEmp.getComm() + ",");
//			System.out.print(aEmp.getDiscountVO().getDeptno() + ",");
//			System.out.print(aEmp.getDiscountVO().getDname() + ",");
//			System.out.print(aEmp.getDiscountVO().getLoc());
//			System.out.println();
//		}



		//�� �d��-getAll-1 (�@��dept2.hbm.xml���γ]��lazy="false",�]���S�Ψ�h�誺����)
//		List<DiscountVO> list1 = dao.getAll();
//		for (DiscountVO aDiscount : list1) {
//			System.out.print(aDiscount.getDeptno() + ",");
//			System.out.print(aDiscount.getDname() + ",");
//			System.out.print(aDiscount.getLoc());
//			System.out.println();
//		}



		//�� �d��-getAll-2 (�u�q!!!) (�@��dept2.hbm.xml�����]��lazy="false")
		List<DiscountVO> list2 = dao.getAll();
		for (DiscountVO aDiscount : list2) {
			System.out.print(aDiscount.getPackageNo() + ",");
			System.out.print(aDiscount.getDiscount1() + ",");
			System.out.print(aDiscount.getDiscount2() + ",");
			System.out.print(aDiscount.getQuantity_condition());
			System.out.println("\n-----------------");
			Set<ProductionVO> set2 = aDiscount.getProducts();
			for (ProductionVO aProduct : set2) {
				System.out.print(aProduct.getProductId() + ",");
				System.out.print(aProduct.getProductName() + ",");
				System.out.print(aProduct.getSize() + ",");
				System.out.println();
			}
			System.out.println();
		}

	}
}
