package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="subject")
public class Subject {
	
@Id
private int sub_id;
@Column
private String sub_name;

@OneToOne(mappedBy = "subject") //mappedBy is used to specify the owner side of the relationship
private student student;  //passing student  object
public int getSub_id() {
	return sub_id;
}
public void setSub_id(int sub_id) {
	this.sub_id = sub_id;
}
public String getSub_name() {
	return sub_name;
}
public void setSub_name(String sub_name) {
	this.sub_name = sub_name;
}
public student getStudent() {
	return student;
}
public void setStudent(student student) {
	this.student = student;
}

}
