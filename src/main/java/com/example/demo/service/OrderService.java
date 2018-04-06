package com.example.demo.service;

import com.example.demo.model.Order;
import com.example.demo.rabbit.Notify;

public interface OrderService {
    int deleteByPrimaryKey(Long id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    Notify updateOrderStatus(String json);
}