package com.chewy.fwd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.chewy.fwd.service.MemberService;
import com.chewy.fwd.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	// 이메일 확인
	@RequestMapping(value = "email.do", method = RequestMethod.GET)
	public String PwEmail() {
		return "/changePw/email";
	}

	@RequestMapping(value = "email.do", method = RequestMethod.POST)
	public String PwEmail(MemberVo MemberVo, RedirectAttributes rttr) throws Exception {

		List<MemberVo> member = memberService.selectEmail(MemberVo);
		int memberNo = memberService.selectNo(MemberVo);

		try {
			if (member.size() > 0) {
				rttr.addFlashAttribute("no", memberNo);

				return "redirect:password.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/changePw/email";
	}

	// 비밀번호 변경
	@RequestMapping(value = "password.do", method = RequestMethod.GET)
	public String Pwchange() {
		return "/changePw/password";
	}

	@RequestMapping(value = "password.do", method = RequestMethod.POST)
	public String Pwchange(MemberVo MemberVo) throws Exception {

		int status = memberService.changePw(MemberVo);

		try {
			if (status == 200)
				return "redirect:login.do";

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/changePw/password";
	}

	
	// 로그인

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginPage() {
		System.out.println("로그인페이지");
		return "login";
	}
	
	// 로그인
	
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberVo memberVo, Model model, HttpSession session) throws Exception {
		System.out.println("로그인 포스트");
		System.out.println("memberService.login(MemberVo) : " + memberService.login(memberVo));
		int login =  memberService.login(memberVo);
		System.out.println("login : " + login);
		
		if(login > 0) {
			model.addAttribute("login", login);
			session.setAttribute("memberVo", memberVo);
			System.out.println("로그인 성공");
			return "redirect:main_final.jsp";
		} else {
			System.out.println("로그인실패");
			return "loginnk";
		}
		
		
		
		
	}
	

//	@RequestMapping(value = "/loginnk.do", method = RequestMethod.POST)
//	public String login(MemberVo memberVo, Model model, HttpSession session) throws Exception {
//		System.out.println("memberService.login(MemberVo) : " + memberService.login(memberVo));
//		List<MemberVo> login = memberService.login(memberVo);
//		System.out.println("login : " + login);
//		if (!login.isEmpty()) {
//			model.addAttribute("login", login);
//			session.setAttribute("MemberVo", memberVo);
//			System.out.println("POST 로그인");
//			System.out.println("MemberVo : " + memberVo);
//			// vo값 들어왔는지 확인할 때 jsp 파일안 input태그에 name값이 입력되어있지않으면 매핑이 안된다.
//			System.out.println("로그인 성공");
//			return "redirect:main.do";
//		} else {
//			System.out.println("로그인 실패");
//			return "loginnk";
//		}
//
//	}
}