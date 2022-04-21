package com.chewy.fwd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.TestService;
import com.chewy.fwd.vo.TestVo;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="test.do", method = RequestMethod.GET)
	public String test(TestVo testVo, Model model) throws Exception{
		
		System.out.println("컨트롤러 확인");
		
		List<TestVo> test =  testService.test();
		model.addAttribute("test", test);
		
		System.out.println("test : " + test);
		return "test";
		
//		 commit test
	}
}
