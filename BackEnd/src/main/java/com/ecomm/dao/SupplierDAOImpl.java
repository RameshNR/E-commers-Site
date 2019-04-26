package com.ecomm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ecomm.model.Supplier;



@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {

	
	@Autowired  // Object Automatically Created by this Annottaion
	SessionFactory sessionFactory;
	
	
	
	public SupplierDAOImpl(SessionFactory sessionFactory)    ///Constructor
	{
		this.sessionFactory=sessionFactory;
	}



	@Transactional
	public boolean addSupplier(Supplier supplier) {
		try 
		{
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			return true;
		}
		
		catch (Exception e) 
		{
			return false;
		}
	}



	@Transactional
	public boolean deleteSupplier(Supplier supplier) {
		try 
		{
			sessionFactory.getCurrentSession().delete(supplier);
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
	}



	@Transactional
	public boolean updateSupplier(Supplier supplier) {
		try 
		{
			sessionFactory.getCurrentSession().update(supplier);
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
	}
	
	
	@Transactional
	public Supplier getSupplier(int supplierId) {
		Session session= sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class, supplierId);
		session.close();
		return supplier;
	}



	@Transactional
	public List<Supplier> ListSuppliers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier");
		List <Supplier> listSuppliers = query.list();
		session.close();
		return listSuppliers;
	}


}






