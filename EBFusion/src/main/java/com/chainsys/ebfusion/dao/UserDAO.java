package com.chainsys.ebfusion.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.ebfusion.model.CustomerDetails;
import com.chainsys.ebfusion.model.User;

@Repository
public interface UserDAO {
	public void saveDetails(User user);
    public String getAdminPassword(String emailId);
    public String getUserPassword(String emailId);
	public String getUserEmailId(String emailId);
	public List<User> listUsers();

	public List<User> getUser(String email);
	public List<User> getAdmin(String emailID);
	void update(User user);
	void delete(User user);
	
	List<User> searchUser(String emailId);
	//List<User> searchUser(String name, String emailId, long phoneNumber, long aadhaarNumber);
	void customerPropertyDetails(CustomerDetails customerDetails);
}
