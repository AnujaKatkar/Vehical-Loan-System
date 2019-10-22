package com.lti.vehicleloan.dto;

public class RegisterDataDTO {

	private String name;
	private String gender;
	private String mobileNumber;
	private String email;
	private String password;
	private String reenterPassword;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getReenterPassword() {
		return reenterPassword;
	}
	public void setReenterPassword(String reenterPassword) {
		this.reenterPassword = reenterPassword;
	}
	
	
}
