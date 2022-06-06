package com.boribob.dto;

public class ReviewDTO {

	private int seqReview;
	private int productCode;
	private String id;
	private String reviewTitle;
	private String reviewContent;
	private String productImg;


	private String reviewDate;

	public ReviewDTO() {
	}

	public ReviewDTO(int seqReview, int productCode, String id, String reviewTitle, String reviewContent, String reviewDate, String productImg) {
		super();
		this.seqReview = seqReview;
		this.productCode = productCode;
		this.id = id;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.productImg = productImg;
	}

	public String getProductImg() {
		return productImg;
	}

	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}

	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	

	public int getProductCode() {
		return productCode;
	}

	public void setProductCode(int productCode) {
		this.productCode = productCode;
	}

	public int getSeqReview() {
		return seqReview;
	}

	public void setSeqReview(int seqReview) {
		this.seqReview = seqReview;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	@Override
	public String toString() {
		return "ReviewDTO [seqReview=" + seqReview + ", productCode=" + productCode + ", id=" + id + ", reviewTitle="
				+ reviewTitle + ", reviewContent=" + reviewContent + ", productImg=" + productImg + ", reviewDate="
				+ reviewDate + "]";
	}
}