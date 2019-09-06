package com.cas.business.login.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.LoginDetails;
import com.cas.business.login.service.LoginService;
import com.cas.business.repository.LoginDetailsRepository;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDetailsRepository loginDetailsRepository;

	@Override
	public LoginDetails validateUser(String userName, String password) {
		return loginDetailsRepository.findByUserNameAndPassword(userName, password);
	}

	@Override
	public Boolean existsByUserName(String userName) {
		return loginDetailsRepository.existsByUserName(userName);
	}

}