package com.example.demo.rabbit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.service.OrderService;
import com.rabbitmq.client.Channel;

/**
 * 接收消息
 * 
 *
 */
@Component
public class MessageReceiver {
	
	protected static final Logger logger = LoggerFactory.getLogger(MessageReceiver.class);

	@Autowired
	private OrderService orderService;

	/**
	 * 接收者1
	 * 
	 * @param message
	 * @param channel
	 * @throws Exception
	 */
	@RabbitListener(queues = "order_system_queue")
	public void receiverOne(Message message, Channel channel) throws Exception {
		// TODO Auto-generated method stub
		logger.info("MessageReceiver into method receiverOne.");
		String messageStr = new String(message.getBody());

		Notify notify = orderService.updateOrderStatus(new String(message.getBody()));

		if (Notify.ACK == notify) {
			System.out.println("确认成功：" + messageStr);
			channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
		} else if (Notify.REJECT == notify) {
			System.out.println("拒绝：" + messageStr);
			channel.basicReject(message.getMessageProperties().getDeliveryTag(), false);
		} else {
			System.out.println("重新加入队列：" + messageStr);
			channel.basicNack(message.getMessageProperties().getDeliveryTag(), false, true);
		}

	}

	/**
	 * 接收者2
	 * 
	 * @param message
	 * @param channel
	 * @throws Exception
	 */
	@RabbitListener(queues = "order_system_queue")
	public void receiverTwo(Message message, Channel channel) throws Exception {
		// TODO Auto-generated method stub
		logger.info("MessageReceiver into method receiverTwo.");
		String messageStr = new String(message.getBody());

		Notify notify = orderService.updateOrderStatus(new String(message.getBody()));

		if (Notify.ACK == notify) {
			System.out.println("确认成功：" + messageStr);
			channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
		} else if (Notify.REJECT == notify) {
			System.out.println("拒绝：" + messageStr);
			channel.basicReject(message.getMessageProperties().getDeliveryTag(), false);
		} else {
			System.out.println("重新加入队列：" + messageStr);
			channel.basicNack(message.getMessageProperties().getDeliveryTag(), false, true);
		}

	}

}
