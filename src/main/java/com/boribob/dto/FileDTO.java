package com.boribob.dto;

public class FileDTO {
	private int seqFile;
	private int seqReview;
	private String oriName;
	private String sysName;
	
	public FileDTO() {}
	public FileDTO(int seqFile, int seqReview, String oriName, String sysName
	) {
		super();
		this.seqFile = seqFile;
		this.seqReview = seqReview;
		this.oriName = oriName;
		this.sysName = sysName;
		
	}

	
	public int getSeqFile() {
		return seqFile;
	}
	public void setSeqFile(int seqFile) {
		this.seqFile = seqFile;
	}
	public int getSeqReview() {
		return seqReview;
	}
	public void setSeqReview(int seqReview) {
		this.seqReview = seqReview;
	}
	public String getOriName() {
		return oriName;
	}
	public void setOriName(String oriName) {
		this.oriName = oriName;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	@Override
	public String toString() {
		return "FileDTO [seqFile=" + seqFile + ", seqReview=" + seqReview + ", oriName=" + oriName + ", sysName="
				+ sysName + "]";
	}
}
