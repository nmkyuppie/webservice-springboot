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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cas.business.entity.Member;
import com.cas.business.entity.MemberHistory;
import com.cas.business.entity.Shares;
import com.cas.business.entity.Society;
import com.cas.business.entity.UserDetails;
import com.cas.business.repository.MemberHistoryRepository;
import com.cas.business.repository.MemberRepository;
import com.cas.business.repository.SharesRepository;
import com.cas.business.repository.SocietyRepository;
import com.cas.utils.Utils.Menu;

@Controller
@SessionAttributes({"userDetails","societyInfo"})
public class BasicDetailsController {

	@Autowired SocietyRepository societyRepository;
	@Autowired MemberRepository memberRepository;
	@Autowired MemberHistoryRepository memberHistoryRepository;
	@Autowired SharesRepository sharesRepository;

	@GetMapping("/member/list")
	public ModelAndView getMemberPage() {
		Map<String, Object> model = new HashMap<>();
		List<Member> memberList = memberRepository.findAllByOrderByYearStartDesc();
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
	public String saveMember(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("member") Member member, 
			BindingResult result, ModelMap model) {
		member.setSocietyId(society.getId());
		member = memberRepository.save(member);
		memberHistoryRepository.save(MemberHistory.setUpObject(member, userDetails.getLoginId()));
		model.addAttribute("message", "Member has been saved successfully.");
		model.put("pageName", "addmember");
		model.put(Menu.MEMBERS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/member/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteMember(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer memberId, 
			BindingResult result, ModelMap model) {
		memberHistoryRepository.save(MemberHistory.setUpObject(memberRepository.findById(memberId).get(), userDetails.getLoginId()));
		memberRepository.deleteById(memberId);
		model.addAttribute("message", "Member has been deleted successfully.");
		return getMemberPage();
	}

	@PostMapping("/member/edit")
	public ModelAndView getEditMemberPage(
			@ModelAttribute("id") Integer memberId, BindingResult result, ModelMap model) {
		Member member = memberRepository.findById(memberId).get();
		model.put("pageName", "addmember");
		model.put(Menu.MEMBERS_M.toString(), "active");
		model.put("member", member);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/member/history")
	public ModelAndView getHistoryMemberPage(@ModelAttribute("id") Integer memberId) {
		Map<String, Object> model = new HashMap<>();
		List<MemberHistory> memberHistoryList = memberHistoryRepository.findByMemberIdOrderByUpdatedOnDesc(memberId);
		model.put("memberHistoryList", memberHistoryList);
		model.put("pageName", "memberhistory");
		model.put(Menu.MEMBERS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/shares/list")
	public ModelAndView getSharesPage() {
		Map<String, Object> model = new HashMap<>();
		List<Shares> sharesList = sharesRepository.findAllByOrderByYearStartDesc();
		model.put("sharesList", sharesList);
		model.put("pageName", "shares");
		model.put(Menu.SHARES_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/shares/add")
	public ModelAndView getAddSharesPage(@ModelAttribute("shares") Shares shares, BindingResult result, ModelMap model) {
		model.put("pageName", "addshares");
		model.put(Menu.SHARES_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/shares/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveShares(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("shares") Shares shares, 
			BindingResult result, ModelMap model) {
		shares.setSocietyId(society.getId());
		shares = sharesRepository.save(shares);
//		memberHistoryRepository.save(MemberHistory.setUpObject(shares, userDetails.getLoginId()));
		model.addAttribute("message", "Shares has been saved successfully.");
		model.put("pageName", "addshares");
		model.put(Menu.SHARES_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/shares/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteShares(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer sharesId, 
			BindingResult result, ModelMap model) {
//		memberHistoryRepository.save(MemberHistory.setUpObject(memberRepository.findById(memberId).get(), userDetails.getLoginId()));
		sharesRepository.deleteById(sharesId);
		model.addAttribute("message", "Shares has been deleted successfully.");
		return getSharesPage();
	}

	@PostMapping("/shares/edit")
	public ModelAndView getEditSharesPage(
			@ModelAttribute("id") Integer sharesId, BindingResult result, ModelMap model) {
		Shares shares = sharesRepository.findById(sharesId).get();
		model.put("pageName", "addshares");
		model.put(Menu.SHARES_M.toString(), "active");
		model.put("shares", shares);
		return new ModelAndView("basicdetails", model);
	}
	
}
