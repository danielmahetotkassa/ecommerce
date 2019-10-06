package com.commerce.ecommerce.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.commerce.ecommerce.model.Cart;
import com.commerce.ecommerce.model.Product;

@Service
public class CheckOut {

	@Autowired
	Cart cart;

	public void totalPayment() {

		List<Product> productlist = cart.getProductlist();

		// Add all the prices of all the items added in
		// the cart and display the payment

		System.out.println(productlist);

	}

}
