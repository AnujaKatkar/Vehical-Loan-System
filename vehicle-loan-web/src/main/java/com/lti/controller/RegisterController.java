package com.lti.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.vehicleloan.dto.RegisterDataDTO;
import com.lti.vehicleloan.entity.UserPersonalDetails;
import com.lti.vehicleloan.service.RegisterService;
import com.lti.vehicleloan.service.RegisterServiceInterface;
import com.lti.vehicleloan.entity.UserCredentials;

@Controller
public class RegisterController {

	@Autowired
	private RegisterServiceInterface registerService;
	
	@RequestMapping(path="/register.lti",method=RequestMethod.POST)
	public String register (RegisterDataDTO data,Map Model) {
		
		UserPersonalDetails upd = new UserPersonalDetails();
		upd.setName(data.getName());
		upd.setGender(data.getGender());
		upd.setMobileNumber(data.getMobileNumber());
		
		UserCredentials uc = new  UserCredentials();
		uc.setEmail(data.getEmail());
		uc.setPassword(data.getPassword());
		upd.setUserCredentials(uc);
		registerService.register(upd);
		return "GetEligibiltyCriteria.jsp";
	}
	
}
