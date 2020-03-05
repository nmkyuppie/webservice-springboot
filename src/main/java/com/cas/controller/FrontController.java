package com.cas.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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

import com.cas.business.entity.Circle;
import com.cas.business.entity.JewelLoan;
import com.cas.business.entity.Society;
import com.cas.business.entity.UserDetails;
import com.cas.business.service.SocietyService;
import com.cas.business.service.HomeService;
import com.cas.business.service.JewelLoanService;
import com.cas.business.service.LoginService;

import lombok.extern.slf4j.Slf4j;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Controller
@Slf4j
@SessionAttributes("userDetails")
public class FrontController {	

	@Autowired
	LoginService loginService;

	@Autowired
	HomeService homeService;

	@Autowired
	JewelLoanService jewelLoanService;
	
	@Value(value = "${jasperReportPath}")
	String jasperReportPath;

	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}

	@PostMapping("/destroy")
	public String destroySession(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

	@PostMapping(value="/user/validate")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public ModelAndView loginUser(@ModelAttribute("userDetails") UserDetails userDetails,
			@ModelAttribute("userName") String userName, 
			@ModelAttribute("password") String password, 
			HttpSession session) {

		Map<String, Object> model = new HashMap<>();
		boolean isUserExist = loginService.existsByUserName(userName);

		if(isUserExist) {
			userDetails = loginService.validateUser(userName, password);
			if(userDetails == null) {
				model.put("message", "User name or password is invalid.");
				return new ModelAndView("login", model);
			}
			else {
				session.setAttribute("userDetails", userDetails);
//				return new ModelAndView("redirect:/society/list", model);
				return new ModelAndView("redirect:/home", model);
			}

		}
		else {
			model.put("message", "User name is invalid.");
			return new ModelAndView("login", model);
		}
	}

	@ModelAttribute("userDetails")
	public UserDetails setUpUserForm() {
		return null;
	}

	@GetMapping("/jewelloan/list")
	public ModelAndView getJewelLoanPage() {
		Map<String, Object> model = new HashMap<>();
		List<JewelLoan> jewelLoanList = jewelLoanService.findAll();
		model.put("jewelLoanList", jewelLoanList);
		return new ModelAndView("jewelloan", model);
	}

	@GetMapping("/jewelloan/add")
	public ModelAndView getAddBranchPage(@ModelAttribute("jewelloan") JewelLoan jewelLoan, BindingResult result, ModelMap model) {
		return new ModelAndView("addjewelloan");
	}

	@PostMapping("/jewelloan/edit")
	public ModelAndView getEditJewelLoanPage(@ModelAttribute("sid") String sid, BindingResult result, ModelMap model) {
		JewelLoan jewelLoan = jewelLoanService.findById(Integer.parseInt(sid));
		model.addAttribute("jewelloan", jewelLoan);
		return new ModelAndView("addjewelloan", model);
	}

	@PostMapping(value="/jewelloan/add")
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_UNCOMMITTED)
	public String saveJewelLoan(@ModelAttribute("jewelloan") JewelLoan jewelLoan, BindingResult result, ModelMap model) {
		jewelLoanService.save(jewelLoan);
		model.addAttribute("message", "Jewel loan has been saved successfully.");
		return "addjewelloan";
	}

	@GetMapping("/jewelloan/report/pdf")
	public void empReport(HttpServletResponse response) {
		try {

			List<JewelLoan> empList = jewelLoanService.findAll();

//			String reportPath = "E:\\jrxml";

			// Compile the Jasper report from .jrxml to .japser
			JasperReport jasperReport = JasperCompileManager.compileReport(jasperReportPath + "\\cas.jrxml");

			// Get your data source
			JRBeanCollectionDataSource jrBeanCollectionDataSource = new JRBeanCollectionDataSource(empList);

			Map<String, Object> parameters = new HashMap<>();

			// Fill the report
			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters,
					jrBeanCollectionDataSource);

			// Export the report to a PDF file
			JasperExportManager.exportReportToPdfFile(jasperPrint, jasperReportPath + "\\jewel-loan.pdf");


			response.setContentType("application/x-download");
			response.setHeader("Content-Disposition", String.format("attachment; filename=\"jewel-loan.pdf\""));

			JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());

		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
	}

}
