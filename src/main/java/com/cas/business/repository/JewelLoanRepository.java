package com.cas.business.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cas.business.entity.JewelLoan;

@Repository
public interface JewelLoanRepository extends JpaRepository<JewelLoan, Integer>{

	List<JewelLoan> findByOrderBySidAsc();
	
}
