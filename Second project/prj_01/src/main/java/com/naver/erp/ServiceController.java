package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ServiceController {

	@RequestMapping( value="/serviceForm.do")
	public ModelAndView serviceForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("serviceForm.jsp");
		return mav;
		
	}
	@RequestMapping( value="/serviceQnA.do")
	public ModelAndView serviceQnA() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("serviceQnA.jsp");
		return mav;
		
	}
	@RequestMapping( value="/serviceQnAList.do")
	public ModelAndView serviceQnAList() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("serviceQnAList.jsp");
		return mav;
		
	}
}
