package com.chewy.fwd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes({"m_no","m_name", "m_password", "m_email"})
public class AccountController {
	
	@RequestMapping(value="mypetInsert.do", method = RequestMethod.GET)
	public String mypetInsertpage() {
		System.out.println("mypetInsertpage");
		return "/account/mypetInsert";
	}
 
	@RequestMapping(value="")
	public String mypetInsert() {
		
		
		return "overview";
	}
	
	
	
	
	
	
	
	
	
}



