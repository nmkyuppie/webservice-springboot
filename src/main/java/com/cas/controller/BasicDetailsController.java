package com.cas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.cas.business.entity.Member;
import com.cas.business.repository.MemberRepository;
import com.cas.business.repository.SocietyRepository;
import com.cas.utils.Utils.Menu;

@Controller
@SessionAttributes({"userDetails","societyInfo"})
public class BasicDetailsController {
	
	@Autowired MemberRepository memberRepository;
	@Autowired SocietyRepository societyRepository;

	@GetMapping("/member/list")
	public ModelAndView getBranchPage() {
		Map<String, Object> model = new HashMap<>();
		List<Member> memberList = memberRepository.findAll();
		model.put("memberList", memberList);
		model.put("pageName", "member");
		model.put(Menu.MEMBERS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/member/add")
	public ModelAndView getAddMemberPage(@ModelAttribute("member") Member member, BindingResult result, ModelMap model) {
		model.put("pageName", "addmember");
		model.put(Menu.MEMBERS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/member/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveMember(@ModelAttribute("member") Member member, BindingResult result, ModelMap model) {
		memberRepository.save(member);
		model.addAttribute("message", "Member has been saved successfully.");
		model.put("pageName", "addmember");
		model.put(Menu.MEMBERS_M.toString(), "active");
		return "basicdetails";
	}
	
}
