package com.chainsys.ebfusion.controller;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.chainsys.ebfusion.dao.UserDAO;
import com.chainsys.ebfusion.model.Customer;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
	@Autowired
    UserDAO userDAO;
	JdbcTemplate jdbcTemplate;
	
	@PostMapping("/applyConnection")
	public String applyConnection(@RequestParam("emailId")String emailId,@RequestParam("serviceType")String serviceType,@RequestParam("address")String address,@RequestParam("district")String district,@RequestParam("state")String state,@RequestParam("addressProof") MultipartFile addressProof, Model model,HttpSession session) throws IOException
	{
		  if(!addressProof.isEmpty())
	        { 
		Customer customer=new Customer();
		byte[] documentImages=addressProof.getBytes();
		
		customer.setEmailId(emailId);		
		customer.setServiceType(serviceType);
		customer.setAddress(address);
		customer.setDistrict(district);
		customer.setState(state);
		customer.setAddressProof(documentImages);
		
		Random random=new Random();
		long serviceNumber=random.nextLong(10000);
		customer.setServiceNumber(serviceNumber);
		customer.setConnectionStatus("applied");
		userDAO.applyConnection(customer);
        String email=(String)session.getAttribute("UserEmailId");
		
		List<Customer> list=userDAO.readApplyConnection(email);
		model.addAttribute("list",list);		
	        }
	        else
	        {
	            return "applyNewConnection.jsp";
	        }
		  return "applyConnectionTable.jsp";
	}
	
	@GetMapping("/readAppliedConnection")
	public String readAppliedConnection(Model model,HttpSession session)
	{ 		
		String email=(String)session.getAttribute("UserEmailId");		
		List<Customer> list=userDAO.readApplyConnection(email);
		model.addAttribute("list",list);
		return "applyConnectionTable.jsp";
	}
	
	@GetMapping("/readAllConnection")
	public String readAllAppliedConnection(Model model)
	{ 
		List<Customer> list=userDAO.readAllApplyConnection();
		model.addAttribute("list",list);
		return "approveConnection.jsp";	
	}
	
	@GetMapping("/approvedConnection")
	public String approvedConnection(Model model,HttpSession session)
	{ 
		String email=(String)session.getAttribute("UserEmailId");
		List<Customer> list=userDAO.readApprovedConnection(email);
		model.addAttribute("list",list);
		return "customerViewApprovedConnection.jsp";	
	}
	
	@GetMapping("/allApprovedConnection")
	public String allApprovedConnection(Model model)
	{ 
		List<Customer> list=userDAO.allApprovedConnection();
		model.addAttribute("list",list);
		return "adminViewApprovedConnection.jsp";	
	}
		
	@GetMapping("/customerConnection")
	public String customerConnection(@RequestParam("serviceNumber")long serviceNumber,Model model,HttpSession session)
	{
		Customer customer=new Customer();
		customer.setServiceNumber(serviceNumber);
		userDAO.adminApproveConnection(customer);
		List<Customer> list=userDAO.readAllApplyConnection();
		model.addAttribute("list",list);
		return "approveConnection.jsp";					
	}
}
