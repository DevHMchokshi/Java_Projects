package com.run;



import com.dao.Datadao;
import com.model.User;

public class TestRun {
public static void main(String[] args)

	{
User u = new User(); 
u.setId(1);	

u.setUsername("dev chokshi");
u.setPassword("dev9399");
u.setEmail("dev93@gmail.com"); 
u.setId(8);

u.setUsername("kavya chokshi");
u.setPassword("kavya2408");
u.setEmail("kavya24@gmail.com"); 

u.setId(8);
u.setUsername("prisha chokshi");
u.setPassword("prisha2917");
u.setEmail("prisha29@gmail.com");
		

Datadao d = new Datadao();

d.InsertData(u);

// d.UpdateData(u);
// d.DeleteData(u)
// u=d.FetchData(1);
/*d.FetchAllData().forEach(i->{ 
System.out.println(i.getId()+" "+i.getUsername());
});*/

System.out.println("Data Inserted !");
System.out.println("Data Updated Successfully !");
System.out.println("Data Deleted Successfully !");

	}
}