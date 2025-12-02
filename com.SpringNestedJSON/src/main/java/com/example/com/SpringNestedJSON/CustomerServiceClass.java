package com.example.com.SpringNestedJSON;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceClass {
	
@Autowired
private CustomerRepository customerRepository;


public CustomerEntity saveCustomer(CustomerEntity entity) {
	entity.getOrderEntity().forEach(order -> order.setCustomerEntity(entity));
	return customerRepository.save(entity);
	

}
}
