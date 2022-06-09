package com.boribob.dto;

public class SubscribeDTO {
	private String id;
	private int productCode;
	private String subscribeStart;
	private int subscribeTerm;
	
	public SubscribeDTO() {}

	public SubscribeDTO(String id, int productCode, String subscribeStart, int subscribeTerm) {
		super();
		this.id = id;
		this.productCode = productCode;
		this.subscribeStart = subscribeStart;
		this.subscribeTerm = subscribeTerm;
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

}
