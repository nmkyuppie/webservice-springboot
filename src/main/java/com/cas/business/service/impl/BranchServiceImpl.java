package com.cas.business.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.Society;
import com.cas.business.repository.SocietyRepository;
import com.cas.business.repository.JewelLoanRepository;
import com.cas.business.service.SocietyService;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class BranchServiceImpl implements SocietyService {

	@Autowired
	SocietyRepository societyRepository;

	@Autowired
	JewelLoanRepository jewelLoanRepository;

	@Override
	public Society save(Society society) {
		return societyRepository.save(society);
	}

	@Override
	public List<Society> findAll() {
		return societyRepository.findByOrderByIdAsc();
	}

	@Override
	public Society findById(Integer id) {
		return societyRepository.findById(id).get();
	}

}