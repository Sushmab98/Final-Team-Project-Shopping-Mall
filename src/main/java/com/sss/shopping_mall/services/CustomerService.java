package com.sss.shopping_mall.services;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sss.shopping_mall.modal.Customer;
import com.sss.shopping_mall.repository.CustomerRepository;



@Service
@Transactional
//@Repository
public class CustomerService {
private final CustomerRepository customerRepository;
	
	public CustomerService(CustomerRepository customerRepository) {
		this.customerRepository=customerRepository;
	}
	
	public void saveMyCustomer(Customer customer ) {
		customerRepository.save(customer);
	}
	
	
	public Customer findByCustomernameAndPassword(String customername, String password) {
		return customerRepository.findByUsernameAndPassword(customername, password);
	}
	
	}

	