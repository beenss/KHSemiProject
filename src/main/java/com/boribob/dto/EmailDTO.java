package com.boribob.dto;

public class EmailDTO {
	String id;
	String id_hash;
	
	public EmailDTO() {}
	public EmailDTO(String id, String id_hash) {
		super();
		this.id = id;
		this.id_hash = id_hash;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getId_hash() {
		return id_hash;
	}
	public void setId_hash(String id_hash) {
		this.id_hash = id_hash;
	}
	@Override
	public String toString() {
		return "EmailDTO [id=" + id + ", id_hash=" + id_hash + "]";
	}
	
	
}
