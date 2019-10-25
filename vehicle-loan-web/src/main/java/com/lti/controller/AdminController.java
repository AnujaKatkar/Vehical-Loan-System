package com.lti.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.vehicleloan.entity.UserPersonalDetails;
import com.lti.vehicleloan.service.AdminServiceInterface;

@Controller
public class AdminController {

	@Autowired
	private AdminServiceInterface adminServiceInterface;
	
	@RequestMapping(path="/admin.lti",method=RequestMethod.POST)
	public String retrieveClients(@RequestParam("clients") String applicationStatus,Map model) {
		
		List<UserPersonalDetails> userPersonalDetailsList= adminServiceInterface.retrieveClients("yes");
		model.put("userPersonalDetailsList", userPersonalDetailsList);
		return "admin-side-client-details.jsp";
	}
	
	
}
