package com.example.demo.rabbit;

import org.springframework.amqp.core.AcknowledgeMode;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.connection.ConnectionFactory;
import org.springframework.amqp.rabbit.core.ChannelAwareMessageListener;
import org.springframework.amqp.rabbit.listener.SimpleMessageListenerContainer;
import org.springframework.context.annotation.Bean;

public class RabbitBean {

	public static String defaultQueueName = "order_system_queue";

	@Bean
	public Queue queue(String queueName) {
		if (queueName == null) {
			queueName = defaultQueueName;
		}
		return new Queue(queueName);
	}

	@Bean
	public Queue queue() {
		return new Queue(defaultQueueName);
	}

	@Bean
	public SimpleMessageListenerContainer messageContainer(ConnectionFactory connectionFactory) {
		SimpleMessageListenerContainer container = new SimpleMessageListenerContainer(connectionFactory);
		container.setQueues(queue());
		container.setExposeListenerChannel(true);
		container.setMaxConcurrentConsumers(1);
		container.setConcurrentConsumers(1);
		container.setAcknowledgeMode(AcknowledgeMode.MANUAL);// 消息确认后才能删除
		container.setPrefetchCount(5);// 每次处理5条消息
		container.setMessageListener(new ChannelAwareMessageListener() {
			public void onMessage(Message message, com.rabbitmq.client.Channel channel) throws Exception {
				byte[] body = message.getBody();
				System.out.println("消费端接收到消息 : " + new String(body));
				channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
			}
		});
		return container;
	}
}
