package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.vehicleloan.dto.GetEligibiltyDTO;
import com.lti.vehicleloan.service.GetEligibilityService;

@Controller
public class GetEligibilityController {
	
	@Autowired
	private GetEligibilityService getEligibilityService;

	@RequestMapping(path="/get-eligibility.lti",method=RequestMethod.POST)
	public String verifyEligibility(GetEligibiltyDTO getEligibility,Map model) {
		//GetEligibiltyDTO dto = getEligibility;
		boolean value = getEligibilityService.verify();
		if(value==true)
		return "/jsp/success.jsp";
		else
		return "/jsp/homepage.jsp";
	}
}
