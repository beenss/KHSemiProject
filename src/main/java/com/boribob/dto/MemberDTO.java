package com.boribob.dto;

public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private String roadAddress;
	private String post;
	private String detailAddress;
	private String phone;
	private int seqSubscribe;
	
	public MemberDTO() {}
	public MemberDTO(String id, String password, String name, String roadAddress, String post, String detailAddress,
			String phone, int seqSubscribe) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.roadAddress = roadAddress;
		this.post = post;
		this.detailAddress = detailAddress;
		this.phone = phone;
		this.seqSubscribe = seqSubscribe;
	}


	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getSeqSubscribe() {
		return seqSubscribe;
	}
	public void setSeqSubscribe(int seqSubscribe) {
		this.seqSubscribe = seqSubscribe;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", password=" + password + ", name=" + name + ", roadAddress=" + roadAddress
				+ ", post=" + post + ", detailAddress=" + detailAddress + ", phone=" + phone + ", seqSubscribe="
				+ seqSubscribe + "]";
	}
}
