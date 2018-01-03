package com.Ecom_Backend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Component
public class User {
	
	@Id 
	@NotEmpty(message="enter the email")
	@Email (message="enter the valid email ")
	
	private String email;
	
	@GeneratedValue
	private int uid;
	
	
	
	@NotEmpty(message="enter the name")

	private String name;
	

	@NotEmpty(message="password cannot be null")
	private String password;
	

	@NotEmpty(message="address cannot be empty")
	private String address;
	

	@NotEmpty(message="enter phone number")
	@Pattern(regexp="(^$|[0-9]{10})",message="please enter correct digits")     //This annotation can be used when we want to chack a field against a regular expression. The regex is set as an attribute to the annotation.
	private String phone;
	
	private String role;
	private boolean enabled;
	

}
