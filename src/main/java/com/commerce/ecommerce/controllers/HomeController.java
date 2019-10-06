package com.commerce.ecommerce.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	/**
	 * 
	 * @return the home page of the ecommerce application
	 */
	@GetMapping ("/")
	public String getHomePage() {
		
		return "home";
	}
	
	

}
