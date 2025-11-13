package com.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name="student")

public class student {


private int id;	

@Id	
private int Rollno;

@Column
private String std_name;

@Column
private String std_email;

@OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
//one to one mapping
//fetch type eager
//means when we fetch student data subject data will be fetched automatically
//fetch type lazy means when we fetch student data subject data will not be fetched automatically
//cascade type all means when we perform any operation on student table that operation will be performed on subject table also
@JoinColumn(name="sub_id") //foreign key column name

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getRollno() {
	return Rollno;
}
public void setRollno(int rollno) {
	Rollno = rollno;
}
public String getStd_name() {
	return std_name;
}
public void setStd_name(String std_name) {
	this.std_name = std_name;
}
public String getStd_email() {
	return std_email;
}
public void setStd_email(String std_email) {
	this.std_email = std_email;
}
public void setSubject(Subject subject) {
	// TODO Auto-generated method stub
	
}

}
