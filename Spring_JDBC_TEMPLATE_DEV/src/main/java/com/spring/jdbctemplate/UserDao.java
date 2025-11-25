package com.spring.jdbctemplate;

	import java.util.List;

public interface UserDao {
	//insert user
	void register(User user);
	//show all users 
	List<User> getAllUsers();
	// edit method 
	User getUserById(int id);
	//update method
	void update(User user);
	
}
