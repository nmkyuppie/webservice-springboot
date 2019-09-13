package com.cas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cas.business.dto.CustomResponse;
import com.cas.business.entity.LoginDetails;
import com.cas.business.login.service.LoginService;

@RestController
@RequestMapping("/")
public class LoginController {	

	@Autowired
    LoginService loginService;
	
	@ResponseBody
	String hi() {
		return "Hello";
	}
	
	@GetMapping(value="/login")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public @ResponseBody CustomResponse loginUser(
			@RequestParam("userName") String userName,
			@RequestParam("password") String password) {
		
		CustomResponse response = new CustomResponse();
		boolean isUserExist = loginService.existsByUserName(userName);
		
		if(isUserExist) {
			LoginDetails loginDetails = loginService.validateUser(userName, password);
			if(loginDetails == null) {
				response.setErrorMessage("User name or password is invalid.");
			}
			else {
				response.setResult(loginDetails);
				response.setErrorMessage("User name and password is correct.");
			}
			
		}
		else {
			response.setErrorMessage("User name is invalid.");
		}
		response.setStatus(HttpStatus.OK.getReasonPhrase());
		
		return response;
	}
	
}
