package com.chewy.fwd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.TestService;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="test.do", method = RequestMethod.GET)
	public String test(Model model) throws Exception{
		
		model.addAttribute("test", testService.test().get(0).getTest());
		
		return "test";
	}
}
