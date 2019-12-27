package com.cas.business.service;

import com.cas.business.entity.UserDetails;

public interface LoginService {

	public UserDetails validateUser(String userName, String password);

	public Boolean existsByUserName(String userName);
}
