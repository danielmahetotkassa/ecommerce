package com.commerce.ecommerce.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Cart {
	
	List<Product> productlist = new ArrayList<>();
	
	public List<Product> getProductlist() {
		return productlist;
	}
	public void setProductlist(List<Product> productlist) {
		this.productlist = productlist;
	}
	public void addProduct(Product product) {
		productlist.add(product);
		
		}
	public void removeProduct(long id) {
		for(Product list : productlist) {
			if(list.getId() == id) {
				productlist.remove(8);
			}
		}
	}

	
}
