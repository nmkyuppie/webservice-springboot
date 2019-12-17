package com.cas.business.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cas.business.entity.Circle;
import com.cas.business.repository.CircleRepository;
import com.cas.business.service.HomeService;

@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	CircleRepository circleRepository;

	@Override
	public List<Circle> getCircleList() {
		return circleRepository.findAll();
	}

}