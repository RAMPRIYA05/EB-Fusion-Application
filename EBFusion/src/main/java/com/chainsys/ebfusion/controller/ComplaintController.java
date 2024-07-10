package com.chainsys.ebfusion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.ebfusion.dao.UserDAO;
import com.chainsys.ebfusion.model.Complaint;
import jakarta.servlet.http.HttpSession;

@Controller
public class ComplaintController {

	@Autowired
   UserDAO userDAO;
	JdbcTemplate jdbcTemplate;
	
	@GetMapping("/applyComplaint")
	public String applyComplaint(@RequestParam("emailId")String emailId,@RequestParam("serviceNumber")long serviceNumber,@RequestParam("description")String description,@RequestParam("complaintStatus")String complaintStatus,Model model,HttpSession session) {
		Complaint complaint=new Complaint();
		
		complaint.setEmailId(emailId);
		complaint.setServiceNumber(serviceNumber);
		complaint.setDescription(description);
		complaint.setComplaintStatus(complaintStatus);
		userDAO.applyComplaint(complaint);
		
		String email=(String)session.getAttribute("UserEmailId");
		List<Complaint> list=userDAO.viewComplaint(email);
		model.addAttribute("list",list);
		return "customerViewComplaint.jsp";
	}
	
	@GetMapping("/viewPendingComplaint")
	public String viewPendingComplaint(Model model,HttpSession session)
	{
		String email=(String)session.getAttribute("UserEmailId");
		List<Complaint> list=userDAO.viewComplaint(email);
		model.addAttribute("list",list);
		return "customerViewComplaint.jsp";
	}
	
	@GetMapping("/adminViewComplaint")
	public String adminViewComplaint(Model model)
	{
		List<Complaint> list=userDAO.viewPendingComplaint();
		model.addAttribute("list",list);
		return "adminViewComplaint.jsp";
	}
	
	@GetMapping("/updateComplaint")
	public String updateComplaint(@RequestParam("complaintStatus")String complaintStatus,@RequestParam("complaintId") int complaintId,Model model) {
		
		
		userDAO.updateComplaint(complaintStatus, complaintId);
		List<Complaint> list=userDAO.viewPendingComplaint();
		model.addAttribute("list",list);
		return "adminViewComplaint.jsp";
	}
	
	
	@GetMapping("/viewRectifiedComplaint")
	public String viewRectifiedComplaint(Model model,HttpSession session)
	{
		String email=(String)session.getAttribute("UserEmailId");
		List<Complaint> list=userDAO.rectifiedComplaint(email);
		model.addAttribute("list",list);
		return "rectifiedComplaint.jsp";
	}
	
	@GetMapping("/rectifiedComplaint")
	public String rectifiedComplaint(Model model)
	{
		
		List<Complaint> list=userDAO.adminRectifiedComplaint();
		model.addAttribute("list",list);
		return "adminRectifiedComplaint.jsp";
	}
	
	
}
