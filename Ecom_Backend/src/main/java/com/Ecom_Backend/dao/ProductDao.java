package com.Ecom_Backend.dao;

import java.util.List;

import com.Ecom_Backend.model.Product;



public interface ProductDao {
	
	public void saveProduct(Product p);
    public List<Product> productList();


}
