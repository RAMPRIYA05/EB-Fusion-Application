package com.chainsys.ebfusion.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.ebfusion.mapper.UserMapper;
import com.chainsys.ebfusion.model.User;

@Repository
public class UserImpl implements UserDAO{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	UserMapper mapper;

	@Override
	public void saveDetails(User user) {
		
		String insert="insert into user(name,email_id,password,phone_number,aadhaar_number,user_type)values(?,?,?,?,?,?)";
		 Object[] params= {user.getName(),user.getEmailId(),user.getPassword(),user.getPhoneNumber(),user.getAadhaarNumber(),user.getUserType()};
  	   int rows=jdbcTemplate.update(insert,params);   	
	}

	

	@Override
	public String getAdminPassword(String emailId) {
		String adminPassword="select password from user where email_id=? and (user_type='admin') and delete_user=0";
		String	password=jdbcTemplate.queryForObject(adminPassword, String.class,emailId);
        return password;
	}



	@Override
	public String getUserPassword(String emailId) {
		String userPassword="select password from user where email_id=? and (user_type='User') and delete_user=0";
		String password=jdbcTemplate.queryForObject(userPassword, String.class,emailId);
        return password;	
	}



	@Override
	public String getUserEmailId(String emailId) {
		String userEmailId="select email_id from user where email_id=? and (user_type='User') and delete_user=0";
		String email=jdbcTemplate.queryForObject(userEmailId, String.class,emailId);
        return email;
		
	}



	@Override
	public List<User> listUsers() {
		String read="Select name,email_id,password,phone_number,aadhaar_number from user where delete_user=0 and (user_type='User')";
		List<User> list=jdbcTemplate.query(read, new UserMapper());		
		return list;
		
	}



	@Override
	public List<User> getUser(String email) {
		String read="Select name,email_id,password,phone_number,aadhaar_number from user where email_id=? and delete_user=0 and user_type='User'";
		List<User> list=jdbcTemplate.query(read, new UserMapper(),email);		
		return list;
		
	}



	@Override
	public List<User> getAdmin(String emailID) {
		String read="Select name,email_id,password,phone_number,aadhaar_number from user where email_id=? and delete_user=0 and user_type='admin'";
		List<User> list=jdbcTemplate.query(read, new UserMapper(),emailID);		
		return list;
	}

	@Override
	public void update(User user) {
	   String update="update user set name=?,phone_number=?,aadhaar_number=? where email_id=?";
	   Object[] params= {user.getName(),user.getPhoneNumber(),user.getAadhaarNumber(),user.getEmailId()};
	   jdbcTemplate.update(update,params);		
	}

	@Override
	public void delete(User user) {
	String delete="update user set delete_user=1 where email_id=?";
	Object[] params= {user.getEmailId()};
	jdbcTemplate.update(delete,params);		
	}
	
}
