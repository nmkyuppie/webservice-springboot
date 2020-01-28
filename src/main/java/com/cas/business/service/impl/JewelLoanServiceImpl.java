package com.cas.business.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.JewelLoan;
import com.cas.business.repository.JewelLoanRepository;
import com.cas.business.service.JewelLoanService;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class JewelLoanServiceImpl implements JewelLoanService {

	@Autowired
	JewelLoanRepository jewelLoanRepository;

	@Override
	public List<JewelLoan> findAll() {
		return jewelLoanRepository.findByOrderBySidAsc();
	}

	@Override
	public JewelLoan save(JewelLoan jewelLoan) {
		return jewelLoanRepository.save(jewelLoan);
	}

	@Override
	public JewelLoan findById(Integer sid) {
		return jewelLoanRepository.findById(sid).get();
	}

}