package com.cas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cas.business.entity.Circle;
import com.cas.business.entity.Society;
import com.cas.business.entity.UserDetails;
import com.cas.business.service.BranchService;
import com.cas.business.service.HomeService;
import com.cas.business.service.LoginService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes("userDetails")
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
	
	@ModelAttribute("userDetails")
	public UserDetails setUpUserForm() {
		return null;
	}

	@GetMapping("/home")
	public ModelAndView getHomePage() {
		Map<String, Object> model = new HashMap<>();
		List<Circle> circleList = homeService.getCircleList();
		model.put("circleList", circleList);
		return new ModelAndView("home", model);
	}

	@GetMapping("/branch/list")
	public ModelAndView getBranchPage() {
		Map<String, Object> model = new HashMap<>();
		List<Society> societyList = branchService.findAll();
		model.put("societyList", societyList);
		return new ModelAndView("branch", model);
	}

	@GetMapping("/branch/add")
	public ModelAndView getAddBranchPage(@ModelAttribute("society") Society society, BindingResult result, ModelMap model) {
		return new ModelAndView("addbranch");
	}

	@PostMapping("/branch/edit")
	public ModelAndView getEditBranchPage(@ModelAttribute("branchId") String branchId, BindingResult result, ModelMap model) {
		Society society = branchService.findById(Integer.parseInt(branchId));
	    model.addAttribute("society", society);
		return new ModelAndView("addbranch", model);
	}
	
	@PostMapping(value="/branch/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveBranch(@ModelAttribute("society") Society society, BindingResult result, ModelMap model) {
		log.info("mani {}", society);
		branchService.save(society);
		return "addbranch";
	}
	
	@PostMapping(value="/user/validate")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView loginUser(@ModelAttribute("userDetails") UserDetails userDetails,
			@ModelAttribute("userName") String userName, 
			@ModelAttribute("password") String password, 
			HttpSession session) {
		
		Map<String, Object> model = new HashMap<>();
		boolean isUserExist = loginService.existsByUserName(userName);
		
		if(isUserExist) {
			userDetails = loginService.validateUser(userName, password);
			if(userDetails == null) {
				model.put("message", "User name or password is invalid.");
				return new ModelAndView("login", model);
			}
			else {
				session.setAttribute("userDetails", userDetails);
				return new ModelAndView("redirect:/branch/list", model);
			}
			
		}
		else {
			model.put("message", "User name is invalid.");
			return new ModelAndView("login", model);
		}
	}
	
	@PostMapping("/destroy")
	public String destroySession(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
}
