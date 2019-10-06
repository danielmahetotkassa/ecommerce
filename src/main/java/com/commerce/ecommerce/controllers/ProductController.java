package com.commerce.ecommerce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.commerce.ecommerce.dao.ProductJpa;
import com.commerce.ecommerce.model.Cart;
import com.commerce.ecommerce.model.Product;

/**
 * 
 * @author daniel
 * This controller is used to manage the product
 *
 */
@Controller
@RequestMapping("/product")
public class ProductController {
	
	// The first step in creating database application is creating a repository
	// so that we can do database operations. 
	
	//
	@Autowired
	ProductJpa productJpa;
	
	@Autowired 
	Cart cart;
	
	@GetMapping("")
	public String getProducts() {
		return  "product/viewproducts";
	}
	
	@PostMapping("")
	
	public String getProduct(Model model, Product product) {
		
		//productJpa.save(product);
		
		// Adding the selected products into The cart..
		
		
		cart.addProduct(product);
		
		// Displaying the added products in the cart for debugging purposes
		
		System.out.println("hello for dispalying the list of products");
		for(Product products : cart.getProductlist()) {
			
			   System.out.println(products);
		}
		
		return "home";
	}
	@GetMapping("/addproduct")
	public String addProducts(Product product, Model model) {
		
		return "product/addproduct";
		
	}
	@PostMapping("/updateproduct")
	public String updateProduct(Product product, Model model) {
		
		return "product/";
	}
	
	@GetMapping("/cart")
	public String getCart(Model model) {
		
		model.addAttribute("selectedList", cart.getProductlist());
		return "cart/cart";
	}
	
	@RequestMapping("/cart/update")
	public String updateCart() {
		cart.setProductlist(null); 
		return "cart/cart";
	}
	
	
	@RequestMapping("/cart/view")
	public String getViews() {
		return "cart";
	}
	
	@RequestMapping("/view")
	public String getProductList() {
		
		return "product/productform";
	}

}
