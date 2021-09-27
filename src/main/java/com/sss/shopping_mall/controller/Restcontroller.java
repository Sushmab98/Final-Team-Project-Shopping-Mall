package com.sss.shopping_mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sss.shopping_mall.modal.Shop;
import com.sss.shopping_mall.modal.Employee;
import com.sss.shopping_mall.modal.Mall;
import com.sss.shopping_mall.services.EmployeeService;
import com.sss.shopping_mall.services.MallService;
import com.sss.shopping_mall.services.ShopService;

@org.springframework.web.bind.annotation.RestController
public class Restcontroller {
	
	@Autowired
	private ShopService shopService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private MallService mallService;

	
	@GetMapping("/saveshop")
	public String saveShop(@RequestParam String shopname, @RequestParam String category, @RequestParam String shopstatus, @RequestParam String shopowner, @RequestParam String leasestatus) {
		Shop shop = new Shop(shopname, category, shopstatus, shopowner, leasestatus);
		shopService.saveMyShop(shop);
		return "Shop Saved";
	}
	@GetMapping("/save-employee")
	public String saveEmployee(@RequestParam String username, @RequestParam String fullname, @RequestParam String address, @RequestParam int salary, @RequestParam String password) {
		Employee employee= new Employee(username, fullname, address, salary, password);
	employeeService.saveMyEmployee(employee);
		return "Employee Saved";
	}
	
	@GetMapping("/savemall")
	public String saveMall(@RequestParam String mallname, @RequestParam String category, @RequestParam String mallstatus, @RequestParam String mallowner, @RequestParam String leasestatus) {
		Mall mall = new Mall(mallname, category, mallstatus, mallowner, leasestatus);
		mallService.saveMyMall(mall);
		return "Mall Saved";
	}
}
