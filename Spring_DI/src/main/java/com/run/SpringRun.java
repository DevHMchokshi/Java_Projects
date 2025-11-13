package com.run;

import com.department.Department;
import com.phone.Phone;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringRun {

public static void main(String[] args) {	

ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");	
Phone p=(Phone)context.getBean("phone");
System.out.println(p.getPhoneModelno()+" "+p.getPhoneName()+" "+p.getPhoneStorage());
p.showPhoneDetails();

Department dept= (Department)context.getBean("Department");
System.out.println(dept.getDept_id()+" "+dept.getDept_name());
dept.getEmplyeeDetails();

	
}
}