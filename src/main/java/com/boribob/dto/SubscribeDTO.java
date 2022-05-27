package com.boribob.dto;

public class SubscribeDTO {
	private int seqSubscribe;
	private int productCode;
	private int subscribeStart;
	private int subscribeTerm;
	
	public SubscribeDTO() {}
	public SubscribeDTO(int seqSubscribe, int productCode, int subscribeStart, int subscribeTerm) {
		super();
		this.seqSubscribe = seqSubscribe;
		this.productCode = productCode;
		this.subscribeStart = subscribeStart;
		this.subscribeTerm = subscribeTerm;
	}
	public int getSeqSubscribe() {
		return seqSubscribe;
	}
	public void setSeqSubscribe(int seqSubscribe) {
		this.seqSubscribe = seqSubscribe;
	}
	public int getProductCode() {
		return productCode;
	}
	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}
	public int getSubscribeStart() {
		return subscribeStart;
	}
	public void setSubscribeStart(int subscribeStart) {
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
