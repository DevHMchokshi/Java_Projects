package com.example.com.SpringNestedJSON;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {

@Autowired
private CustomerServiceClass customerServiceClass;

@PostMapping("/customer")
public ResponseEntity<CustomerEntity>SaveCustomer(@RequestBody CustomerEntity entity){
	CustomerEntity customerEntity=customerServiceClass.saveCustomer(entity);
	return ResponseEntity.ok(customerEntity);
	
}

@GetMapping("/customers")
public ResponseEntity<Iterable<CustomerEntity>>getAllCustomers(){
	Iterable<CustomerEntity>customers=customerServiceClass.fetchAllCustomers();
	return ResponseEntity.ok(customers);
}
}
