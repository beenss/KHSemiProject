package com.boribob.dto;

public class EmailDTO {
	String id;
	String idHash;
	
	public EmailDTO() {}
	public EmailDTO(String id, String idHash) {
		super();
		this.id = id;
		this.idHash = idHash;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIdHash() {
		return idHash;
	}
	public void setId_hash(String idHash) {
		this.idHash = idHash;
	}
	@Override
	public String toString() {
		return "EmailDTO [id=" + id + ", idHash=" + idHash + "]";
	}
	
	
}
