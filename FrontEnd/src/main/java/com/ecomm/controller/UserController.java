package com.ecomm.controller;



import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.OrderDetail;
import com.ecomm.model.Product;
import com.ecomm.model.UserDetail;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	
	@Autowired
	CartDAO cartDAO;
	

	@RequestMapping("/login_success")
	public String loginSuccess(HttpSession session,Model m)
	{
		System.out.println("-------Login Successful-----");
		String page="TotalProductDisplay";
		boolean loggedIn=true;
       
		//Retrieving the username
		String username=SecurityContextHolder.getContext().getAuthentication().getName();
		session.setAttribute("username", username);
		session.setAttribute("loggedIn",loggedIn);
		
		//Retrieving role
		Collection<GrantedAuthority> authorities=(Collection<GrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		
		for (GrantedAuthority role:authorities)
		{
			System.out.println("Role: "+role.getAuthority()+"User Name: "+username+"-----");
			System.out.println(role.getAuthority());
			if(role.getAuthority().equals("ROLE_ADMIN"))
			{
				loggedIn = true;
				page = "AdminHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
				session.setAttribute("role", role.getAuthority());
			}
			else
			{
				loggedIn = true;
				page = "UserHome";
				session.setAttribute("loggedIn", loggedIn);
				session.setAttribute("username", username);
				session.setAttribute("role", role.getAuthority());
				
			}
		}
		
		return page;
	}
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, HttpServletResponse res )
	{
		req.getSession(false).invalidate();
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
	       new	SecurityContextLogoutHandler().logout(req, res, auth);
	       req.getSession().setAttribute("loggedIn",false);   
		
		
		return "Login";
	}
	
	
	@RequestMapping("/registerUser")
	public String registerUser(@RequestParam("username")String username, @RequestParam("customerName")String customerName, @RequestParam("email")String email,@RequestParam("address")String address, @RequestParam("password")String password, Model m)
	{
		
		UserDetail userdetail=new UserDetail();
		
		userdetail.setUsername(username);
		userdetail.setCustomerName(customerName);
		userdetail.setPassword(password);
		userdetail.setAddress(address);
		userdetail.setEmail(email);
		
		userdetail.setRole("ROLE_USER");
		userdetail.setEnabled(true);
	   
	    userDAO.registerUser(userdetail);
		
	    
	    System.out.println("Register Successfully");
	    
		return "Login";
	}
	
	

	
	
	

	

}
