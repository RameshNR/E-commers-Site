package com.ecomm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecomm.model.Cart;


@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {
	
	@Autowired  // Object Automatically Created by this Annottaion
	SessionFactory sessionFactory;
	
	
	
	public CartDAOImpl(SessionFactory sessionFactory)    ///Constructor
	{
		this.sessionFactory=sessionFactory;
	}
	
	

	@Override
	public boolean addCartItem(Cart cartItem) {
		try 
		{
			sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
			return true;
		}
		
		catch (Exception e) 
		{
			return false;
		}
	}

	@Override
	public boolean deleteCartItem(Cart cartItem) {
		try 
		{
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
	}

	@Override
	public boolean updateCartItem(Cart cartItem) {
		try 
		{
			sessionFactory.getCurrentSession().update(cartItem);
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
	}

	@Override
	public Cart getCartItem(int cartItemId) {
		Session session= sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartItemId);
		session.close();
		return cart;
	}

	@Override
	public List<Cart> listCartItems(String username) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where username=:uname and status='NP'");
		query.setParameter("uname", username);
		
		List <Cart> listCartItems = query.list();
		session.close();
		return listCartItems;
	}

}
