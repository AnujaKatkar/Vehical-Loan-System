package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.vehicleloan.entity.UserCredentials;
import com.lti.vehicleloan.exception.DataNotFoundException;
import com.lti.vehicleloan.service.LoginService;
import com.lti.vehicleloan.service.LoginServiceInterface;


@Controller
@SessionAttributes("userCredentials")
public class LoginController {


	@Autowired
	private LoginServiceInterface loginService;


	@RequestMapping(path="/login.lti",method=RequestMethod.POST)
	public String login (UserCredentials userCredentials,Map model)  	 {
		
		UserCredentials userCredentialsFromDao = loginService.login(userCredentials);
		try {
			if(userCredentials.getPassword().equals(userCredentialsFromDao.getPassword())) {		
				model.put("userCredentials", userCredentialsFromDao);
				return "../jsp/user-dashboard.jsp";
			}
			else
				model.put("invalidCredentials", "Invalid Credentials,Please try again!");
				return "login-register.jsp";
		}
		catch(Exception dataNotFoundException) {
			throw new DataNotFoundException("Invalid User");
		}
	}

		
	}
}
