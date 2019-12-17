package com.cas.business.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.Society;
import com.cas.business.repository.BranchRepository;
import com.cas.business.service.BranchService;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class BranchServiceImpl implements BranchService {

	@Autowired
	BranchRepository branchRepository;

	@Override
	public Society save(Society society) {
		return branchRepository.save(society);
	}

}