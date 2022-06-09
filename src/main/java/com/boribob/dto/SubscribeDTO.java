package com.boribob.dto;

public class SubscribeDTO {
	private String id;
	private int productCode;
	private String subscribeStart;
	private int subscribeTerm;
	private int subscribePrice;
	
	public SubscribeDTO() {}

	public SubscribeDTO(String id, int productCode, String subscribeStart, int subscribeTerm, int subscribePrice) {
		super();
		this.id = id;
		this.productCode = productCode;
		this.subscribeStart = subscribeStart;
		this.subscribeTerm = subscribeTerm;
		this.subscribePrice = subscribePrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public String getSubscribeStart() {
		return subscribeStart;
	}

	public void setSubscribeStart(String subscribeStart) {
		this.subscribeStart = subscribeStart;
	}

	public int getSubscribeTerm() {
		return subscribeTerm;
	}

	public void setSubscribeTerm(int subscribeTerm) {
		this.subscribeTerm = subscribeTerm;
	}

	public int getSubscribePrice() {
		return subscribePrice;
	}

	public void setSubscribePrice(int subscribePrice) {
		this.subscribePrice = subscribePrice;
	}

	
	
}
