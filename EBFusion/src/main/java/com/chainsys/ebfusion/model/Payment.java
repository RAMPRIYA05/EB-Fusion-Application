package com.chainsys.ebfusion.model;

public class Payment {
       
	public Payment() {
		
	}
	String emailId;
	int serviceNumber;
	int paymentId;
	double amount;
	long accountNumber;
	String paymentDate;
	double totalAmount;
	double payedAmount;
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
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public long getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(String paymentDate) {
		this.paymentDate = paymentDate;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public double getPayedAmount() {
		return payedAmount;
	}
	public void setPayedAmount(double payedAmount) {
		this.payedAmount = payedAmount;
	}
	@Override
	public String toString() {
		return "Payment [emailId=" + emailId + ", serviceNumber=" + serviceNumber + ", paymentId=" + paymentId
				+ ", amount=" + amount + ", accountNumber=" + accountNumber + ", paymentDate=" + paymentDate
				+ ", totalAmount=" + totalAmount + ", payedAmount=" + payedAmount + "]";
	}
	
	
}
