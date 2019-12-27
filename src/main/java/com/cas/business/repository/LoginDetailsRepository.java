package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.UserDetails;

@Repository
public interface LoginDetailsRepository extends JpaRepository<UserDetails, Integer>{
	
	Boolean existsByUserName(String userName);
	
	UserDetails findByUserNameAndPassword(String userName, String password);

}
