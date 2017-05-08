package com.order.model;

import java.util.*;


import com.orderItem.model.OrderItemVO;

public interface OrderDAO_interface {
          public void insert(OrderVO orderVO);
          public void update(OrderVO orderVO);
          public void delete(Integer orderNo);
          public OrderVO findByPrimaryKey(Integer orderNo);
          public List<OrderVO> getAll();
          public List<OrderVO> getOrdersByCustomerId(Integer customerId);
          public Set<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo);
          public List<OrderItemVO> getShoppingCartOrderItemsByOrderNo(Integer orderNo);
}
