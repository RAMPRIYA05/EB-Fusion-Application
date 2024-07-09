package com.chainsys.ebfusion.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.ebfusion.dao.UserDAO;
import com.chainsys.ebfusion.model.Payment;

import jakarta.servlet.http.HttpSession;
@Controller
public class PaymentController {
	
	
	@Autowired
	 UserDAO userDAO;
	 JdbcTemplate jdbcTemplate;

	 @PostMapping("/payBill")
		public String payBill(@RequestParam("emailId")String emailId,@RequestParam("serviceNumber")long serviceNumber,@RequestParam("amount")double amount,@RequestParam("accountNumber")long accountNumber,@RequestParam("paymentDate") String paymentDate,@RequestParam("totalAmount")double totalAmount,@RequestParam("payedAmount")double payedAmount,Model model,HttpSession session)
		{
			
		Payment payment=new Payment();
		
		payment.setEmailId(emailId);
		payment.setServiceNumber(serviceNumber);
		payment.setAmount(amount);
		payment.setAccountNumber(accountNumber);
		 payment.setPaymentDate(paymentDate); 
		payment.setTotalAmount(totalAmount);
		payment.setPayedAmount(payedAmount);
		
		userDAO.payAmount(payment);
		userDAO.updatePaidStatus(payment);
		 String email=(String)session.getAttribute("UserEmailId");
		List<Payment> list=userDAO.checkPayment(email);
		model.addAttribute("list", list);
		return "viewPaidBill.jsp";
		}
	 @GetMapping("/viewPaidStatus")
		public String viewPaidStatus(Model model,HttpSession session)
		{
		    String email=(String)session.getAttribute("UserEmailId");
			List<Payment> list=userDAO.checkPayment(email);
			model.addAttribute("list", list);
			return "viewPaidBill.jsp";
		}
	 @GetMapping("/adminViewPaidStatus")
		public String adminViewPaidStatus(Model model)
		{
		    
			List<Payment> list=userDAO.viewPayment();
			model.addAttribute("list", list);
			return "customerPaidBills.jsp";
		}
}
