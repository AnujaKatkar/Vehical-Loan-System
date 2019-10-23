package com.lti.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.vehicleloan.dto.ApplicationFormDTO;
import com.lti.vehicleloan.entity.LoanDetails;
import com.lti.vehicleloan.entity.UserAddressDetails;
import com.lti.vehicleloan.entity.UserCredentials;
import com.lti.vehicleloan.entity.UserDocuments;
import com.lti.vehicleloan.entity.UserPersonalDetails;
import com.lti.vehicleloan.entity.VehicleDetails;
import com.lti.vehicleloan.service.ApplicationFormServiceInterface;



@Controller
public class ApplicationController {
	
	@Autowired
	private ApplicationFormServiceInterface applicationFormService;

	@RequestMapping(path="/application-form.lti" , method=RequestMethod.POST)
	public String applicationForm(ApplicationFormDTO applicationForm,Map Model) throws Exception {
	
	
		UserDocuments userDocuments = new UserDocuments();
		userDocuments.setAadhaarCard(applicationForm.getAadharCard().getBytes());
		userDocuments.setPanCard(applicationForm.getPanCard().getBytes());
		userDocuments.setSalarySlip(applicationForm.getSalarySlip().getBytes());
		userDocuments.setBankDetails(applicationForm.getPhoto().getBytes());
		
		UserCredentials userCredentials = new UserCredentials();
		userCredentials.setEmail(applicationForm.getEmail());
		//userCredentials.setPassword(applicationForm.getPassword());
		
		UserAddressDetails userAddressDetails = new UserAddressDetails();
		userAddressDetails.setBuilding(applicationForm.getBuilding());
		userAddressDetails.setCity(applicationForm.getCity());
		userAddressDetails.setState(applicationForm.getBuilding());
		userAddressDetails.setPinCode(applicationForm.getPincode());
		
		VehicleDetails vehicleDetails = new VehicleDetails();
		vehicleDetails.setCarMake(applicationForm.getCarMake());
		vehicleDetails.setCarModel(applicationForm.getCarModel());
		vehicleDetails.setEx_Showroom_Price(applicationForm.getExShowroomPrice());
		
		
		
		LoanDetails loanDetails = new LoanDetails();
		loanDetails.setLoanAmount(applicationForm.getLoanAmount());
		loanDetails.setLoanTenure(applicationForm.getLoanTenure());
		loanDetails.setRateOfInterest(applicationForm.getRateOfInterest());
		
		UserPersonalDetails userPersonalDetails = new UserPersonalDetails(); 
		userPersonalDetails.setName(applicationForm.getFirstName()+" "+applicationForm.getLastName());
		userPersonalDetails.setGender(applicationForm.getGender());
		userPersonalDetails.setAge(applicationForm.getAge());
		userPersonalDetails.setTypeOfEmployement(applicationForm.getTypeOfEmployment());
		userPersonalDetails.setYearlySalary(applicationForm.getSalary());
		userPersonalDetails.setExistingEmi(applicationForm.getExistingEmi());
		userPersonalDetails.setMobileNumber(applicationForm.getMobileNumber());
		userPersonalDetails.setUserCredentials(userCredentials);
		userPersonalDetails.setUserDocuments(userDocuments);
		userPersonalDetails.setVehicleDetails(vehicleDetails);
		userPersonalDetails.setLoanDetails(loanDetails);
		userPersonalDetails.setUserAddressDetails(userAddressDetails);
		
		userDocuments.setUserPersonalDetails(userPersonalDetails);
		userCredentials.setUserPersonalDetails(userPersonalDetails);
		userAddressDetails.setUserPersonalDetails(userPersonalDetails);
		vehicleDetails.setUserPersonalDetails(userPersonalDetails);
		loanDetails.setUserPersonalDetails(userPersonalDetails);
		
		applicationFormService.saveUserPersonalDetails(userPersonalDetails);
		

		return "/jsp/user-dashboard.jsp";
	}
}
