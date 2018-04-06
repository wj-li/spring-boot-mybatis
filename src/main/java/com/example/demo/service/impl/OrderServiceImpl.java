package com.example.demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.example.demo.dao.OrderMapper;
import com.example.demo.model.Order;
import com.example.demo.rabbit.Notify;
import com.example.demo.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.insert(record);
	}

	@Override
	public int insertSelective(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.insertSelective(record);
	}

	@Override
	public Order selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKey(record);
	}

	@Override
	public Notify updateOrderStatus(String json) {
		// TODO Auto-generated method stub
		try {
			JSONObject order = JSONObject.parseObject(json);
			String orderNo = order.getString("orderNo");
			String orderStatus = order.getString("orderStatus");
			int updateNum = orderMapper.updateByOrderNo(new Order(orderNo, orderStatus));
			if (updateNum > 0) {
				return Notify.ACK;
			} else {
				return Notify.REJECT;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return Notify.REJECT;
		}
	}

}
