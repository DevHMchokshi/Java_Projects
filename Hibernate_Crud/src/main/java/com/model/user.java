package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//pojo class
//pojo class is a simple java class that contains private fields and public getter and setter methods
//it is used to represent a table in the database
//it is also known as entity class
//it is used to map the table in the database to the class in the java application
//@Entity annotation is used to specify that the class is an entity and is mapped to a database table
@Entity
@Table(name="user")




public class user {
@Id
@GeneratedValue
private int id;

@Column
private String Username;

@Column
private String password;

@Column
private String email;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}


}
