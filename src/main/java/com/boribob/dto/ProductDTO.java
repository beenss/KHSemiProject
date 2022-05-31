package com.boribob.dto;

public class ProductDTO {
	private int productCode;
	private String productName;
	private int productPrice;
	private String productContent;
	private String productImg;

	public ProductDTO() {
	}

	public ProductDTO(int productCode, String productName, int productPrice, String productContent, String productImg) {
		super();
		this.productCode = productCode;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
		this.productImg = productImg;
	}

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductContent() {
		return productContent;
	}

	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}

	@Override
	public String toString() {
		return productCode + " : " + productName + " : " + productPrice + " : " + productContent + " : " + productImg;
	}

}
