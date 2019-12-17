package com.cas.business.service;

import com.cas.business.entity.LoginDetails;

public interface LoginService {

	public LoginDetails validateUser(String userName, String password);

	public Boolean existsByUserName(String userName);
}
