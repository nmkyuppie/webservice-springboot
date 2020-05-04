package com.cas.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cas.business.entity.AuditDetails;
import com.cas.business.entity.AuditDetailsHistory;
import com.cas.business.entity.BoardDetails;
import com.cas.business.entity.BoardDetailsHistory;
import com.cas.business.entity.BonusDetails;
import com.cas.business.entity.BonusDetailsHistory;
import com.cas.business.entity.Deputation;
import com.cas.business.entity.DeputationHistory;
import com.cas.business.entity.Document;
import com.cas.business.entity.Inspection;
import com.cas.business.entity.InspectionHistory;
import com.cas.business.entity.Member;
import com.cas.business.entity.MemberHistory;
import com.cas.business.entity.Petition;
import com.cas.business.entity.PetitionHistory;
import com.cas.business.entity.PromotionDetails;
import com.cas.business.entity.PromotionDetailsHistory;
import com.cas.business.entity.RetirementDetails;
import com.cas.business.entity.RetirementDetailsHistory;
import com.cas.business.entity.Shares;
import com.cas.business.entity.SharesHistory;
import com.cas.business.entity.Society;
import com.cas.business.entity.SocietyEmployee;
import com.cas.business.entity.SocietyEmployeeHistory;
import com.cas.business.entity.StockVerification;
import com.cas.business.entity.StockVerificationHistory;
import com.cas.business.entity.UserDetails;
import com.cas.business.repository.AuditDetailsHistoryRepository;
import com.cas.business.repository.AuditDetailsRepository;
import com.cas.business.repository.BoardDetailsHistoryRepository;
import com.cas.business.repository.BoardDetailsRepository;
import com.cas.business.repository.BonusDetailsHistoryRepository;
import com.cas.business.repository.BonusDetailsRepository;
import com.cas.business.repository.DeputationHistoryRepository;
import com.cas.business.repository.DeputationRepository;
import com.cas.business.repository.DocumentRepository;
import com.cas.business.repository.InspectionHistoryRepository;
import com.cas.business.repository.InspectionRepository;
import com.cas.business.repository.MemberHistoryRepository;
import com.cas.business.repository.MemberRepository;
import com.cas.business.repository.PetitionHistoryRepository;
import com.cas.business.repository.PetitionRepository;
import com.cas.business.repository.PromotionDetailsHistoryRepository;
import com.cas.business.repository.PromotionDetailsRepository;
import com.cas.business.repository.RetirementDetailsHistoryRepository;
import com.cas.business.repository.RetirementDetailsRepository;
import com.cas.business.repository.SharesHistoryRepository;
import com.cas.business.repository.SharesRepository;
import com.cas.business.repository.SocietyEmployeeHistoryRepository;
import com.cas.business.repository.SocietyEmployeeRepository;
import com.cas.business.repository.SocietyRepository;
import com.cas.business.repository.StockVerificationHistoryRepository;
import com.cas.business.repository.StockVerificationRepository;
import com.cas.utils.FileUtils;
import com.cas.utils.Utils.Menu;

import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes({"userDetails","societyInfo"})
@Slf4j
public class BasicDetailsController {

	@Autowired DocumentRepository documentRepository;
	@Autowired SocietyRepository societyRepository;
	@Autowired MemberRepository memberRepository;
	@Autowired MemberHistoryRepository memberHistoryRepository;
	@Autowired SharesRepository sharesRepository;
	@Autowired SharesHistoryRepository sharesHistoryRepository;
	@Autowired SocietyEmployeeRepository societyEmployeeRepository;
	@Autowired SocietyEmployeeHistoryRepository societyEmployeeHistoryRepository;
	@Autowired RetirementDetailsRepository retirementDetailsRepository;
	@Autowired RetirementDetailsHistoryRepository retirementDetailsHistoryRepository;
	@Autowired AuditDetailsRepository auditDetailsRepository;
	@Autowired AuditDetailsHistoryRepository auditDetailsHistoryRepository;
	@Autowired BoardDetailsRepository boardDetailsRepository;
	@Autowired BoardDetailsHistoryRepository boardDetailsHistoryRepository;
	@Autowired PromotionDetailsRepository promotionDetailsRepository;
	@Autowired PromotionDetailsHistoryRepository promotionDetailsHistoryRepository;
	@Autowired PetitionRepository petitionRepository;
	@Autowired PetitionHistoryRepository petitionHistoryRepository;
	@Autowired DeputationRepository deputationRepository;
	@Autowired DeputationHistoryRepository deputationHistoryRepository;
	@Autowired BonusDetailsRepository bonusDetailsRepository;
	@Autowired BonusDetailsHistoryRepository bonusDetailsHistoryRepository;
	@Autowired StockVerificationRepository stockVerificationRepository;
	@Autowired StockVerificationHistoryRepository stockVerificationHistoryRepository;
	@Autowired InspectionRepository inspectionRepository;
	@Autowired InspectionHistoryRepository inspectionHistoryRepository;

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
		sharesHistoryRepository.save(SharesHistory.setUpObject(shares, userDetails.getLoginId()));
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
		sharesHistoryRepository.save(SharesHistory.setUpObject(sharesRepository.findById(sharesId).get(), userDetails.getLoginId()));
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

	@PostMapping("/shares/history")
	public ModelAndView getSharesHistoryPage(@ModelAttribute("id") Integer sharesId) {
		Map<String, Object> model = new HashMap<>();
		List<SharesHistory> sharesHistoryList = sharesHistoryRepository.findBySharesIdOrderByUpdatedOnDesc(sharesId);
		model.put("sharesHistoryList", sharesHistoryList);
		model.put("pageName", "shareshistory");
		model.put(Menu.SHARES_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/societyEmployee/list")
	public ModelAndView getSocietyEmployeePage() {
		Map<String, Object> model = new HashMap<>();
		List<SocietyEmployee> societyEmployeeList = societyEmployeeRepository.findAllByOrderByName();
		model.put("societyEmployeeList", societyEmployeeList);
		model.put("pageName", "societyemployee");
		model.put(Menu.SOCIETY_EMPLOYEE_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/societyEmployee/add")
	public ModelAndView getAddSocietyEmployeePage(@ModelAttribute("societyEmployee") SocietyEmployee societyEmployee, BindingResult result, ModelMap model) {
		model.put("pageName", "addsocietyemployee");
		model.put(Menu.SOCIETY_EMPLOYEE_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/societyEmployee/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveSocietyEmployee(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("societyEmployee") SocietyEmployee societyEmployee, 
			BindingResult result, ModelMap model) {
		societyEmployee.setSocietyId(society.getId());
		societyEmployee = societyEmployeeRepository.save(societyEmployee);
		societyEmployeeHistoryRepository.save(SocietyEmployeeHistory.setUpObject(societyEmployee, userDetails.getLoginId()));
		model.addAttribute("message", "Society employee has been saved successfully.");
		model.put("pageName", "addsocietyemployee");
		model.put(Menu.SOCIETY_EMPLOYEE_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/societyEmployee/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteSocietyEmployee(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer societyEmployeeId, 
			BindingResult result, ModelMap model) {
		societyEmployeeHistoryRepository.save(SocietyEmployeeHistory.setUpObject(societyEmployeeRepository.findById(societyEmployeeId).get(), userDetails.getLoginId()));
		societyEmployeeRepository.deleteById(societyEmployeeId);
		model.addAttribute("message", "Society employee has been deleted successfully.");
		return getSocietyEmployeePage();
	}

	@PostMapping("/societyEmployee/edit")
	public ModelAndView getEditSocietyEmployeePage(
			@ModelAttribute("id") Integer societyEmployeeId, BindingResult result, ModelMap model) {
		SocietyEmployee societyEmployee = societyEmployeeRepository.findById(societyEmployeeId).get();
		model.put("pageName", "addsocietyemployee");
		model.put(Menu.SOCIETY_EMPLOYEE_DETAILS_M.toString(), "active");
		model.put("societyEmployee", societyEmployee);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/societyEmployee/history")
	public ModelAndView getSocietyEmployeeHistoryPage(@ModelAttribute("id") Integer societyEmployeeId) {
		Map<String, Object> model = new HashMap<>();
		List<SocietyEmployeeHistory> societyEmployeeHistoryList = societyEmployeeHistoryRepository.findBySocietyEmployeeIdOrderByUpdatedOnDesc(societyEmployeeId);
		model.put("societyEmployeeHistoryList", societyEmployeeHistoryList);
		model.put("pageName", "societyemployeehistory");
		model.put(Menu.SOCIETY_EMPLOYEE_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/retirementDetails/list")
	public ModelAndView getRetirementDetailsPage() {
		Map<String, Object> model = new HashMap<>();
		List<RetirementDetails> retirementDetailsList = retirementDetailsRepository.findAllByOrderByIdDesc();
		model.put("retirementDetailsList", retirementDetailsList);
		model.put("pageName", "retirementdetails");
		model.put(Menu.RETIREMENT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/retirementDetails/add")
	public ModelAndView getAddRetirementDetailsPage(@ModelAttribute("retirementDetails") RetirementDetails retirementDetails, 
			BindingResult result, ModelMap model) {
		model.put("pageName", "addretirementdetails");
		model.put(Menu.RETIREMENT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/retirementDetails/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveRetirementDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("retirementDetails") RetirementDetails retirementDetails, 
			BindingResult result, ModelMap model) {
		retirementDetails.setSocietyId(society.getId());
		retirementDetails = retirementDetailsRepository.save(retirementDetails);
		retirementDetailsHistoryRepository.save(RetirementDetailsHistory.setUpObject(retirementDetails, userDetails.getLoginId()));
		model.addAttribute("message", "Retirement details has been saved successfully.");
		model.put("pageName", "addretirementdetails");
		model.put(Menu.RETIREMENT_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/retirementDetails/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteRetirementDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer retirementDetailsId, 
			BindingResult result, ModelMap model) {
		retirementDetailsHistoryRepository.save(RetirementDetailsHistory.setUpObject(retirementDetailsRepository.findById(retirementDetailsId).get(), userDetails.getLoginId()));
		retirementDetailsRepository.deleteById(retirementDetailsId);
		model.addAttribute("message", "Retirement Details has been deleted successfully.");
		return getRetirementDetailsPage();
	}

	@PostMapping("/retirementDetails/edit")
	public ModelAndView getEditRetirementDetailsPage(
			@ModelAttribute("id") Integer retirementDetailsId, BindingResult result, ModelMap model) {
		RetirementDetails retirementDetails = retirementDetailsRepository.findById(retirementDetailsId).get();
		model.put("pageName", "addretirementdetails");
		model.put(Menu.RETIREMENT_DETAILS_M.toString(), "active");
		model.put("retirementDetails", retirementDetails);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/retirementDetails/history")
	public ModelAndView getRetirementDetailsHistoryPage(@ModelAttribute("id") Integer retirementDetailsId) {
		Map<String, Object> model = new HashMap<>();
		List<RetirementDetailsHistory> retirementDetailsHistoryList = retirementDetailsHistoryRepository.findByRetirementDetailsIdOrderByUpdatedOnDesc(retirementDetailsId);
		model.put("retirementDetailsHistoryList", retirementDetailsHistoryList);
		model.put("pageName", "retirementdetailshistory");
		model.put(Menu.RETIREMENT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/auditDetails/list")
	public ModelAndView getAuditDetailsPage() {
		Map<String, Object> model = new HashMap<>();
		List<AuditDetails> auditDetailsList = auditDetailsRepository.findAllByOrderByYearStartDesc();
		model.put("auditDetailsList", auditDetailsList);
		model.put("pageName", "auditdetails");
		model.put(Menu.AUDIT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/auditDetails/add")
	public ModelAndView getAddAuditDetailsPage(@ModelAttribute("auditDetails") AuditDetails auditDetails, BindingResult result, ModelMap model) {
		model.put("pageName", "addauditdetails");
		model.put(Menu.AUDIT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/auditDetails/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveAuditDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("auditDetails") AuditDetails auditDetails, 
			BindingResult result, ModelMap model) {
		auditDetails.setSocietyId(society.getId());
		auditDetails = auditDetailsRepository.save(auditDetails);
		auditDetailsHistoryRepository.save(AuditDetailsHistory.setUpObject(auditDetails, userDetails.getLoginId()));
		model.addAttribute("message", "Audit details has been saved successfully.");
		model.put("pageName", "addauditdetails");
		model.put(Menu.AUDIT_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/auditDetails/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteAuditDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer auditDetailsId, 
			BindingResult result, ModelMap model) {
		auditDetailsHistoryRepository.save(AuditDetailsHistory.setUpObject(auditDetailsRepository.findById(auditDetailsId).get(), userDetails.getLoginId()));
		auditDetailsRepository.deleteById(auditDetailsId);
		model.addAttribute("message", "Audit Details has been deleted successfully.");
		return getAuditDetailsPage();
	}

	@PostMapping("/auditDetails/edit")
	public ModelAndView getEditAuditDetailsPage(
			@ModelAttribute("id") Integer auditDetailsId, BindingResult result, ModelMap model) {
		AuditDetails auditDetails = auditDetailsRepository.findById(auditDetailsId).get();
		model.put("pageName", "addauditdetails");
		model.put(Menu.AUDIT_DETAILS_M.toString(), "active");
		model.put("auditDetails", auditDetails);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/auditDetails/history")
	public ModelAndView getAuditDetailsHistoryPage(@ModelAttribute("id") Integer auditDetailsId) {
		Map<String, Object> model = new HashMap<>();
		List<AuditDetailsHistory> auditDetailsHistoryList = auditDetailsHistoryRepository.findByAuditDetailsIdOrderByUpdatedOnDesc(auditDetailsId);
		model.put("auditDetailsHistoryList", auditDetailsHistoryList);
		model.put("pageName", "auditdetailshistory");
		model.put(Menu.AUDIT_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/boardDetails/list")
	public ModelAndView getBoardDetailsPage() {
		Map<String, Object> model = new HashMap<>();
		List<BoardDetails> boardDetailsList = boardDetailsRepository.findAllByOrderByElectedYearFromDesc();
		model.put("boardDetailsList", boardDetailsList);
		model.put("pageName", "boarddetails");
		model.put(Menu.BOARD_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/boardDetails/add")
	public ModelAndView getAddBoardDetailsPage(@ModelAttribute("boardDetails") BoardDetails boardDetails, BindingResult result, ModelMap model) {
		model.put("pageName", "addboarddetails");
		model.put(Menu.BOARD_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/boardDetails/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveAuditBoardDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("boardDetails") BoardDetails boardDetails, 
			BindingResult result, ModelMap model) {
		boardDetails.setSocietyId(society.getId());
		boardDetails = boardDetailsRepository.save(boardDetails);
		boardDetailsHistoryRepository.save(BoardDetailsHistory.setUpObject(boardDetails, userDetails.getLoginId()));
		model.addAttribute("message", "Board details has been saved successfully.");
		model.put("pageName", "addboarddetails");
		model.put(Menu.BOARD_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/boardDetails/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteBoardDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer boardDetailsId, 
			BindingResult result, ModelMap model) {
		boardDetailsHistoryRepository.save(BoardDetailsHistory.setUpObject(boardDetailsRepository.findById(boardDetailsId).get(), userDetails.getLoginId()));
		boardDetailsRepository.deleteById(boardDetailsId);
		model.addAttribute("message", "Board Details has been deleted successfully.");
		return getBoardDetailsPage();
	}

	@PostMapping("/boardDetails/edit")
	public ModelAndView getEditBoardDetailsPage(
			@ModelAttribute("id") Integer boardDetailsId, BindingResult result, ModelMap model) {
		BoardDetails boardDetails = boardDetailsRepository.findById(boardDetailsId).get();
		model.put("pageName", "addboarddetails");
		model.put(Menu.BOARD_DETAILS_M.toString(), "active");
		model.put("boardDetails", boardDetails);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/boardDetails/history")
	public ModelAndView getBoardDetailsHistoryPage(@ModelAttribute("id") Integer boardDetailsId) {
		Map<String, Object> model = new HashMap<>();
		List<BoardDetailsHistory> boardDetailsHistoryList = boardDetailsHistoryRepository.findByBoardDetailsIdOrderByUpdatedOnDesc(boardDetailsId);
		model.put("boardDetailsHistoryList", boardDetailsHistoryList);
		model.put("pageName", "boarddetailshistory");
		model.put(Menu.BOARD_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/promotionDetails/list")
	public ModelAndView getPromotionDetailsPage() {
		Map<String, Object> model = new HashMap<>();
		List<PromotionDetails> promotionDetailsList = promotionDetailsRepository.findAllByOrderByPromotedOnDesc();
		model.put("promotionDetailsList", promotionDetailsList);
		model.put("pageName", "promotiondetails");
		model.put(Menu.PROMOTION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/promotionDetails/add")
	public ModelAndView getAddPromotionDetailsPage(@ModelAttribute("promotionDetails") PromotionDetails promotionDetails, BindingResult result, ModelMap model) {
		model.put("pageName", "addpromotiondetails");
		model.put(Menu.PROMOTION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/promotionDetails/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String savePromotionDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("promotionDetails") PromotionDetails promotionDetails, 
			BindingResult result, ModelMap model) {
		promotionDetails.setSocietyId(society.getId());
		promotionDetails = promotionDetailsRepository.save(promotionDetails);
		promotionDetailsHistoryRepository.save(PromotionDetailsHistory.setUpObject(promotionDetails, userDetails.getLoginId()));
		model.addAttribute("message", "Promotion details has been saved successfully.");
		model.put("pageName", "addpromotiondetails");
		model.put(Menu.PROMOTION_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping(value="/promotionDetails/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deletePromotionDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer promotionDetailsId, 
			BindingResult result, ModelMap model) {
		promotionDetailsHistoryRepository.save(PromotionDetailsHistory.setUpObject(promotionDetailsRepository.findById(promotionDetailsId).get(), userDetails.getLoginId()));
		promotionDetailsRepository.deleteById(promotionDetailsId);
		model.addAttribute("message", "Promotion Details has been deleted successfully.");
		return getPromotionDetailsPage();
	}

	@PostMapping("/promotionDetails/edit")
	public ModelAndView getEditPromotionDetailsPage(
			@ModelAttribute("id") Integer promotionDetailsId, BindingResult result, ModelMap model) {
		PromotionDetails promotionDetails = promotionDetailsRepository.findById(promotionDetailsId).get();
		model.put("pageName", "addpromotiondetails");
		model.put(Menu.PROMOTION_DETAILS_M.toString(), "active");
		model.put("promotionDetails", promotionDetails);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping("/promotionDetails/history")
	public ModelAndView getPromotionDetailsHistoryPage(@ModelAttribute("id") Integer promotionDetailsId) {
		Map<String, Object> model = new HashMap<>();
		List<PromotionDetailsHistory> promotionDetailsHistoryList = promotionDetailsHistoryRepository.findByPromotionDetailsIdOrderByUpdatedOnDesc(promotionDetailsId);
		model.put("promotionDetailsHistoryList", promotionDetailsHistoryList);
		model.put("pageName", "promotiondetailshistory");
		model.put(Menu.PROMOTION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/bonusDetails/list")
	public ModelAndView getBonusDetailsPage() {
		Map<String, Object> model = new HashMap<>();
		List<BonusDetails> bonusDetailsList = bonusDetailsRepository.findAllByOrderByIdDesc();
		model.put("bonusDetailsList", bonusDetailsList);
		model.put("pageName", "bonusdetails");
		model.put(Menu.BONUS_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/bonusDetails/add")
	public ModelAndView getAddBonusDetailsPage(@ModelAttribute("bonusDetails") BonusDetails bonusDetails, BindingResult result, ModelMap model) {
		model.put("pageName", "addbonusdetails");
		model.put(Menu.BONUS_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/bonusDetails/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveBonusDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("bonusDetails") BonusDetails bonusDetails, 
			BindingResult result, ModelMap model) {
		bonusDetails.setSocietyId(society.getId());
		bonusDetails = bonusDetailsRepository.save(bonusDetails);
		bonusDetailsHistoryRepository.save(BonusDetailsHistory.setUpObject(bonusDetails, userDetails.getLoginId()));
		model.addAttribute("message", "Bonus Details has been saved successfully.");
		model.put("pageName", "addbonusdetails");
		model.put(Menu.BONUS_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping("/bonusDetails/edit")
	public ModelAndView getEditBonusDetailsPage(
			@ModelAttribute("id") Integer bonusDetailsId, BindingResult result, ModelMap model) {
		BonusDetails bonusDetails = bonusDetailsRepository.findById(bonusDetailsId).get();
		model.put("pageName", "addbonusdetails");
		model.put(Menu.BONUS_DETAILS_M.toString(), "active");
		model.put("bonusDetails", bonusDetails);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/bonusDetails/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteBonusDetails(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer bonusDetailsId, 
			BindingResult result, ModelMap model) {
		bonusDetailsHistoryRepository.save(BonusDetailsHistory.setUpObject(bonusDetailsRepository.findById(bonusDetailsId).get(), userDetails.getLoginId()));
		bonusDetailsRepository.deleteById(bonusDetailsId);
		model.addAttribute("message", "Bonus details has been deleted successfully.");
		return getDeputationPage();
	}

	@PostMapping("/bonusDetails/history")
	public ModelAndView getBonusDetailsHistoryPage(@ModelAttribute("id") Integer deputationId) {
		Map<String, Object> model = new HashMap<>();
		List<BonusDetailsHistory> bonusDetailsHistoryList = bonusDetailsHistoryRepository.findByBonusDetailsIdOrderByUpdatedOnDesc(deputationId);
		model.put("bonusDetailsHistoryList", bonusDetailsHistoryList);
		model.put("pageName", "bonusdetailshistory");
		model.put(Menu.BONUS_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/stockVerification/list")
	public ModelAndView getStockVerificationPage() {
		Map<String, Object> model = new HashMap<>();
		List<StockVerification> stockVerificationList = stockVerificationRepository.findAllByOrderByIdDesc();
		model.put("stockVerificationList", stockVerificationList);
		model.put("pageName", "stockverification");
		model.put(Menu.STOCK_VERIFICATION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/stockVerification/add")
	public ModelAndView getAddStockVerificationPage(@ModelAttribute("stockVerification") StockVerification stockVerification, 
			BindingResult result, ModelMap model) {
		model.put("pageName", "addstockverification");
		model.put(Menu.STOCK_VERIFICATION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/stockVerification/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveStockVerification(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("stockVerification") StockVerification stockVerification, 
			BindingResult result, ModelMap model) {
		stockVerification.setSocietyId(society.getId());
		stockVerification = stockVerificationRepository.save(stockVerification);
		stockVerificationHistoryRepository.save(StockVerificationHistory.setUpObject(stockVerification, userDetails.getLoginId()));
		model.addAttribute("message", "Stock verification has been saved successfully.");
		model.put("pageName", "addstockverification");
		model.put(Menu.STOCK_VERIFICATION_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping("/stockVerification/edit")
	public ModelAndView getEditStockVerificationPage(
			@ModelAttribute("id") Integer stockVerificationId, BindingResult result, ModelMap model) {
		StockVerification stockVerification = stockVerificationRepository.findById(stockVerificationId).get();
		model.put("pageName", "addstockverification");
		model.put(Menu.STOCK_VERIFICATION_M.toString(), "active");
		model.put("stockVerification", stockVerification);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/stockVerification/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteStockVerification(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer stockVerificationId, 
			BindingResult result, ModelMap model) {
		stockVerificationHistoryRepository.save(StockVerificationHistory.setUpObject(stockVerificationRepository.findById(stockVerificationId).get(), userDetails.getLoginId()));
		stockVerificationRepository.deleteById(stockVerificationId);
		model.addAttribute("message", "Stock verification has been deleted successfully.");
		return getStockVerificationPage();
	}

	@PostMapping("/stockVerification/history")
	public ModelAndView getStockVerificationHistoryPage(@ModelAttribute("id") Integer stockVerificationId) {
		Map<String, Object> model = new HashMap<>();
		List<StockVerificationHistory> stockVerificationHistoryList = stockVerificationHistoryRepository.findByStockVerificationIdOrderByUpdatedOnDesc(stockVerificationId);
		model.put("stockVerificationHistoryList", stockVerificationHistoryList);
		model.put("pageName", "stockverificationhistory");
		model.put(Menu.STOCK_VERIFICATION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/deputation/list")
	public ModelAndView getDeputationPage() {
		Map<String, Object> model = new HashMap<>();
		List<Deputation> deputationList = deputationRepository.findAllByOrderByIdDesc();
		model.put("deputationList", deputationList);
		model.put("pageName", "deputation");
		model.put(Menu.DEPUTATION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/deputation/add")
	public ModelAndView getAddDeputationPage(@ModelAttribute("deputation") Deputation deputation, BindingResult result, ModelMap model) {
		model.put("pageName", "adddeputation");
		model.put(Menu.DEPUTATION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/deputation/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveDeputation(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("deputation") Deputation deputation, 
			BindingResult result, ModelMap model) {
		deputation.setSocietyId(society.getId());
		deputation = deputationRepository.save(deputation);
		deputationHistoryRepository.save(DeputationHistory.setUpObject(deputation, userDetails.getLoginId()));
		model.addAttribute("message", "Deputation has been saved successfully.");
		model.put("pageName", "adddeputation");
		model.put(Menu.DEPUTATION_DETAILS_M.toString(), "active");
		return "basicdetails";
	}

	@PostMapping("/deputation/edit")
	public ModelAndView getEditDeputationPage(
			@ModelAttribute("id") Integer deputationId, BindingResult result, ModelMap model) {
		Deputation deputation = deputationRepository.findById(deputationId).get();
		model.put("pageName", "adddeputation");
		model.put(Menu.DEPUTATION_DETAILS_M.toString(), "active");
		model.put("deputation", deputation);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/deputation/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteDeputation(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer deputationId, 
			BindingResult result, ModelMap model) {
		deputationHistoryRepository.save(DeputationHistory.setUpObject(deputationRepository.findById(deputationId).get(), userDetails.getLoginId()));
		deputationRepository.deleteById(deputationId);
		model.addAttribute("message", "Deputation details has been deleted successfully.");
		return getDeputationPage();
	}

	@PostMapping("/deputation/history")
	public ModelAndView getDeputationHistoryPage(@ModelAttribute("id") Integer deputationId) {
		Map<String, Object> model = new HashMap<>();
		List<DeputationHistory> deputationHistoryList = deputationHistoryRepository.findByDeputationIdOrderByUpdatedOnDesc(deputationId);
		model.put("deputationHistoryList", deputationHistoryList);
		model.put("pageName", "deputationhistory");
		model.put(Menu.DEPUTATION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}
	

	@GetMapping("/inspection/list")
	public ModelAndView getInspectionPage() {
		Map<String, Object> model = new HashMap<>();
		List<Inspection> inspectionList = inspectionRepository.findAllByOrderByIdDesc();
		model.put("inspectionList", inspectionList);
		model.put("pageName", "inspection");
		model.put(Menu.INSPECTION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/inspection/add")
	public ModelAndView getAddInspectionPage(@ModelAttribute("inspection") Inspection inspection, BindingResult result, ModelMap model) {
		model.put("pageName", "addinspection");
		model.put(Menu.INSPECTION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}
	
	@PostMapping(value="/inspection/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveInspection(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("inspection") Inspection inspection,
			@RequestParam("file") MultipartFile[] files,
			BindingResult result, ModelMap model) {
		
		String groupId = "";
		
		if(inspection != null && inspection.getDocumentId() != null && !inspection.getDocumentId().equals("")) {
			groupId = inspection.getDocumentId();
		}
		else {
			groupId = new Date().getTime()+"";
		}
		
		saveDocuments(files, society.getId(), groupId, userDetails.getLoginId());
		
		List<Document> documents = documentRepository.findAllByGroupIdAndIsActive(groupId, true);
		
		List<String> fileNames = documents.stream()
			    .map(Document::getFileName)
			    .collect(Collectors.toList());
		
		inspection.setFileNames(String.join(", ", fileNames));
		inspection.setDocumentId(groupId);
		inspection.setSocietyId(society.getId());
		inspection = inspectionRepository.save(inspection);
		inspectionHistoryRepository.save(InspectionHistory.setUpObject(inspection, userDetails.getLoginId()));
		
		model.put("pageName", "addinspection");
		model.put(Menu.INSPECTION_M.toString(), "active");
		model.put("documents", documents);
		model.addAttribute("message", "Inspection Details has been saved successfully.");
		
		return "basicdetails";
	}

	@GetMapping(value="/inspection/update")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String updateInspection(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("inspection") Inspection inspection,
			BindingResult result, ModelMap model) {

		String groupId = inspection.getDocumentId();
		List<Document> documents = documentRepository.findAllByGroupIdAndIsActive(groupId, true);
		
		List<String> fileNames = documents.stream()
			    .map(Document::getFileName)
			    .collect(Collectors.toList());
		
		inspection.setFileNames(String.join(", ", fileNames));
		inspection.setDocumentId(groupId);
		inspection.setSocietyId(society.getId());
		inspection = inspectionRepository.save(inspection);
		inspectionHistoryRepository.save(InspectionHistory.setUpObject(inspection, userDetails.getLoginId()));
		
		model.put("pageName", "addinspection");
		model.put(Menu.INSPECTION_M.toString(), "active");
		model.put("documents", documents);
		model.addAttribute("message", "Inspection has been saved successfully.");
		
		return "basicdetails";
	}

	@PostMapping("/inspection/edit")
	public ModelAndView getEditInspectionPage(
			@ModelAttribute("id") Integer inspectionId, BindingResult result, ModelMap model) {
		Inspection inspection = inspectionRepository.findById(inspectionId).get();
		model.put("pageName", "addinspection");
		model.put(Menu.INSPECTION_M.toString(), "active");
		model.put("inspection", inspection);
		model.put("documents", documentRepository.findAllByGroupIdAndIsActive(inspection.getDocumentId(), true));
		model.put("isEdit", true);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/inspection/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deleteInspection(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer inspectionId, 
			BindingResult result, ModelMap model) {
		inspectionHistoryRepository.save(InspectionHistory.setUpObject(inspectionRepository.findById(inspectionId).get(), userDetails.getLoginId()));
		inspectionRepository.deleteById(inspectionId);
		model.addAttribute("message", "Inspection Details has been deleted successfully.");
		return getInspectionPage();
	}

	@PostMapping("/inspection/history")
	public ModelAndView getInspectionHistoryPage(@ModelAttribute("id") Integer inspectionId) {
		Map<String, Object> model = new HashMap<>();
		List<InspectionHistory> inspectionHistoryList = inspectionHistoryRepository.findByInspectionIdOrderByUpdatedOnDesc(inspectionId);
		model.put("inspectionHistoryList", inspectionHistoryList);
		model.put("pageName", "inspectionhistory");
		model.put(Menu.INSPECTION_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}
	

	@GetMapping("/petition/list")
	public ModelAndView getPetitionPage() {
		Map<String, Object> model = new HashMap<>();
		List<Petition> petitionList = petitionRepository.findAllByOrderByIdDesc();
		model.put("petitionList", petitionList);
		model.put("pageName", "petition");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		log.info("petilist {}" , petitionList);
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/petition/add")
	public ModelAndView getAddPetitionPage(@ModelAttribute("petition") Petition petition, BindingResult result, ModelMap model) {
		model.put("pageName", "addpetition");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping(value="/petition/update")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String updatePetition(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("petition") Petition petition,
			BindingResult result, ModelMap model) {

		String groupId = petition.getDocumentId();
		List<Document> documents = documentRepository.findAllByGroupIdAndIsActive(groupId, true);
		
		List<String> fileNames = documents.stream()
			    .map(Document::getFileName)
			    .collect(Collectors.toList());
		
		petition.setFileNames(String.join(", ", fileNames));
		petition.setDocumentId(groupId);
		petition.setSocietyId(society.getId());
		petition = petitionRepository.save(petition);
		log.info("Petition saved {}", petition);
		petitionHistoryRepository.save(PetitionHistory.setUpObject(petition, userDetails.getLoginId()));
		
		model.put("pageName", "addpetition");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		model.put("documents", documents);
		model.addAttribute("message", "Petition has been saved successfully.");
		
		return "basicdetails";
	}


	@PostMapping(value="/petition/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String savePetition(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("petition") Petition petition,
			@RequestParam("file") MultipartFile[] files,
			BindingResult result, ModelMap model) {
		
		String groupId = "";
		
		if(petition != null && petition.getDocumentId() != null && !petition.getDocumentId().equals("")) {
			groupId = petition.getDocumentId();
		}
		else {
			groupId = new Date().getTime()+"";
		}
		
		saveDocuments(files, society.getId(), groupId, userDetails.getLoginId());
		
		List<Document> documents = documentRepository.findAllByGroupIdAndIsActive(groupId, true);
		
		List<String> fileNames = documents.stream()
			    .map(Document::getFileName)
			    .collect(Collectors.toList());
		
		petition.setFileNames(String.join(", ", fileNames));
		petition.setDocumentId(groupId);
		petition.setSocietyId(society.getId());
		petition = petitionRepository.save(petition);
		log.info("Petition saved {}", petition);
		petitionHistoryRepository.save(PetitionHistory.setUpObject(petition, userDetails.getLoginId()));
		
		model.put("pageName", "addpetition");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		model.put("documents", documents);
		model.addAttribute("message", "Petition has been saved successfully.");
		
		return "basicdetails";
	}
	


	@PostMapping("/petition/edit")
	public ModelAndView getEditPetitionPage(
			@ModelAttribute("id") Integer petitionId, BindingResult result, ModelMap model) {
		Petition petition = petitionRepository.findById(petitionId).get();
		model.put("pageName", "addpetition");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		model.put("petition", petition);
		model.put("documents", documentRepository.findAllByGroupIdAndIsActive(petition.getDocumentId(), true));
		model.put("isEdit", true);
		return new ModelAndView("basicdetails", model);
	}

	@PostMapping(value="/petition/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView deletePetition(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer petetionId, 
			BindingResult result, ModelMap model) {
		petitionHistoryRepository.save(PetitionHistory.setUpObject(petitionRepository.findById(petetionId).get(), userDetails.getLoginId()));
		petitionRepository.deleteById(petetionId);
		model.addAttribute("message", "Promotion Details has been deleted successfully.");
		return getPetitionPage();
	}

	@PostMapping("/petition/history")
	public ModelAndView getpetitionHistoryPage(@ModelAttribute("id") Integer petitionId) {
		Map<String, Object> model = new HashMap<>();
		List<PetitionHistory> petitionHistoryList = petitionHistoryRepository.findByPetitionIdOrderByUpdatedOnDesc(petitionId);
		model.put("petitionHistoryList", petitionHistoryList);
		model.put("pageName", "petitionhistory");
		model.put(Menu.PETITION_DETAILS_M.toString(), "active");
		return new ModelAndView("basicdetails", model);
	}

	@GetMapping("/document/delete")
	@ResponseBody
	public Document deleteDocument(@RequestParam("id") Integer id) {
		log.info("document delete request {}", id);
//		documentRepository.deleteById(id);
		return documentRepository.findById(id).get();
	}

	@PostMapping(value="/document/delete")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String deleteDocument(
			@SessionAttribute("userDetails") UserDetails userDetails,
			@SessionAttribute("societyInfo") Society society, 
			@ModelAttribute("id") Integer documentId,  
			@ModelAttribute("groupId") String groupId, 
			@ModelAttribute("pageName") String pageName, 
			BindingResult result, ModelMap model, 
	        final RedirectAttributes redirectAttributes) {
		if(pageName.contains("add")) {
			pageName = pageName.replaceFirst("add", "");
		}
		
		Optional<Document> optionalDocument = documentRepository.findById(documentId);
		if(optionalDocument.isPresent()) {
			Document d = optionalDocument.get();
			d.setIsActive(false);
			documentRepository.save(d);
			if(pageName.equals("petition")) {
				Petition petition = petitionRepository.findByDocumentId(groupId);
				redirectAttributes.addFlashAttribute("petition", petition);
			}
			else if(pageName.equals("inspection")) {
				Inspection inspection = inspectionRepository.findByDocumentId(groupId);
				redirectAttributes.addFlashAttribute("inspection", inspection);
			}
			return "redirect:/"+pageName+"/update";
		}
		return "redirect:/"+pageName+"/list";
	}

	private List<Document> saveDocuments(MultipartFile[] files, Integer societyId, String groupId, Integer userId) {
		List<Document> documents = new ArrayList<Document>();
		if(files != null) {
			for(MultipartFile file: files) {
				String fileName = FileUtils.uploadFile(file, groupId);
				if(!fileName.isEmpty()) {
					Document d = saveDocument(fileName, societyId, groupId, userId);
					documents.add(d);
				}
			}
		}
		return documents;
	}

	private Document saveDocument(String fileName, Integer societyId, String groupId, Integer userId) {
		Document document = new Document();
		document.setFileName(fileName);
		document.setSocietyId(societyId);
		document.setGroupId(groupId);
		document.setCreatedBy(userId);
		return documentRepository.save(document);
	}
	
	
	
}
