package com.search.model;

import java.util.LinkedList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.category.model.CategoryDAO;
import com.category.model.CategoryDAO_interface;
import com.category.model.CategoryVO;
import com.production.model.ProductionVO;

import hibernate.util.HibernateUtil;

public class SearcherDAO {
	private static final String fuzzySearch=
			"from ProductionVO where productName like :productName and for_sale = true and picture_model1 is not null";
	
	private static final String getClassTop=
			"from ProductionVO where categoryId=:categoryId and for_sale = true and picture_model1 is not null";
	
	private static final String getClassBottom=
			"from ProductionVO where categoryId=:categoryId and for_sale = true and picture_color is not null";
	
	private static final String getDiscountProduct=
			"from ProductionVO where packageNo=:packageNo and for_sale = true and picture_model1 is not null";
	
	private static final String getHotProduct=
			"select Top(5) p.productId, p.productName, p.price, os.orderNo, sum(quantity_order) as sum_quantity "+ 
			"from orderItem as o join production as p on o.productId=p.productId join orders as os on o.orderNo = os.orderNo  where o.orderNo in"+
			"(select orderNo from orderItem where productId in(select productId from orderItem where orderNo = :orderNo))"+
			"and os.dealDate BETWEEN (convert(datetime,convert(varchar,GetDate(),111))-30) AND convert(datetime,convert(varchar,GetDate(),111))"+ 
			"group by p.productId, p.productName, p.price, os.orderNo order by sum_quantity desc";
	
	public List<ProductionVO> fuzzySearch(String keyWord){
		List<ProductionVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(fuzzySearch);
			query.setParameter("productName", "%"+keyWord+"%" );
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	public List<ProductionVO> pageSearch(String keyWord, Integer pageNumber){
		List<ProductionVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(fuzzySearch);
			query.setParameter("productName", "%"+keyWord+"%" );
			query.setFirstResult(3*(pageNumber-1));
			query.setMaxResults(3);
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	public List<ProductionVO> getClassTopProduction(List<CategoryVO> listCategory){
		List<ProductionVO> listAll = new LinkedList<ProductionVO>();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			for(CategoryVO VO:listCategory){
				List<ProductionVO> list =null;
				Query query = session.createQuery(getClassTop);
				query.setParameter("categoryId", VO.getCategoryId());
				list = query.list();
				listAll.addAll(list);
			}
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return listAll;
	}
	
	public List<ProductionVO> getClassBottomProduction(List<CategoryVO> listCategory){
		List<ProductionVO> listAll = new LinkedList<ProductionVO>();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			for(CategoryVO VO:listCategory){
				List<ProductionVO> list =null;
				Query query = session.createQuery(getClassBottom);
				query.setParameter("categoryId", VO.getCategoryId());
				list = query.list();
				listAll.addAll(list);
			}
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return listAll;
	}
	
	public List<ProductionVO> getDiscountProduction(Integer packageNo){
		List<ProductionVO> list = new LinkedList<ProductionVO>();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(getDiscountProduct);
			query.setParameter("packageNo", packageNo);
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	public List<Object[]> getHotProduction(Integer orderNo){
		List<Object[]> list = new LinkedList<Object[]>();
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createSQLQuery(getHotProduct);
			query.setParameter("orderNo", orderNo);
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	public static void main(String[] args) {
		SearcherDAO dao = new SearcherDAO();
		List<ProductionVO> list = null;
		
//		list = dao.fuzzySearch("洋裝");
//		list = dao.pageSearch("",2);
//		for(ProductionVO VO:list){
//			System.out.println(VO.getProductName());
//		}
		
//		CategoryDAO_interface dao2 = new CategoryDAO();
//		List<CategoryVO> listCategory = dao2.getClassTop("男");
//		
//		List<ProductionVO> listAll = dao.getClassTopProduction(listCategory);
//		for(ProductionVO VO:listAll){
//			System.out.println(VO.getProductName());
//		}
		
//		list = dao.getDiscountProduction(2);
//		for(ProductionVO VO:list){
//			System.out.println(VO.getProductName());
//		}
		
		List<Object[]> list02 = null;
		list02 = dao.getHotProduction(3);
		for(Object[] A:list02){
//			for(Object name:A){
//				System.out.print(name);
//			}
			System.out.println(A[0]);
		}
	}

}
