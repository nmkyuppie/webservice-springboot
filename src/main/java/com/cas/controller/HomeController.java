package com.cas.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cas.business.entity.Block;
import com.cas.business.entity.Circle;
import com.cas.business.entity.District;
import com.cas.business.entity.Society;
import com.cas.business.repository.BlockRepository;
import com.cas.business.repository.CircleRepository;
import com.cas.business.repository.DistrictRepository;
import com.cas.business.repository.SocietyRepository;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired DistrictRepository districtRepository;
	@Autowired CircleRepository circleRepository;
	@Autowired BlockRepository blockRepository;
	@Autowired SocietyRepository societyRepository;

	@RequestMapping(value = "/home", method = { RequestMethod.POST, RequestMethod.GET })
	public String getHomePage(
			@ModelAttribute("district") String d,
			@ModelAttribute("circle") String c,
			@ModelAttribute("block") String b,
			BindingResult result, ModelMap model) {
		
		List<District> districtList = districtRepository.findAll();
		
		Integer district, circle, block;
		
		try {
			district = Integer.parseInt(d);
		}
		catch(NumberFormatException nfe){
			district = -1;
		}
		
		try {
			circle = Integer.parseInt(c);
		}
		catch(NumberFormatException nfe){
			circle = -1;
		}
		
		try {
			block = Integer.parseInt(b);
		}
		catch(NumberFormatException nfe){
			block = -1;
		}
		
		List<Circle> circleList = new ArrayList<>();
		if(!districtList.isEmpty() && district.equals(-1)) {
			circleList = circleRepository.findByDistrictId(districtList.get(0).getId());
			district = districtList.get(0).getId();
		}
		else {
			circleList = circleRepository.findByDistrictId(district);
		}
		
		List<Block> blockList = new ArrayList<>();
		if(!circleList.isEmpty() && circle.equals(-1)) {
			blockList = blockRepository.findByCircleId(circleList.get(0).getId());
			circle = circleList.get(0).getId();
			if(!blockList.isEmpty()) {
				block = blockList.get(0).getId();
			}
		}
		else if (!circleList.isEmpty()){
			blockList = blockRepository.findByCircleId(circle);
		}
		log.info("kmani "+district+circle+block);
		List<Society> societyList = societyRepository.findByDistrictAndCircleAndBlockOrderByIdAsc(district, circle, block);
		model.put("district", district.toString());
		model.put("circle", circle.toString());
		model.put("block", block.toString());
		model.put("societyList", societyList);
		model.put("districtList", districtList);
		model.put("circleList", circleList);
		model.put("blockList", blockList);
		return "home";
	}

}
