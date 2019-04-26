package com.ecomm.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;

@Controller
public class ProductController {
	
	//private static final ProductDAO categoryDAO = null;
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	
	@RequestMapping("/product")
	public String showProduct(Model m) 
	{
		Product product=new Product();
		m.addAttribute("product", product);
		
		// show the Database files
		List<Product> listProducts = productDAO.listProducts();
		m.addAttribute("listProducts", listProducts);
		m.addAttribute("categoryList", this.getCategoryList(categoryDAO.ListCategories()));
		m.addAttribute("supplierList", this.getSupplierList(supplierDAO.ListSuppliers()));
		
		return "Product";
		
	}
	
	@RequestMapping(value = "/InsertProduct", method = RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile filedet, Model m)
	{
		System.out.println("---Product Inserted---");
		productDAO.addProduct(product);

		
		//To ADDING Image o File System
		// Image Size will be mention On The dispatcher-servlet.xml
		
		int productId = product.getProductId();
		String path="C:\\Users\\Raj Kannan\\eclipse-workspace\\FrontEnd\\src\\main\\webapp\\resources\\images\\";
		path = path + String.valueOf(productId) + ".jpg";
		File myImageFile = new File(path);
		
		if(!filedet.isEmpty())
		{
			try
			{
				byte buff[] = filedet.getBytes();
				FileOutputStream fos = new FileOutputStream(myImageFile);
				BufferedOutputStream bs = new BufferedOutputStream(fos);
				bs.write(buff);
				bs.close();
			}
			
			catch(Exception e)
			{
				m.addAttribute("Error", "Error occured during Image Uploading :: "+e.getMessage());
			}
		}
		
		else
			
		{
			System.out.println("Error Occured While Uploading File");
			m.addAttribute("Error", "Error occured during Image Uploading");
		}
		
		System.out.println("\n Image Will be Added ");
		
		Product product1 = new Product();
		m.addAttribute("product", product1);
		
		// show the Database files
		List<Product> listProducts = productDAO.listProducts();
		m.addAttribute("listProducts",listProducts);
		m.addAttribute("categoryList", this.getCategoryList(categoryDAO.ListCategories()));
		m.addAttribute("supplierList", this.getSupplierList(supplierDAO.ListSuppliers()));
		
		System.out.println("\n ----   Product Added   ----");
		return "Product";
		
	}
	
	
	
	
	// Inserting New data
		// you can't new category on the delete page, because object not created for delete page
		@RequestMapping(value = "/deleteProduct/{productId}")
		public String deleteProduct(@PathVariable("productId")int productId, Model m)
		{
			System.out.println("\n Product will be Deleted" + "\n");
			System.out.println("\nYou can't Add Input on the \"Delete Page\"" + "\n");
			
			Product product1 = productDAO.getProduct(productId);
			productDAO.deleteProduct(product1);
			
			Product product2=new Product();
			m.addAttribute("product", product2);
			
			// show the Database files
			List<Product> listProducts = productDAO.listProducts();
			m.addAttribute("listProducts",listProducts);
			m.addAttribute("categoryList", this.getCategoryList(categoryDAO.ListCategories()));
			m.addAttribute("supplierList", this.getSupplierList(supplierDAO.ListSuppliers()));
			
			return "Product";
		}
		
		
		@RequestMapping(value = "/editProduct/{productId}")
		public String editProduct(@PathVariable("productId")int productId,Model m)
		{
			System.out.println("\n Once you click the the edit button it will automaticlly delete the image for the perticular product ");
			
			Product product1 = productDAO.getProduct(productId);
			m.addAttribute("product", product1);
			
			// show the Database files
			List<Product> listProducts = productDAO.listProducts();
			m.addAttribute("listProducts",listProducts);
			m.addAttribute("categoryList", this.getCategoryList(categoryDAO.ListCategories()));
			m.addAttribute("supplierList", this.getSupplierList(supplierDAO.ListSuppliers()));
			
			return "Product";
		}
		
		
		
		
		
		
		
		public LinkedHashMap<Integer,String> getCategoryList(List<Category> listCategory)
		{
			
			LinkedHashMap<Integer,String> listCategories=new LinkedHashMap<Integer,String>();
			
			for(Category category:listCategory)
			{
				 listCategories.put(category.getCategoryId(),category.getCategoryName());
			}
			
			System.out.println("Category List"+"\n");
			System.out.println(listCategory);
			
			return  listCategories;
		}
		
		
		public LinkedHashMap<Integer,String> getSupplierList(List<Supplier> listSupplier)
		{
			
			LinkedHashMap<Integer,String> listSuppliers=new LinkedHashMap<Integer,String>();
			
			for(Supplier supplier:listSupplier)
			{
				 listSuppliers.put(supplier.getSupplierId(),supplier.getSupplierName());
			}
			
			System.out.println("Supplier List"+"\n");
			System.out.println(listSupplier);
			
			return  listSuppliers;
		}
		
		
		
		
		
		
		@RequestMapping(value="/totalProductDisplay")
		public String displayTotalProduct(Model m)
		{
			// show the Database files
			List<Product> listProducts = productDAO.listProducts();
			m.addAttribute("listProducts",listProducts);
			
			return "TotalProductDisplay";
			
		}
		
		
		@RequestMapping(value="/productDisplay/{productId}")
		public String displayProduct(@PathVariable("productId")int productId, Model m)
		{
			
			Product product = productDAO.getProduct(productId);
			m.addAttribute("product", product);
			
			
			return "ProductDisplay";
			
		}
		
		

}
