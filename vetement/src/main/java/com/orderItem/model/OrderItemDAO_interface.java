package com.orderItem.model;

import java.util.*;

public interface OrderItemDAO_interface {
          public void insert(OrderItemVO orderItemVO);
          public void update(OrderItemVO orderItemVO);
          public void delete(Integer seqNo);
          public OrderItemVO findByPrimaryKey(Integer seqNo);
          public List<OrderItemVO> getAll();
          public List<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo);
        
}
