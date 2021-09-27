package com.sss.shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sss.shopping_mall.modal.Customer;
import com.sss.shopping_mall.services.CustomerService;




@Controller
public class CustomerController {

		@Autowired
		CustomerService customerService;


		@RequestMapping("/register")
		public String registration(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_REGISTER");
			return "register";
		}

		@PostMapping("/save-customer")
		public String registerCustomer(@ModelAttribute Customer customer, BindingResult bindingResult, HttpServletRequest request) {
			customerService.saveMyCustomer(customer);
			request.setAttribute("mode", "MODE_HOME");
			return "index";
		}

		
		
		@RequestMapping("/login")
		public String login(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_LOGIN");
			return "login";
		}
		
		@RequestMapping ("/login-customer")
		public String loginCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {
			if(customerService.findByCustomernameAndPassword(customer.getUsername(), customer.getPassword())!=null) {
				return "index";
			}
			else {
				request.setAttribute("error", "Invalid Customername or Password");
				request.setAttribute("mode", "MODE_LOGIN");
				return "User name alredy excist please try with another Username";
				
			}
		}

	}
