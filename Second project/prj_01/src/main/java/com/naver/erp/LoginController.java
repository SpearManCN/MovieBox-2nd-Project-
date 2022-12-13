package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@RequestMapping( value="/loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginForm.jsp");
		return mav;
		
	}
	@RequestMapping( value="/loginJoinForm.do")
	public ModelAndView loginJoinForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("loginJoinForm.jsp");
		return mav;
		
	}
	
	
}
