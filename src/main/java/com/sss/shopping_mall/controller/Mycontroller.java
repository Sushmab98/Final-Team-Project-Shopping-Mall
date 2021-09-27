package com.sss.shopping_mall.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.shopping_mall.modal.Shop;
import com.sss.shopping_mall.modal.Employee;
import com.sss.shopping_mall.modal.Mall;
import com.sss.shopping_mall.services.EmployeeService;
import com.sss.shopping_mall.services.MallService;
import com.sss.shopping_mall.services.ShopService;

@Controller
public class Mycontroller {

	@Autowired
	ShopService shopService;
	@Autowired
	EmployeeService employeeService;


	@RequestMapping("/registershop")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTERSHOP");
		return "welcomepage";
	}

	@PostMapping("/save-shop")
	public String registerShop(@ModelAttribute Shop shop, BindingResult bindingResult, HttpServletRequest request) {
		shopService.saveMyShop(shop);
		request.setAttribute("mode", "MODE_HOMESHOP");
		return "welcomepage";
	}

	@GetMapping("/show-shops")
	public String showAllShops(HttpServletRequest request) {
		request.setAttribute("shops", shopService.showAllShops());
		request.setAttribute("mode", "ALL_SHOPS");
		return "welcomepage";
	}

	@RequestMapping("/delete-shop")
	public String deleteShop(@RequestParam int id, HttpServletRequest request) {
		shopService.deleteMyShop(id);
		request.setAttribute("shops", shopService.showAllShops());
		request.setAttribute("mode", "ALL_SHOPS");
		return "welcomepage";
	}
	
	@RequestMapping("/edit-shop")
	public String editShop(@RequestParam int id,@ModelAttribute Shop shop,HttpServletRequest request) {
		request.setAttribute("shops", shopService.editShop(id));
		request.setAttribute("mode", "MODE_UPDATESHOP");
		return "welcomepage";
	}
	
	@RequestMapping("/shop")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	@RequestMapping ("/login-shop")
	public String loginShop(@ModelAttribute Shop shop, HttpServletRequest request) {
		if(shopService.findByIdAndShopname(shop.getId(), shop.getShopname())!=null) {
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
			
		}
	}
	

	

	@RequestMapping("/registeremployee")
	public String registrationemp(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTEREMPLOYEE");
		return "employeepage";
	}

	
		@PostMapping("/employee")
		public String registerEmployee(@ModelAttribute Employee employee, BindingResult bindingResult, HttpServletRequest request) {
		employeeService.saveMyEmployee(employee);
			request.setAttribute("mode", "MODE_HOMEEMPLOYEE");
			return "employeepage";
		
		}

		@GetMapping("/show-employees")
		public String showAllEmployees(HttpServletRequest request) {
			request.setAttribute("employees", employeeService.showAllEmployees());
			request.setAttribute("mode", "ALL_EMPLOYEES");
			return "employeepage";
		}
		@RequestMapping("/delete-employee")
		public String deleteEmployee(@RequestParam int id, HttpServletRequest request) {
			employeeService.deleteMyEmployee(id);
			request.setAttribute("employees", employeeService.showAllEmployees());
			request.setAttribute("mode", "ALL_EMPLOYEES");
			return "employeepage";
		}
		
		@RequestMapping("/edit-employee")
		public String editEmployee(@RequestParam int id,@ModelAttribute Employee employee ,HttpServletRequest request) {
			request.setAttribute("employees", employeeService.editEmployee(id));
			request.setAttribute("mode", "MODE_UPDATEEMPLOYEE");
			return "employeepage";
		}
		
		@RequestMapping("/employee")
		public String loginemp(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_LOGINEMP");
			return "employeepage";
		}
		
		@RequestMapping ("/login-employee")
		public String loginEmployee(@ModelAttribute Employee employee, HttpServletRequest request) {
			if(employeeService.findByUsernameAndPassword(employee.getUsername(), employee.getPassword())!=null) {
				return "homepage1";
			}
			else {
				request.setAttribute("error", "Invalid Username or Password");
				request.setAttribute("mode", "MODE_LOGINEMP");
				return "employeepage";
				
			}
		}
		
			
		

	}


