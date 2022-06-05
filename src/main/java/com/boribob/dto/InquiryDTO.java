package com.boribob.dto;

public class InquiryDTO {
	private int seqInquiry;
	private String id;
	private String inquiryTitle;
	private String inquiryContent;
	private String inquiryDate;
	private String inquiryAnswer;
	
	public InquiryDTO(int seqInquiry, String id, String inquiryTitle, String inquiryContent, String inquiryDate,
			String inquiryAnswer) {
		super();
		this.seqInquiry = seqInquiry;
		this.id = id;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContent = inquiryContent;
		this.inquiryDate = inquiryDate;
		this.inquiryAnswer = inquiryAnswer;
	}

	public int getSeqInquiry() {
		return seqInquiry;
	}

	public void setSeqInquiry(int seqInquiry) {
		this.seqInquiry = seqInquiry;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContent() {
		return inquiryContent;
	}

	public void setInquiryContent(String inquiryContent) {
		this.inquiryContent = inquiryContent;
	}

	public String getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(String inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	public String getInquiryAnswer() {
		return inquiryAnswer;
	}

	public void setInquiryAnswer(String inquiryAnswer) {
		this.inquiryAnswer = inquiryAnswer;
	}
	
}
