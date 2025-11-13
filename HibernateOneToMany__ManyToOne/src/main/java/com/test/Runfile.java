package com.test;

import java.util.ArrayList;

import com.dao.Datadao;
import com.model.Department;
import com.model.Employee;

public class Runfile {
public static void main(String[] args) {
	Department dept=new Department();
	dept.setDeptName("CSE");
	
	Department dept1=new Department();
	dept1.setDeptName("HR");
	
	Datadao dao=new Datadao();
	
	Employee emp=new Employee();
	emp.setEmpName("Amit");
	emp.setEmpSal(50000);
	emp.setDepartment(dept);
	
	Employee emp1=new Employee();
	emp1.setEmpName("Aman");
	emp1.setEmpSal(60000);
	emp1.setDepartment(dept);
	
	Employee emp2=new Employee();
	emp2.setEmpName("Akash");
	emp2.setEmpSal(70000);
	emp2.setDepartment(dept);
	
	Employee emp3=new Employee();
	emp3.setEmpName("TopsEmployee");
	emp3.setEmpSal(80000);
	emp3.setDepartment(dept1);
	
	ArrayList<Employee> empList=new ArrayList<Employee>();
	empList.add(emp);
	empList.add(emp1);
	empList.add(emp2);
	
	ArrayList<Employee> emp1List=new ArrayList<Employee>();
	emp1List.add(emp3);
	
	
	
	
	
	dept.setEmployees(empList);
	dept1.setEmployees(emp1List);
	dao.SaveDepartment(dept);
	dao.SaveDepartment(dept1);
	
	System.out.println("Data Saved");
}
}
