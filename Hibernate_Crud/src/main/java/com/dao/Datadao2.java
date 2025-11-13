package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.student;
import com.util.Dbutil;

public class Datadao2 {
	
	Session s;
	Transaction t;
	
	Dbutil db=new Dbutil();
	
	public void saveedata(student student1) {
		s=db.getSession();
		t=s.beginTransaction();
		s.save(student1);
		t.commit();
		s.close();
		
	}

}
