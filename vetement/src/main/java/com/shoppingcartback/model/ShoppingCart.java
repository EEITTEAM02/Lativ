package com.shoppingcartback.model;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.discount.model.DiscountVO;
import com.order.model.OrderVO;
import com.orderItem.model.OrderItemVO;
import com.shoppingcartback.util.CartService;

public class ShoppingCart {
	
	Map<Integer,OrderItemVO> cart = 
			new LinkedHashMap<Integer,OrderItemVO>();
	
	public Map<Integer,OrderItemVO> getCart(){
		return cart;
	}
	
	public void createCart(List<OrderItemVO> list){
		for(OrderItemVO orderItemVO:list){
			cart.put(orderItemVO.getProductionVO().getProductId(), orderItemVO);
			orderItemVO.setPrice_origin(orderItemVO.getProductionVO().getPrice());
		}
	}
	
	public void addToCart(Integer productId,OrderItemVO orderItemVO){
		if(orderItemVO.getQuantity_order()<=0){
			return;
		}
		
		if(cart.get(productId) == null){
			cart.put(productId, orderItemVO);
		}else{
			OrderItemVO oi = cart.get(productId);
			Integer quantity = oi.getQuantity_order()+orderItemVO.getQuantity_order();
			oi.setQuantity_order(quantity);
			cart.put(productId, oi);
		}
	}
	
	public void modifyQty(Integer productId, Integer newQty){
		OrderItemVO oi = cart.get(productId);
		oi.setQuantity_order(newQty);
		cart.put(productId, oi);
	}
	
	public void delete(Integer productId){
		cart.remove(productId);
	}
	
	public Set<DiscountVO> discountSelect(Set<DiscountVO> set){
		List<DiscountVO> list = new ArrayList<DiscountVO>();
		for(DiscountVO dis:set){
			int condition = dis.getQuantity_condition();
			int total = 0;
			
			for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
				int disPackage = item.getValue().getProductionVO().getPackageNo();
				if(disPackage == dis.getPackageNo()){
					total=total+item.getValue().getQuantity_order();
				}
			}
			//若沒有達到條件值，將該種折扣刪除
			if(total<condition){
				list.add(dis);
				//ConcurrentModificationException
				//set.remove(dis);
			}
			
			Integer difference = condition-total;
			for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
				int disPackage = item.getValue().getProductionVO().getPackageNo();
				if(disPackage == dis.getPackageNo()){
					item.getValue().setDifference(difference);
				}
			}
		}
		set.removeAll(list);
//		for(Discount dis:set){
//			System.out.println(dis.getId());
//		}
		
		return set;
	}
	
	public void cartRe(){
		//每次重新計算折扣，都將每個明細內的折扣價與總價歸零
		for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
			OrderItemVO orderItemVO = item.getValue();
			orderItemVO.setPrice_discount(null);
			orderItemVO.setPrice_item(null);
		}
	}
	
	public void discountDeploy(Set<DiscountVO> set){
		for(DiscountVO dis:set){
			int pack_id = dis.getPackageNo();
			Double discount_pattern;
			if(dis.getDiscount1()!=null){
				discount_pattern = dis.getDiscount1();
			}else{
				discount_pattern = dis.getDiscount2();
			}
			
			for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
				OrderItemVO orderItemVO = item.getValue();
				int dis_id = orderItemVO.getProductionVO().getPackageNo();
				Double price_discount=null;
				Double price_item=null;
				
				if(dis_id == pack_id){
					if(discount_pattern>1.0){
						price_discount = discount_pattern;
					}else{
						price_discount = (orderItemVO.getPrice_origin())*discount_pattern;
					}
					price_item = price_discount*(orderItemVO.getQuantity_order());
					
					orderItemVO.setPrice_discount(price_discount);
					orderItemVO.setPrice_item(price_item);
					cart.put(item.getKey(), orderItemVO);
				}
			}
		}
		
		for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
			OrderItemVO orderItemVO = item.getValue();
			Double price_discount=null;
			Double price_item=null;
			//若是經過第一次購買，折價與總價將不是null，此處就無法再次執行
			if(orderItemVO.getPrice_discount()==null){
				price_discount = orderItemVO.getPrice_origin();
				price_item = price_discount*(orderItemVO.getQuantity_order());
				
				orderItemVO.setPrice_discount(price_discount);
				orderItemVO.setPrice_item(price_item);
				cart.put(item.getKey(), orderItemVO);
			}
		}
	}
	
	public void reDatabase(OrderVO orderVO){
		CartService dao = new CartService();
//		dao.deleteAllByOrderNO(orderVO.getOrderNo());
		
		Set<OrderItemVO> set = new LinkedHashSet<OrderItemVO>();
		for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
			OrderItemVO orderItemVO = item.getValue();
			orderItemVO.setOrderVO(orderVO);
			set.add(orderItemVO);
		}
		orderVO.setOrderItemVOs(set);
		dao.insertByOrderNo(orderVO);
	}
	
	public Integer getSize(){
		return cart.size();
	}
	
	public Double getPriceTotal(){
		//若使用Double priceTotal = null;相加時會有NullPointerException;
		Double priceTotal = 0.0;
		for(Map.Entry<Integer, OrderItemVO> item:cart.entrySet()){
			priceTotal = priceTotal+item.getValue().getPrice_item();
		}
		return priceTotal;
	}
}
