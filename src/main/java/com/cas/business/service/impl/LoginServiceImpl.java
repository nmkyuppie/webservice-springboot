package com.cas.business.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.UserDetails;
import com.cas.business.repository.LoginDetailsRepository;
import com.cas.business.service.LoginService;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDetailsRepository loginDetailsRepository;

	@Override
	public UserDetails validateUser(String userName, String password) {
		return loginDetailsRepository.findByUserNameAndPassword(userName, password);
	}

	@Override
	public Boolean existsByUserName(String userName) {
		return loginDetailsRepository.existsByUserName(userName);
	}

}