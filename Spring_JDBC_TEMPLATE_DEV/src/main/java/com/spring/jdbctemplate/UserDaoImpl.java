package com.spring.jdbctemplate;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDaoImpl implements UserDao{

	@Autowired
	DataSource datasource;
	@Autowired
	 JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
	String sql = "insert into user(username,password) values(?,?)";
	jdbcTemplate.update(sql, new Object[] 
			{ user.getUsername(), user.getPassword()
			});
	}
	



   @Override
   public User getUserById(int id) {
	  // TODO Auto-generated method stub
	   String sql="select * from user where id="+id;
	   return jdbcTemplate.queryForObject(sql, (rs,rowNum)->
	   {
		   User user=new User();
		   user.setId(rs.getInt("id"));
		   user.setUsername(rs.getString("username"));
		   user.setPassword(rs.getString("password"));
		   return user;
	   });
	   
   }	   
   

  
   @Override
   public List<User> getAllUsers() {
	// TODO Auto-generated method stub
	return null;
   }
   }