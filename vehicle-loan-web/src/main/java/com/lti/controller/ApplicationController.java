package com.lti.controller;


import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.UserCredentialsDataSourceAdapter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.lti.vehicleloan.dto.ApplicationFormDTO;
import com.lti.vehicleloan.entity.LoanDetails;
import com.lti.vehicleloan.entity.UserAddressDetails;
import com.lti.vehicleloan.entity.UserCredentials;
import com.lti.vehicleloan.entity.UserDocuments;
import com.lti.vehicleloan.entity.UserPersonalDetails;
import com.lti.vehicleloan.entity.VehicleDetails;
import com.lti.vehicleloan.service.ApplicationFormServiceInterface;



@Controller
@SessionAttributes("userCredentialsSession")
public class ApplicationController {
	
	@Autowired
	private ApplicationFormServiceInterface applicationFormService;

	@RequestMapping(path="/application-form.lti" , method=RequestMethod.POST)
	public String applicationForm(ApplicationFormDTO applicationForm,HttpServletRequest request,Map Model) throws Exception {
	

//		UserCredentials userCredentialsSession = (UserCredentials) request.getSession().getAttribute("userCredentialSession");
//		if(userCredentialsSession.getEmail().equals(use))
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
		
		
		try {

			String fileNmae= "D:\\Documents\\"+userPersonalDetails.getUserId()+userPersonalDetails.getName()+".pdf";
			Document document = new Document();
			
			PdfWriter.getInstance(document, new FileOutputStream(fileNmae));
			document.open();
			Paragraph para = new Paragraph("Application Form",FontFactory.getFont(FontFactory.TIMES_ROMAN,18, Font.BOLD, BaseColor.BLACK));
			para.setAlignment(Element.ALIGN_CENTER);
			document.add(para);
			PdfPTable table = new PdfPTable(1);
			PdfPCell c = new PdfPCell(new Phrase("User Details"));
			c.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(c);
			table.setHeaderRows(1);
			
			
			table.addCell("Name  : "+ userPersonalDetails.getName());
			table.addCell("Age  : "+(String.valueOf(userPersonalDetails.getAge())));
			table.addCell("Gender : "+userPersonalDetails.getGender());
			table.addCell("Mobile Number  : "+userPersonalDetails.getMobileNumber());
			table.addCell("Type Of Employment : "+userPersonalDetails.getTypeOfEmployement());
			table.addCell("Existing EMI : "+(String.valueOf(userPersonalDetails.getExistingEmi())));
			table.addCell("Yearly Salary : "+String.valueOf(userPersonalDetails.getYearlySalary()));
			document.add(table);
			
			document.close();
			System.out.println("Pdf Generated");
		}
		catch(Exception e){
			
		}
		

		return "user-dashboard.jsp";
	}
}
