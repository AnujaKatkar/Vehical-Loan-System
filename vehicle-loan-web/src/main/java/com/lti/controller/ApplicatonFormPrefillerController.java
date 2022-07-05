package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.vehicleloan.entity.UserPersonalDetails;
import com.lti.vehicleloan.service.ApplicationFormPrefillerInterface;

@Controller
public class ApplicatonFormPrefillerController {

	@Autowired
	private ApplicationFormPrefillerInterface applicationFormPrefiller;
	
	@RequestMapping(path="/application-form-prefiller.lti", method=RequestMethod.GET)
	public String applicationFromFiller(Map model) {
		
		UserPersonalDetails upd =  applicationFormPrefiller.getUserPersonalDetails(225);
		String[] name = upd.getName().split(" ");
		//model.put("Name", upd.getName());
		model.put("FirstName", name[0]);
		model.put("LastName", name[1]);
		model.put("Age",upd.getAge());
		model.put("Gender",upd.getGender());
		model.put("Salary", upd.getYearlySalary());
		model.put("MobileNumber", upd.getMobileNumber());
		model.put("TypeOfEmployment", upd.getTypeOfEmployement());
		model.put("ExistingEmi", upd.getExistingEmi());
		
		//String Email = applicationFormPrefiller.getEmail(225);
		//model.put("Email", Email);
		return "applicationForm.jsp";
	}
}
