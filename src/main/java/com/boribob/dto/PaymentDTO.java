package com.boribob.dto;

public class PaymentDTO {
	private int  orderNo;
	private String paySuccess; // 결제성공여부
	private String payId; // 고유 아이디
	private String payTradeId; // 상점거래 ID
	private int payAmount; // 결제금액
	private String payApproval; // 카드승인번호

	public PaymentDTO() {
	}

	public PaymentDTO(int orderNo, String paySuccess, String payId, String payTradeId, int payAmount,
			String payApproval) {
		super();
		this.orderNo = orderNo;
		this.paySuccess = paySuccess;
		this.payId = payId;
		this.payTradeId = payTradeId;
		this.payAmount = payAmount;
		this.payApproval = payApproval;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getPaySuccess() {
		return paySuccess;
	}

	public void setPaySuccess(String paySuccess) {
		this.paySuccess = paySuccess;
	}

	public String getPayId() {
		return payId;
	}

	public void setPayId(String payId) {
		this.payId = payId;
	}

	public String getPayTradeId() {
		return payTradeId;
	}

	public void setPayTradeId(String payTradeId) {
		this.payTradeId = payTradeId;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
	}

	public String getPayApproval() {
		return payApproval;
	}

	public void setPayApproval(String payApproval) {
		this.payApproval = payApproval;
	}

	

}
