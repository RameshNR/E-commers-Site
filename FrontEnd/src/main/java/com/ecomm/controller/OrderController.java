package com.ecomm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.OrderDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.UserDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.OrderDetail;
import com.ecomm.model.UserDetail;

@Controller
public class OrderController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value="/checkout")
	public String checkout(Model m, HttpSession session)
	{
		    
		String username = (String)session.getAttribute("username");
		//String username="Soniya A";	 
		    
		    
		    List<Cart> cartItemList=cartDAO.listCartItems(username);
		    m.addAttribute("cartItemList", cartItemList);
		    m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
		    
		    UserDetail user = userDAO.getUser("Soniya A");
		    m.addAttribute("addr", user.getAddress());
		    
		
		return "OrderConform";
	}
	
	 public int calcTotalAmount(List<Cart> cartItems)
	 {
		 int totalAmount = 0;
		 int count = 0;
		 
		 while(count<cartItems.size())
		 {
			 Cart cartItem = cartItems.get(count);
			 totalAmount = totalAmount + (cartItem.getPrice()*cartItem.getQuantity());
			 count++;
		 }
		 
		 return totalAmount; 
	 }
	 
	 @RequestMapping(value="/updateAddress",method=RequestMethod.POST)
	 public String updateAddress(@PathVariable("username")String username,@RequestParam("addr")String address, HttpSession session, Model m)
	 {
		 UserDetail user = userDAO.getUser(username);
		 //UserDetail user = userDAO.getUser(username);
		 
		 user.setAddress(address);
		 userDAO.updateUser(user);
		 
		 String username1 = (String)session.getAttribute("username");
		 
		 List<Cart> cartItemList=cartDAO.listCartItems(username1);
		 m.addAttribute("cartItemList", cartItemList);
		 m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
		
		 m.addAttribute("addr", user.getAddress());
		   
		 return "OrderConform"; 
	 }
	 
	 
	 @RequestMapping(value="/payment")
	 public String showPaymentPage(HttpSession session, Model m)
	 {
	
		 String username = (String)session.getAttribute("username");
		 
		 List<Cart> cartItemList=cartDAO.listCartItems(username);
		 m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
		
		 return "Payment"; 
	 }
	 
	 @RequestMapping(value="/receipt")
	 public String showReceipt(@RequestParam("pmode")String pmode, HttpSession session, Model m)
	 {
		 
		 String username = (String)session.getAttribute("username");
		 //String username = "Soniya A";
		
		 List<Cart> cartItemList=cartDAO.listCartItems(username);
		 int totalShoppingAmount = this.calcTotalAmount(cartItemList);
		 
		 OrderDetail order=new OrderDetail();
		 order.setPaymentMode(pmode);
		 order.setUsername(username);
		 order.setTotalShoppingAmount(totalShoppingAmount);
		 order.setOrderdate(new java.util.Date());
		 
		 orderDAO.paymentProcess(order);
		 orderDAO.updateCartItemStatus(username, order.getOrderId());
		 
		 m.addAttribute("cartItemList", cartItemList);
     	 m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
		 m.addAttribute("orderId", order.getOrderId());
		 m.addAttribute("pmode", pmode);
		 
		 UserDetail user = userDAO.getUser(username);
		 //UserDetail user = userDAO.getUser("Soniya A");
		 
		 m.addAttribute("addr", user.getAddress()); 	 
		 session.setAttribute("cartsize", 0);
		 
		 return "Receipt"; 
	 }
	 
	
}




