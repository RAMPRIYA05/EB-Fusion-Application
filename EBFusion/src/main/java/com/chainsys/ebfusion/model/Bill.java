package com.chainsys.ebfusion.model;

public class Bill {

	public Bill() {
		
	}
	String emailId;
	int serviceNumber;
	double readingUnits;
    String readingTakenDate;
    String dueDate;
    String serviceType;
    double amount;
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
	public double getReadingUnits() {
		return readingUnits;
	}
	public void setReadingUnits(double readingUnits) {
		this.readingUnits = readingUnits;
	}
	public String getReadingTakenDate() {
		return readingTakenDate;
	}
	public void setReadingTakenDate(String readingTakenDate) {
		this.readingTakenDate = readingTakenDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "Bill [emailId=" + emailId + ", serviceNumber=" + serviceNumber + ", readingUnits=" + readingUnits
				+ ", readingTakenDate=" + readingTakenDate + ", dueDate=" + dueDate + ", serviceType=" + serviceType
				+ ", amount=" + amount + "]";
	}
	
	
}
