package com.Ecom_Backend.daoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.Ecom_Backend.dao.ProductDao;
import com.Ecom_Backend.model.Product;



public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SessionFactory sessionFactory;
	

	public void saveProduct(Product p) {
		Session sess=sessionFactory.openSession();
	    sess.beginTransaction();
		sess.save(p);
	    sess.getTransaction().commit();
		
	}

	public List<Product> productList() {
		// TODO Auto-generated method stub
		return null;
	}

}
