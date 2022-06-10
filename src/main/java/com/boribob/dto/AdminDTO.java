package com.boribob.dto;

public class AdminDTO {
	private String managerId;
	private String managerPw;
	public AdminDTO(String managerId, String managerPw) {
		super();
		this.managerId = managerId;
		this.managerPw = managerPw;
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getManagerPw() {
		return managerPw;
	}
	public void setManagerPw(String managerPw) {
		this.managerPw = managerPw;
	}
	
}
