package com.example.demo.controller;

import com.example.demo.model.Order;
import com.example.demo.model.User;
import com.example.demo.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
@RestController
@RequestMapping(value = "/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    @ResponseBody
    public void add(@RequestParam(name = "orderNo") String orderNo) {
        Order order = new Order();
        order.setOrderNo(orderNo);
        order.setStatus("1");
        orderService.insert(order);
    }
}
