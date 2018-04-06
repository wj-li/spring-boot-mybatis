package com.example.demo.controller;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.rabbit.RabbitBean;

/**
 * 发送消息
 *
 */
@RestController
@RequestMapping("/rabbit")
public class RabbitMQController {

	@Autowired
	private AmqpTemplate amqpTemplate;

	/**
	 * 发送消息
	 * 
	 * @param message
	 *            http://127.0.0.1:8080/rabbit/send?message={"orderNo":"10000","orderStatus":"1"}
	 */
	@PostMapping("/send")
	public void send(String message) {
		amqpTemplate.convertAndSend(RabbitBean.defaultQueueName, message);
	}
}
