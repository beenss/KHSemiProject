package com.boribob.dto;

public class PetDTO {
	private String id;
	private String petName;
	private int petAge;
	private int petAllergy;
	private int petWeight;
	private String petKind;
	private String petType;
	
	public PetDTO() {}
	public PetDTO(String id, String petName, int petAge, int petAllergy, int petWeight, String petKind,
			String petType) {
		super();
		this.id = id;
		this.petName = petName;
		this.petAge = petAge;
		this.petAllergy = petAllergy;
		this.petWeight = petWeight;
		this.petKind = petKind;
		this.petType = petType;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public int getPetAllergy() {
		return petAllergy;
	}
	public void setPetAllergy(int petAllergy) {
		this.petAllergy = petAllergy;
	}
	public int getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetKind() {
		return petKind;
	}
	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}
	public String getPetType() {
		return petType;
	}
	public void setPetType(String petType) {
		this.petType = petType;
	}
	@Override
	public String toString() {
		return "PetDTO [id=" + id + ", petName=" + petName + ", petAge=" + petAge + ", petAllergy=" + petAllergy
				+ ", petWeight=" + petWeight + ", petKind=" + petKind + ", petType=" + petType + "]";
	}
}
