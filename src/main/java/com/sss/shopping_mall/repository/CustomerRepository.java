package com.sss.shopping_mall.repository;
import org.springframework.data.repository.CrudRepository;


import org.springframework.stereotype.Repository;

import com.sss.shopping_mall.modal.Customer;




@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	public Customer findByUsernameAndPassword(String username, String password);

	
}
