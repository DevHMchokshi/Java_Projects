package com.util;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;


public class Dbutil {
	
	Session session;
	public Session getSession() {
			
          //configuration is used to load the hibernate.cfg.xml file
           Configuration con =new Configuration();
          //configure method is used to load the configuration file
	      con.configure();
	       //sessionfactory is used to create session object
	       //buidlSessionFactory method is used to create sessionfactory object
	       //create session object using openSession method
	       //openSession method is used to open a new sessione
	       SessionFactory sf=con.buildSessionFactory();
	       session=sf.openSession();
	         return session;
	         
	}
}

