package com.cas.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cas.business.entity.Block;
import com.cas.business.entity.Circle;
import com.cas.business.entity.District;
import com.cas.business.entity.Society;
import com.cas.business.repository.BlockRepository;
import com.cas.business.repository.CircleRepository;
import com.cas.business.repository.DistrictRepository;
import com.cas.business.repository.SocietyRepository;
import com.cas.business.service.SocietyService;
import com.cas.utils.Utils.Menu;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes({"userDetails","societyInfo"})
public class SocietyController {

	@Autowired SocietyService societyService;
	@Autowired SocietyRepository societyRepository;
	@Autowired DistrictRepository districtRepository;
	@Autowired CircleRepository circleRepository;
	@Autowired BlockRepository blockRepository;

	/**
	 * Needs to fulfill the expectation of session attributes
	 * @return
	 */
	@ModelAttribute("societyInfo")
	public Society setUpSociety() {
		return null;
	}

	@GetMapping("/society/list")
	public ModelAndView getBranchPage() {
		Map<String, Object> model = new HashMap<>();
		List<Society> societyList = societyService.findAll();
		model.put("societyList", societyList);
		return new ModelAndView("society", model);
	}

	@GetMapping("/society/add")
	public ModelAndView getAddBranchPage(@ModelAttribute("society") Society society, BindingResult result, ModelMap model) {
		model = setUpData(model);
		return new ModelAndView("addsociety", model);
	}

	@PostMapping("/society/edit")
	public ModelAndView getEditBranchPage(@ModelAttribute("societyId") String societyId, BindingResult result, ModelMap model) {
		Society society = societyService.findById(Integer.parseInt(societyId));
		model.addAttribute("society", society);
		model = setUpData(model);
		return new ModelAndView("addsociety", model);
	}

	@PostMapping(value="/society/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveBranch(@ModelAttribute("society") Society society, BindingResult result, ModelMap model) {
		model = setUpData(model);
		societyService.save(society);
		model.addAttribute("message", "Society has been saved successfully.");
		return "addsociety";
	}

	@GetMapping(value="/society/basicDetails")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView getBasicDetailsPage(@ModelAttribute("societyId") String societyId)  {
		return new ModelAndView("basicDetails");
	}

	@GetMapping("/society/info")
	public ModelAndView getSocietyPage(@ModelAttribute("regno") String registrationNumber, @ModelAttribute("societyInfo") Society society, BindingResult result, ModelMap model, HttpSession session) {
		society = societyRepository.findByRegistrationNumber(registrationNumber);
		model = setUpData(model);
		model.put(Menu.SOCIETY_DETAILS_M.toString(), "active");
		model.put("pageName", "societyinfo");
		model.put("disabled", "true");
		model.put("method", "GET");
		model.put("action", "/society/edit");
		model.put("buttonIcon", "fa fa-pencil");
		model.put("buttonText", "Edit");
		model.put("areaCoverage", society.getAreaCoverage());
		model.put("societyInfo", society);
		log.info("kirti"+society);
		session.setAttribute("societyInfo", society);
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/society/edit")
	public ModelAndView getSocietyPage1(@ModelAttribute("societyInfo") Society society, BindingResult result, ModelMap model, HttpSession session) {
		society = (Society) session.getAttribute("societyInfo");
		model = setUpData(model);
		model.put(Menu.SOCIETY_DETAILS_M.toString(), "active");
		model.put("pageName", "societyinfo");
		model.put("disabled", "false");
		model.put("method", "POST");
		model.put("action", "/society/save");
		model.put("buttonIcon", "fa fa-floppy-o");
		model.put("buttonText", "Save");
		model.put("areaCoverage", society.getAreaCoverage());
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/society/save")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView saveSocietyBasicDetails(@ModelAttribute("society") Society society, BindingResult result, ModelMap model, HttpSession session) {
		model = setUpData(model);
		societyService.save(society);
		model.addAttribute("message", "Society has been saved successfully.");
		model = setUpData(model);
		model.put(Menu.SOCIETY_DETAILS_M.toString(), "active");
		model.put("pageName", "societyinfo");
		model.put("disabled", "true");
		model.put("method", "GET");
		model.put("action", "/society/edit");
		model.put("buttonIcon", "fa fa-pencil");
		model.put("buttonText", "Edit");
		model.put("areaCoverage", society.getAreaCoverage());
		model.put("societyInfo", society);
		log.info("kirti"+society);
		session.setAttribute("societyInfo", society);
		return new ModelAndView("basicdetails", model);
	}

	private ModelMap setUpData(ModelMap model) {
		List<District> districtList = districtRepository.findAll();
		List<Circle> circleList = new ArrayList<>();
		if(!districtList.isEmpty()) {
			circleList = circleRepository.findByDistrictId(districtList.get(0).getId());
		}
		List<Block> blockList = new ArrayList<>();
		if(!circleList.isEmpty()) {
			blockList = blockRepository.findByCircleId(districtList.get(0).getId());
		}
		model.put("districtList", districtList);
		model.put("circleList", circleList);
		model.put("blockList", blockList);
		return model;
	}

}
