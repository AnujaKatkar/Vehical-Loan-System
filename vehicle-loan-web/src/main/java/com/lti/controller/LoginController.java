package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.vehicleloan.entity.UserCredentials;
import com.lti.vehicleloan.exception.DataNotFoundException;
import com.lti.vehicleloan.service.LoginService;
import com.lti.vehicleloan.service.LoginServiceInterface;


@Controller
public class LoginController {


	@Autowired
	private LoginServiceInterface loginService;


	@RequestMapping(path="/login.lti",method=RequestMethod.POST)
	public String login(UserCredentials userCredentials,Map model)  	 {
		
		boolean value;
		try {
			 value =loginService.login(userCredentials);
		}
		catch(Exception e ) {
			value=false;
		}
		if(value==true)
			return "success.jsp";
		else {
			model.put("invalidCredentials", "You have entered Wrong password. Please try again!");
			return "login.jsp";
		}
	}
}
