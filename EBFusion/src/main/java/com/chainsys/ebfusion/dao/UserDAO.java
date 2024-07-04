package com.chainsys.ebfusion.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.ebfusion.model.Customer;
import com.chainsys.ebfusion.model.User;

@Repository
public interface UserDAO {
	public void saveDetails(User user);
    public String getPassword(String emailId);
//    public String getUserPassword(String emailId);
	public String getUserEmailId(String emailId);
	public List<User> listUsers();
	public List<User> getUser(String email);
	public List<User> getAdmin(String emailID);
	void update(User user);
	void delete(User user);
	List<User> searchUser(String emailId);
	
//	void customerPropertyDetails(Customer customer);
//	List<Customer> readCustomerDetails(String email);
//	public List<Customer> searchCustomerDetails(String emailId);
//	public List<Customer> readCustomer();
	void applyConnection(Customer customer);
	List<Customer> readApplyConnection(String email);
	
	List<Customer> readAllApplyConnection();
	public List<Customer> readApprovedConnection(String email);

	void adminApproveConnection(Customer customer);
}
