package com.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="employee")

public class Employee {
	@Id
	@GeneratedValue
	
	private int empId;
	@Column
	
	
    private String empName;
	@Column
    
	private double empSal;
	//Many to one 
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="deptId")
	
	private Department department;
	public int getEmpId() {
		return empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public double getEmpSal() {
		return empSal;
	}
	public void setEmpSal(double empSal) {
		this.empSal = empSal;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	

}
