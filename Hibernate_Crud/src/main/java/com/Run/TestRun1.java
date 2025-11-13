package com.Run;

import com.dao.Datadao2;
import com.model.Subject;
import com.model.student;

public class TestRun1 {
	
	public static void main(String[] args) {
		
		Subject subject=new Subject();
		subject.setSub_id(105);
		subject.setSub_name("java");
		System.out.println("subjects Details:"+subject);
		
		student student1=new student();
		student1.setRollno(67);
		student1.setStd_name("abc");
		student1.setStd_email("abc@gmail.com");
		student1.setSubject(subject);
		
		System.out.println("student Details:"+student1);
		Datadao2 dao=new Datadao2();
		dao.saveedata(student1);
		

	}
}
