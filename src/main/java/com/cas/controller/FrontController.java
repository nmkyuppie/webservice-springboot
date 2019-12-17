package com.cas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cas.business.entity.Circle;
import com.cas.business.entity.LoginDetails;
import com.cas.business.entity.Society;
import com.cas.business.service.BranchService;
import com.cas.business.service.HomeService;
import com.cas.business.service.LoginService;

@Controller
public class FrontController {	

	@Autowired
    LoginService loginService;

	@Autowired
    HomeService homeService;

	@Autowired
    BranchService branchService;

	@GetMapping("/login")
	public ModelAndView getLoginPage() {
		return new ModelAndView("login");
	}

	@GetMapping("/home")
	public ModelAndView getHomePage() {
		Map<String, Object> model = new HashMap<>();
		List<Circle> circleList = homeService.getCircleList();
		model.put("circleList", circleList);
		return new ModelAndView("home", model);
	}

	@GetMapping("/branch")
	public ModelAndView getBranchPage() {
		return new ModelAndView("branch");
	}
	
	@PostMapping(value="/validateUser")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView loginUser(@ModelAttribute("userName") String userName, @ModelAttribute("password") String password) {
		
		Map<String, Object> model = new HashMap<>();
		boolean isUserExist = loginService.existsByUserName(userName);
		
		if(isUserExist) {
			LoginDetails loginDetails = loginService.validateUser(userName, password);
			if(loginDetails == null) {
				model.put("message", "User name or password is invalid.");
				return new ModelAndView("login", model);
			}
			else {
				model.put("message", "Successfully logged in.");
				model.put("userName", userName);
				List<Circle> circleList = homeService.getCircleList();
				model.put("circleList", circleList);
				return new ModelAndView("home", model);
			}
			
		}
		else {
			model.put("message", "User name is invalid.");
			return new ModelAndView("login", model);
		}
	}
	
	@PostMapping(value="/saveBranch")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveBranch(@ModelAttribute("society") Society society, BindingResult result, ModelMap model) {
		branchService.save(society);
	    model.addAttribute("society", society);
		return "branch";
	}
	
}
