package com.category.model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernate.util.HibernateUtil;

public class CategoryDAO implements CategoryDAO_interface {

	@Override
	public CategoryVO findByPrimaryKey(Integer categoryId) {
		CategoryVO categoryVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			categoryVO = (CategoryVO)session.get(CategoryVO.class,categoryId);
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return categoryVO;
	}

	@Override
	public List<CategoryVO> getClassTop(String class_top) {
		List<CategoryVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery("from CategoryVO where class_top=:class_top");
			query.setParameter("class_top", class_top);
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

	public static void main(String[] args) {
		CategoryDAO_interface dao = new CategoryDAO();
		
		CategoryVO categoryVO = dao.findByPrimaryKey(1);
		System.out.print(categoryVO.getClass_top()+",");
		System.out.print(categoryVO.getClass_middle()+",");
		System.out.println(categoryVO.getClass_bottom());
		
		List<CategoryVO> list = dao.getClassTop("男");
		for(CategoryVO VO : list){
			System.out.print(VO.getCategoryId());
		}
	}

}
