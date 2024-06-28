package com.chainsys.ebfusion.model;

public class ComplaintDetails {
     
	public ComplaintDetails() {
		
	}
	
	String emailId;
	int serviceNumber;
	int complaintId;
	String description;
	String complaintStatus;
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public int getServiceNumber() {
		return serviceNumber;
	}
	public void setServiceNumber(int serviceNumber) {
		this.serviceNumber = serviceNumber;
	}
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getComplaintStatus() {
		return complaintStatus;
	}
	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}
	@Override
	public String toString() {
		return "ComplaintDetails [emailId=" + emailId + ", serviceNumber=" + serviceNumber + ", complaintId="
				+ complaintId + ", description=" + description + ", complaintStatus=" + complaintStatus + "]";
	}
	
}
