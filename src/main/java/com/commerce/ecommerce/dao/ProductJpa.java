package com.commerce.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.commerce.ecommerce.model.Product;

@Repository
public interface ProductJpa
	extends JpaRepository<Product, Long> {

}
