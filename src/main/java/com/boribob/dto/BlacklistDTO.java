package com.boribob.dto;

public class BlacklistDTO {
	private String id;
	private String blacklistDate;
	private String blacklistReason;
	public BlacklistDTO(String id, String blacklistDate, String blacklistReason) {
		super();
		this.id = id;
		this.blacklistDate = blacklistDate;
		this.blacklistReason = blacklistReason;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBlacklistDate() {
		return blacklistDate;
	}
	public void setBlacklistDate(String blacklistDate) {
		this.blacklistDate = blacklistDate;
	}
	public String getBlacklistReason() {
		return blacklistReason;
	}
	public void setBlacklistReason(String blacklistReason) {
		this.blacklistReason = blacklistReason;
	}
	@Override
	public String toString() {
		return "BlacklistDTO [id=" + id + ", blacklistDate=" + blacklistDate + ", blacklistReason=" + blacklistReason
				+ "]";
	}
	
	
}
