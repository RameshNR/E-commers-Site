package com.ecomm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Product;

@Controller
public class CartController {

	
	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;

	
	@RequestMapping(value="/showCart")
	public String showCart(Model m,HttpSession session) 
	{
		  String username = (String)session.getAttribute("username");
		  //  String username="Soniya A";	    
		    List<Cart> cartItemList=cartDAO.listCartItems(username);
		    m.addAttribute("cartItemList", cartItemList);
		    m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
		 
			return "Cart";
		
	}
	
	

	@RequestMapping(value="/addToCart/{productId}")
	public String addToCart(@PathVariable("productId")int productId, @RequestParam("quantity")int quantity, HttpSession session, Model m)
	{
		Product Product=productDAO.getProduct(productId);
		
		String username = (String)session.getAttribute("username");
		//String username="Soniya A";
		
		Cart cartItem=new Cart();
		cartItem.setProductId(Product.getProductId());
	    cartItem.setProductName(Product.getProductName());
	    cartItem.setQuantity(quantity); 
	    cartItem.setPrice(Product.getPrice());
	    cartItem.setStatus("NP");
	    cartItem.setUsername(username);
	    
	    cartDAO.addCartItem(cartItem);
	    
	    List<Cart> cartItemList=cartDAO.listCartItems(username);
	    
	    
	    m.addAttribute("cartItemList", cartItemList);
        m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
        
        session.setAttribute("cartsize", cartItemList.size());
        
		return "Cart";	
	}
	
	
	@RequestMapping(value="/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId")int cartItemId, HttpSession session, Model m)
	{
	   Cart cartItem=cartDAO.getCartItem(cartItemId);
	   
	   cartDAO.deleteCartItem(cartItem);
	   
	   String username = (String)session.getAttribute("username");
	   //String username="Soniya A";
	   
	   List<Cart> cartItemList=cartDAO.listCartItems(username);
	   m.addAttribute("cartItemList", cartItemList);
	   m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
	   
	   session.setAttribute("cartsize", cartItemList.size());
	   return "Cart";
		
	}
	

	@RequestMapping(value="/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId")int cartItemId,@RequestParam("quantity")int quantity, HttpSession session, Model m)
	{
	   Cart cartItem=cartDAO.getCartItem(cartItemId);
	   cartItem.setQuantity(quantity); 
	   cartDAO.updateCartItem(cartItem);
	   
	   String username = (String)session.getAttribute("username");
	   //String username="Soniya A";
	   
	   List<Cart> cartItemList = cartDAO.listCartItems(username); 
	   m.addAttribute("cartItemList", cartItemList);
	   m.addAttribute("totalAmount", this.calcTotalAmount(cartItemList));
	   
		return "Cart";	
	}



	 public int calcTotalAmount(List<Cart> cartItems)
	 {
		 int totalAmount = 0;
		 int count = 0;
		 
		 while(count<cartItems.size())
		 {
			 Cart cartItem=cartItems.get(count);
			 totalAmount = totalAmount + (cartItem.getPrice()*cartItem.getQuantity());
			 count++;
		 }
		 
		 return totalAmount; 
	 }
}
