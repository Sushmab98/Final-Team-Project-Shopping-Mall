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

import com.sss.shopping_mall.modal.Mall;
import com.sss.shopping_mall.services.MallService;
@Controller
public class MallController {
	@Autowired
	MallService mallService;
	

	@RequestMapping("/mall")
	public String WelcomeMall(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOMEMALL");
		return "mallpage";
	}

	@RequestMapping("/registermall")
	public String registrationMall(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTERMALL");
		return "mallpage";
	}

	@PostMapping("/save-mall")
	public String registerMall(@ModelAttribute Mall mall, BindingResult bindingResult, HttpServletRequest request) {
		mallService.saveMyMall(mall);
		request.setAttribute("mode", "MODE_HOMEMALL");
		return "mallpage";
	}

	@GetMapping("/show-malls")
	public String showAllMalls(HttpServletRequest request) {
		request.setAttribute("malls", mallService.showAllMalls());
		request.setAttribute("mode", "ALL_MALLS");
		return "mallpage";
	}

	@RequestMapping("/delete-mall")
	public String deleteMall(@RequestParam int id, HttpServletRequest request) {
		mallService.deleteMyMall(id);
		request.setAttribute("malls", mallService.showAllMalls());
		request.setAttribute("mode", "ALL_MALLS");
		return "mallpage";
	}
	
	@RequestMapping("/edit-mall")
	public String editMall(@RequestParam int id,@ModelAttribute Mall mall,HttpServletRequest request) {
		request.setAttribute("malls", mallService.editMall(id));
		request.setAttribute("mode", "MODE_UPDATEMALL");
		return "mallpage";
	}
	
	@RequestMapping("/loginmall")
	public String loginMall(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "mallpage";
	}
	
	@RequestMapping ("/login-mall")
	public String loginMall(@ModelAttribute Mall mall, HttpServletRequest request) {
		if(mallService.findByIdAndMallname(mall.getId(), mall.getMallname())!=null) {
			return "homepage";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "mallpage";
			
		}
	}

}
