package com.chainsys.ebfusion.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.chainsys.ebfusion.model.Bill;
import com.chainsys.ebfusion.model.Complaint;
import com.chainsys.ebfusion.model.Customer;
import com.chainsys.ebfusion.model.Payment;
import com.chainsys.ebfusion.model.User;

@Repository
public interface UserDAO {
	public void saveDetails(User user);
    public String getPassword(String emailId);
	public String getUserEmailId(String emailId);
	public List<User> listUsers();
	public List<User> getUser(String email);
	public List<User> getAdmin(String emailID);
	public void update(User user);
	public void delete(User user);
	public List<User> searchUser(String emailId);
	
	public void applyConnection(Customer customer);
	public List<Customer> readApplyConnection(String email);
	public List<Customer> readAllApplyConnection();
	public List<Customer> readApprovedConnection(String email);
	public void adminApproveConnection(Customer customer);
	public List<Customer> allApprovedConnection();
	
	public void enterBill(Bill bill);
	public List<Bill> viewBill();
	public List<Bill> readBill(String email);
	List<Bill> readPaidBill(String email);
	
	public void payAmount(Payment payment);
	public List<Payment> checkPayment(String email);
	public List<Payment> viewPayment();
	void updatePaidStatus(Payment payment);
	public void applyComplaint(Complaint complaint);
	
}
