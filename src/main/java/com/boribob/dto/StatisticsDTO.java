package com.boribob.dto;

public class StatisticsDTO {
	
	private Integer statisticsId;
	private String product_name;
	private String member_id;
	private int price;
	private int subscribeTerm;
	private int pay_amount;
	
	
	
	
	public StatisticsDTO(String product_name, String member_id, int price, int subscribeTerm, int pay_amount) {
		super();
		this.product_name = product_name;
		this.member_id = member_id;
		this.price = price;
		this.subscribeTerm = subscribeTerm;
		this.pay_amount = pay_amount;
	}

	public StatisticsDTO(Integer statisticsId, String product_name, String member_id, int price, int subscribeTerm,
			int pay_amount) {
		
		this.statisticsId = statisticsId;
		this.product_name = product_name;
		this.member_id = member_id;
		this.price = price;
		this.subscribeTerm = subscribeTerm;
		this.pay_amount = pay_amount;
	}

	public Integer getStatisticsId() {
		return statisticsId;
	}

	public String getProduct_name() {
		return product_name;
	}

	public String getMember_id() {
		return member_id;
	}

	public int getPrice() {
		return price;
	}

	public int getSubscribeTerm() {
		return subscribeTerm;
	}

	public int getPay_amount() {
		return pay_amount;
	}
	
	
	
}
