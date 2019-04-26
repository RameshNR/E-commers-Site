package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Category;

public class CartDAOTest {

	static CartDAO cartDAO;
	
	@BeforeClass
	//if BeforeClasss Annotation error can't fix, click the test and select "Add Junit  4/5 Build path
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		cartDAO = (CartDAO) context.getBean("cartDAO");
	}
	
	
	//@Ignore
	@Test       
	//if BeforeClasss Annotation error can't fix, click the test and select "Add Junit  4/5 Build path
	public void addCartItemTest()
	{
		Cart cartItem = new Cart();
		cartItem.setProductId(1);
		cartItem.setProductName("Samsung Q900");
		cartItem.setQuantity(4);
		cartItem.setStatus("NP");
		cartItem.setUsername("Soniya A");
		cartItem.setPrice(500000);
		
		assertTrue("Problem in Adding Cart", cartDAO.addCartItem(cartItem));
		
	}
	
	
	@Ignore
	@Test
	public void deleteCartItemTest()
	{
		Cart cartItem = cartDAO.getCartItem(72);
		
		assertTrue("Problem in Deleting Cart", cartDAO.deleteCartItem(cartItem));
		
	}
	
	
	@Ignore
	@Test
	public void updateCartItemTest()
	{
		Cart cartItem = cartDAO.getCartItem(72);
		cartItem.setQuantity(1);
		assertTrue("Problem in Deleting Cart", cartDAO.updateCartItem(cartItem));
		
	}
	
	
	@Test
	public void displayCartItemTest()
	{
		List <Cart> listCartItems = cartDAO.listCartItems("Soniya A");
		assertTrue("Problem in Display the Cart", listCartItems.size()>0);
		
		for (Cart cartItem:listCartItems)
		{
		System.out.print("\n");
		System.out.print(cartItem.getCartItemId()+"  ");
		System.out.print(cartItem.getProductName()+"  ");
		System.out.println(cartItem.getQuantity()+"  ");
		System.out.println(cartItem.getPrice());
		System.out.print("\n");
		
		}
	}

}
