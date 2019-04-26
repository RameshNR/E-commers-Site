package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	

	@RequestMapping(value = "/supplier", method = RequestMethod.GET)
	public String showSupplier(Model m)     // Show Supplier page method
	{
		// show the Database files
		List<Supplier> listSuppliers = supplierDAO.ListSuppliers();
		m.addAttribute("suppliers", listSuppliers);
		
		return "Supplier";
	}
	
	
	@RequestMapping(value = "/InsertSupplier", method = RequestMethod.POST)
	public String insertSupplier(@RequestParam("supplierName")String supplierName,@RequestParam("supplierAddress")String supplierAddress,Model m)
	{
		
		System.out.println("\n" + supplierName +" :::: "+ supplierAddress + "\n");
		Supplier supplier = new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setSupplierAddress(supplierAddress);
		
		supplierDAO.addSupplier(supplier);
		
		// show the Database files
		List<Supplier> listSuppliers = supplierDAO.ListSuppliers();
		m.addAttribute("suppliers",listSuppliers);
		
		System.out.println("\n ----   Supplier Added   ----");
		return "Supplier";
	}
	
	
	
	// Inserting New data
		// you can't new Supplier on the delete page, because object not created for delete page
		@RequestMapping(value = "/deleteSupplier/{supplierId}")
		public String deleteSupplier(@PathVariable("supplierId")int supplierId, Model m)
		{
			System.out.println("\nYou can't Add any Input on the \"Delete Page\"" + "\n");
			
			Supplier supplier = supplierDAO.getSupplier(supplierId);
			supplierDAO.deleteSupplier(supplier);
			
			
			// show the Database files
			List<Supplier> listSuppliers = supplierDAO.ListSuppliers();
			m.addAttribute("suppliers",listSuppliers);
			
			return "Supplier";
		}
		
		
		@RequestMapping(value = "/editSupplier/{supplierId}")
		public String editSupplier(@PathVariable("supplierId")int supplierId,Model m)
		{
			Supplier supplier = supplierDAO.getSupplier(supplierId);
			m.addAttribute("mySupplier", supplier);
			
			// show the Database files
			List<Supplier> listSuppliers =  supplierDAO.ListSuppliers();
			m.addAttribute("suppliers",listSuppliers);
			
			return "UpdateSupplier";
		}
		
		
		
		@RequestMapping(value = "/updateSupplier", method = RequestMethod.POST)
		public String updateSupplier(@RequestParam("supplierId")int supplierId, @RequestParam("supplierName")String supplierName,@RequestParam("supplierAddress")String supplierAddress, Model m)
		{
			Supplier supplier = supplierDAO.getSupplier(supplierId);
			supplier.setSupplierName(supplierName);
			supplier.setSupplierAddress(supplierAddress);
							
			supplierDAO.updateSupplier(supplier);
			
			// show the Database files
			List<Supplier> listSuppliers = supplierDAO.ListSuppliers();
			m.addAttribute("suppliers",listSuppliers);
			
			return "Supplier";
			
		}

	

}
