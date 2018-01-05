package com.Ecom_Backend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.Ecom_Backend.daoImpl.UserDaoImpl;
//import com.Ecom_Backend.daoImpl.UserDaoImpl;
//import com.Ecom_Backend.daoImpl.UserDaoImpl;
import com.Ecom_Backend.model.Category;
import com.Ecom_Backend.model.Product;
import com.Ecom_Backend.model.Supplier;
import com.Ecom_Backend.model.User;



@Configuration   
@ComponentScan("com")
@EnableTransactionManagement 

public class HibernateConfig {
	@Autowired
	@Bean(name="myDataSource")
	public DataSource getH2DataSource()     
	{
		System.out.println("Data Source Method");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test2");  
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		System.out.println("Data Source Created");
		return dataSource;
	}
	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");                                                                         //  database specific SQL generator code wherever/whenever necessary.
		properties.put("hibernate.show_sql", "true");  
		properties.put("hibernate.hbm2ddl.auto", "update"); 
		System.out.println("Data table created in H2");
		return properties;
	}
    @Autowired
	@Bean (name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);   //
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		return sessionBuilder.buildSessionFactory();
	}
	//@Autowired
	//@Bean(name="userDaoImpl")
	//public UserDaoImpl saveUserData(SessionFactory sessionfactory )
	//{
		//return null;
	  // return new UserDaoImpl("sessionFactory");
	//}
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

}




