package com.ecomm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecomm.dao.CategoryDAO;

@Controller
public class PageController {
	
	
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
		
	}
	
	@RequestMapping("/register")
	public String showRegisterPage()
	{
		return "Register";
		
	}
	
	@RequestMapping("/category")
	public String showCategoryPage()
	{
		return "Category";
		
	}
	
	@RequestMapping("/supplier")
	public String showSupplierPage()
	{
		return "Supplier";
		
	}
	
	@RequestMapping("/adminPage")
	public String showAdminPage()
	{
		return "AdminHome";
		
	}

	
	@RequestMapping("/userPage")
	public String showUserPage()
	{
		return "UserHome";
		
	}

	
	@RequestMapping("/about")
	public String showAboutPage()
	{
		return "About";
		
	}


	
}




