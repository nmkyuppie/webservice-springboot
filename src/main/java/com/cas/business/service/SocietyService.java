package com.cas.business.service;

import java.util.List;

import com.cas.business.entity.Society;

public interface SocietyService {

	public Society save(Society society);

	public List<Society> findAll();

	public Society findById(Integer branchId);
}
