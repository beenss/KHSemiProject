package com.boribob.dto;

public class SubscribeDTO {
	private String seqSubscribe;
	private int productCode;
	private String subscribeStart;
	private int subscribeTerm;
	
	public SubscribeDTO() {};
	public SubscribeDTO(String seqSubscribe, int productCode, String subscribeStart, int subscribeTerm) {
		super();
		this.seqSubscribe = seqSubscribe;
		this.productCode = productCode;
		this.subscribeStart = subscribeStart;
		this.subscribeTerm = subscribeTerm;
	}
	public String getSeqSubscribe() {
		return seqSubscribe;
	}
	public void setSeqSubscribe(String seqSubscribe) {
		this.seqSubscribe = seqSubscribe;
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
	@Override
	public String toString() {
		return "SubscribeDTO [seqSubscribe=" + seqSubscribe + ", productCode=" + productCode + ", subscribeStart="
				+ subscribeStart + ", subscribeTerm=" + subscribeTerm + "]";
	}
}
