package com.example.demo.model;

public class Order {
	private Long id;

	private String orderNo;

	private String status;

	public Order() {
	}

	public Order(String orderNo, String orderStatus) {
		// TODO Auto-generated constructor stub
		this.orderNo = orderNo;
		this.status = orderStatus;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}