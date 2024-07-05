package com.chainsys.ebfusion.dao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.ebfusion.mapper.BillMapper;
import com.chainsys.ebfusion.mapper.CustomerMapper;
import com.chainsys.ebfusion.mapper.PaymentMapper;
import com.chainsys.ebfusion.mapper.UserMapper;
import com.chainsys.ebfusion.model.Bill;
import com.chainsys.ebfusion.model.Customer;
import com.chainsys.ebfusion.model.Payment;
import com.chainsys.ebfusion.model.User;

@Repository
public class UserImpl implements UserDAO{
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	UserMapper mapper;
	CustomerMapper customerMapper;
	BillMapper billMapper;
	PaymentMapper paymentMapper;
	
	@Override
	public void saveDetails(User user) {		
		String insert="insert into user(name,email_id,password,phone_number,aadhaar_number,user_type)values(?,?,?,?,?,?)";
		 Object[] params= {user.getName(),user.getEmailId(),user.getPassword(),user.getPhoneNumber(),user.getAadhaarNumber(),user.getUserType()};
  	   int rows=jdbcTemplate.update(insert,params);   	
	}
	
	@Override
	public String getPassword(String emailId) {
		String adminPassword="select password from user where email_id=? and delete_user=0";
		String	password=jdbcTemplate.queryForObject(adminPassword, String.class,emailId);
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
	
	@Override
	public List<User> searchUser(String emailId){
		 String retrive = String.format 
	                (
	                    "SELECT name,email_id,password,phone_number,aadhaar_number FROM user " +
	                    "WHERE (name LIKE '%%%s%%' OR email_id LIKE '%%%s%%' OR phone_number LIKE '%%%s%%' OR aadhaar_number LIKE '%%%s%%' ) " +
	                    "AND delete_user=0",
	                    emailId, emailId, emailId, emailId
	                );
        return jdbcTemplate.query(retrive, new UserMapper());
    }

	@Override
	public void applyConnection(Customer customer) {		
		String insert="insert into customer_details(email_id,service_number,service_type,address,district,state,connection_status,address_proof)values(?,?,?,?,?,?,?,?)";
		 Object[] params= {customer.getEmailId(),customer.getServiceNumber(),customer.getServiceType(),customer.getAddress(),customer.getDistrict(),customer.getState(),customer.getConnectionStatus(),customer.getAddressProof()};		
		 int rows=jdbcTemplate.update(insert,params);   	
	}
	
	@Override
	public List<Customer> readApplyConnection(String email) {
		String read="Select email_id,service_number,service_type,address,district,state,connection_status,address_proof from customer_details where email_id=? and connection_status='applied'";
		List<Customer> list=jdbcTemplate.query(read, new CustomerMapper(),email);		
		return list;		
	}

	@Override
	public List<Customer> readAllApplyConnection() {
		String read="SELECT email_id,service_number,service_type,address,district,state,connection_status,address_proof from customer_details where connection_status='applied'";
		List<Customer> list=jdbcTemplate.query(read,new CustomerMapper());
			return list;	
	}

	@Override
	public List<Customer> readApprovedConnection(String email) {
		String read="Select email_id,service_number,service_type,address,district,state,connection_status,address_proof from customer_details where email_id=? and connection_status='approved'";
		List<Customer> list=jdbcTemplate.query(read, new CustomerMapper(),email);		
		return list;
	}
	
	@Override
	public void adminApproveConnection(Customer customer) {
	String delete="update customer_details set connection_status='approved' where service_number=?";
	Object[] params= {customer.getServiceNumber()};
	jdbcTemplate.update(delete,params);		
	}

	@Override
	public List<Customer> allApprovedConnection() {
		String read = "Select email_id,service_number,service_type,address,district,state,connection_status,address_proof from customer_details where  connection_status='approved'";
		List<Customer> list = jdbcTemplate.query(read, new CustomerMapper());
		return list;
	}

	@Override
	public void enterBill(Bill bill) {
		
		String insert="insert into bill(id,email_id,service_number,address,reading_units,reading_taken_date,due_date,service_type,amount)values(?,?,?,?,?,?,?,?,?)";
		 Object[] params= {bill.getId(),bill.getEmailId(),bill.getServiceNumber(),bill.getAddress(),bill.getReadingUnits(),bill.getReadingTakenDate(),bill.getDueDate(),bill.getServiceType(),bill.getAmount()};		
		 int rows=jdbcTemplate.update(insert,params);   
	}
	
	@Override
	public List<Bill> viewBill() {
		String read="Select id,email_id,service_number,address,reading_units,reading_taken_date,due_date,service_type,amount from bill";
		List<Bill> list=jdbcTemplate.query(read, new BillMapper());		
		return list;		
	}

	@Override
	public List<Bill> readBill(String email) {
		String read="Select id,email_id,service_number,address,reading_units,reading_taken_date,due_date,service_type,amount from bill where email_id=?";
		List<Bill> list=jdbcTemplate.query(read, new BillMapper(),email);		
		return list;		
	}

	@Override
	public void payAmount(Payment payment) {
		String insert="insert into payment(payment_id,email_id,service_number,amount,account_number,payment_date,total_amount,payed_amount)values(?,?,?,?,?,?,?,?)";
		 Object[] params= {payment.getPaymentId(),payment.getEmailId(),payment.getServiceNumber(),payment.getAmount(),payment.getAccountNumber(),payment.getPaymentDate(),payment.getTotalAmount(),payment.getPayedAmount()};		
		 int rows=jdbcTemplate.update(insert,params);  
		
	}

	@Override
	public List<Payment> checkPayment(String email) {
		String read="Select payment_id,email_id,service_number,amount,account_number,payment_date,total_amount,payed_amount from payment where email_id=?";
		List<Payment> list=jdbcTemplate.query(read, new PaymentMapper(),email);		
		return list;	
	}

	@Override
	public List<Payment> viewPayment() {
		String read="Select payment_id,email_id,service_number,amount,account_number,payment_date,total_amount,payed_amount from payment";
		List<Payment> list=jdbcTemplate.query(read, new PaymentMapper());		
		return list;	
	}
}
