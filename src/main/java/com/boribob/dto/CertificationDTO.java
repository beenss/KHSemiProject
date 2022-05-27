package com.boribob.dto;

public class CertificationDTO {
	private String id;
	private String idHash;
	
	public CertificationDTO() {}
	public CertificationDTO(String id, String idHash) {
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
		return "CertificationDTO [id=" + id + ", idHash=" + idHash + "]";
	}
}
