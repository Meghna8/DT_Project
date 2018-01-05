package com.Ecom_Backend.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Ecom_Backend.dao.SupplierDao;
import com.Ecom_Backend.model.Supplier;


@Repository

public class SupplierDaoImpl implements SupplierDao  {
	
	@Autowired
	SessionFactory sessionFactory;

	public void insertSupplier(Supplier supplier) {
		
		Session ssn=sessionFactory.openSession();
		Transaction t=ssn.getTransaction();
		t.begin();
		ssn.save(supplier);
		ssn.getTransaction().commit();
	}
}