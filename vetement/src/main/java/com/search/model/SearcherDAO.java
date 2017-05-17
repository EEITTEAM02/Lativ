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
			"select productId, productName, price from production where productName in"+
			" (select Top(10) p.productName from orderItem o join production p on o.productId=p.productId join orders os on o.orderNo = os.orderNo  where o.orderNo in"+
			" (select orderNo from orderItem where productId in (select productId from orderItem where orderNo = :orderNo))"+
			" and os.dealDate BETWEEN (convert(datetime,convert(varchar,GetDate(),111))-30) AND convert(datetime,convert(varchar,GetDate(),111))"+ 
			" group by p.productName order by sum(quantity_order) desc) and picture_model1 is not null";
	
	private static final String autocomplete = "Select distinct productName from ProductionVO "
			+ "where productName like :productName and for_sale = true and picture_model1 is not null";
	
	private static final String getProductByName = "select productId from ProductionVO where productName = :productName and for_sale = true and picture_model1 is not null";
	
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
	
	public List<Object> getAutocompleteSearch(String autoKeyword){
		List<Object> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(autocomplete);
			query.setParameter("productName", "%"+autoKeyword+"%" );
			list = query.list();
			session.getTransaction().commit();
		}catch(RuntimeException ex){
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	public List<Object> getProductByName(String productName){
		List<Object> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try{
			session.beginTransaction();
			Query query = session.createQuery(getProductByName);
			query.setParameter("productName", productName );
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
			for(Object column:A){
				System.out.print(column+", ");
			}
			System.out.println();
		}
		
//		List<Object> list03 = dao.getAutocompleteSearch("童");
//		for(Object ob:list03){
//			System.out.println(ob);
//		}
		
//		List<Object> list04 = dao.getProductByName("PIMA 棉抗UV連帽外套");
//		for(Object ob:list04){
//			System.out.println(ob);
//		}
	}

}
