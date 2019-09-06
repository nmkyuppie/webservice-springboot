package com.cas.business.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.LoginDetails;

@Repository
public interface LoginDetailsRepository extends JpaRepository<LoginDetails, Integer>{
	
	Boolean existsByUserName(String userName);
	
	LoginDetails findByUserNameAndPassword(String userName, String password);

}
