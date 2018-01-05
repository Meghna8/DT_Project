package com.Ecom_Backend.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Ecom_Backend.dao.UserDao;
import com.Ecom_Backend.model.User;


@Repository
@Transactional

public class UserDaoImpl implements UserDao {
	
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	public UserDaoImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory= sessionFactory;
	}
   
	//remove this section 
	//public UserDaoImpl(String string) {
		// TODO Auto-generated constructor stub
	//}
	//Transactional
	public void insertUser(User user) {
		Session ssn = sessionFactory.openSession();
		ssn.beginTransaction();
		//ssn.persist(user);
		ssn.saveOrUpdate(user);
		ssn.getTransaction().commit();
		
		
	}
	
	
	

}
