package com.cas.business.service;

import java.util.List;

import com.cas.business.entity.JewelLoan;

public interface JewelLoanService {

	public List<JewelLoan> findAll();

	public JewelLoan findById(Integer sid);

	public JewelLoan save(JewelLoan jewelLoan);
}
