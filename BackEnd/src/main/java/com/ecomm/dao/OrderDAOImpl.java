package com.ecomm.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecomm.model.OrderDetail;

@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO {
	
	
	@Autowired  // Object Automatically Created by this Annottaion
	SessionFactory sessionFactory;
	
	
	
	public OrderDAOImpl(SessionFactory sessionFactory)    ///Constructor
	{
		this.sessionFactory=sessionFactory;
	}
	
	
	

	@Override
	public boolean paymentProcess(OrderDetail order) {
		try 
		{
			sessionFactory.getCurrentSession().save(order);
			return true;
		}
		
		catch (Exception e) 
		{
			return false;
		}
	}

	@Override
	public boolean updateCartItemStatus(String username, int orderId) {
		try 
		{
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("Update Cart Set Status ='P',orderId=:orderId where username=:uname and Status='NP'");
			
			query.setParameter("orderId", orderId);
			query.setParameter("uname", username);
			
			int row_off=query.executeUpdate();
			
			if(row_off>0)
			{
				return true;
			}
			
			else
			{
				return false;
			}
			
		
		}
		catch (Exception e) 
		{
			return false;
		}
	}

}
