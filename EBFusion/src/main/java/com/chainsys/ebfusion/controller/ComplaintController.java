package com.chainsys.ebfusion.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.ebfusion.dao.UserDAO;
import com.chainsys.ebfusion.model.Complaint;

@Controller
public class ComplaintController {

	@Autowired
   UserDAO userDAO;
	JdbcTemplate jdbcTemplate;
	
	@GetMapping("/applyComplaint")
	public String applyComplaint(@RequestParam("emailId")String emailId,@RequestParam("serviceNumber")long serviceNumber,@RequestParam("description")String description,@RequestParam("complaintStatus")String complaintStatus) {
		Complaint complaint=new Complaint();
		
		complaint.setEmailId(emailId);
		complaint.setServiceNumber(serviceNumber);
		complaint.setDescription(description);
		complaint.setComplaintStatus(complaintStatus);
		userDAO.applyComplaint(complaint);
		
		
		return "";
	
	
	
	}
}
