package com.boribob.dto;

public class DeliveryDTO {
	
	private int delivery_no;
	private String deliveryStatus;
	
	public int getDelivery_no() {
		return delivery_no;
	}

	public void setDelivery_no(int delivery_no) {
		this.delivery_no = delivery_no;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public DeliveryDTO(int delivery_no, String deliveryStatus) {
		super();
		this.delivery_no = delivery_no;
		this.deliveryStatus = deliveryStatus;
	}

	public DeliveryDTO() {}

	
}
