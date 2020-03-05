package com.cas.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cas.business.entity.Block;
import com.cas.business.entity.Circle;
import com.cas.business.entity.District;
import com.cas.business.entity.Society;
import com.cas.business.repository.BlockRepository;
import com.cas.business.repository.CircleRepository;
import com.cas.business.repository.SocietyRepository;
import com.cas.business.repository.DistrictRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired DistrictRepository districtRepository;
	@Autowired CircleRepository circleRepository;
	@Autowired BlockRepository blockRepository;
	@Autowired SocietyRepository societyRepository;

	@GetMapping("/home")
	public ModelAndView getHomePage() {
		Map<String, Object> model = new HashMap<>();
		List<District> districtList = districtRepository.findAll();
		List<Circle> circleList = new ArrayList<>();
		if(!districtList.isEmpty()) {
			circleList = circleRepository.findByDistrictId(districtList.get(0).getId());
		}
		List<Block> blockList = new ArrayList<>();
		if(!circleList.isEmpty()) {
			blockList = blockRepository.findByCircleId(districtList.get(0).getId());
		}
		List<Society> societyList = societyRepository.findByOrderByIdAsc();
		model.put("societyList", societyList);
		model.put("districtList", districtList);
		model.put("circleList", circleList);
		model.put("blockList", blockList);
		return new ModelAndView("home", model);
	}

}
