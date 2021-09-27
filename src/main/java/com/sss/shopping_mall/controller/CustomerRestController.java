package com.sss.shopping_mall.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.shopping_mall.modal.Customer;
import com.sss.shopping_mall.services.CustomerService;



@org.springframework.web.bind.annotation.RestController
public class CustomerRestController {
	@Autowired
	private CustomerService customerService;

	@GetMapping("/save-customer")
	public String saveCustomer(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname, @RequestParam int age, @RequestParam String password) {
		Customer customer = new Customer(username, firstname, lastname, age, password);
		customerService.saveMyCustomer(customer);
		return "Customer Saved";
	}
}

