package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.util.Dbconn;
import com.model.user;


public class Datadao {
	
	Dbconn db=new Dbconn();
	Session session=db.getSession();
	//insert query 
	Transaction t=session.beginTransaction();
	//method to insert data
	public void insertData(Object obj) {
		session.save(obj);
		
		t.commit();
	}
	

}
