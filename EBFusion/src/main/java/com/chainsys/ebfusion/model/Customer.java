package com.chainsys.ebfusion.model;

public class Customer {

	
	
	public Customer() {
		
	}
	String emailId;
	long serviceNumber;
	String address;
	String district;
	String state;
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	public long getServiceNumber() {
		return serviceNumber;
	}
	public void setServiceNumber(long serviceNumber) {
		this.serviceNumber = serviceNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Customer [emailId=" + emailId + ", serviceNumber=" + serviceNumber + ", address=" + address
				+ ", district=" + district + ", state=" + state + "]";
	}
	
}
