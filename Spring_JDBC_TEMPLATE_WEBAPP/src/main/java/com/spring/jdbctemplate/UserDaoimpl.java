package com.spring.jdbctemplate;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoimpl implements UserDao{
	@Autowired
	DataSource datasource;
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
@Override
	public void register(User user) {
		// TODO Auto-generated method stub
	String sql="insert into user values(?,?)";
	jdbcTemplate.update(sql,new Object[] {user.getUsername(),user.getPassword()});
	
		
}
}
