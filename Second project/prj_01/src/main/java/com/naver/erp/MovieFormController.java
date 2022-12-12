package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieFormController {
	@RequestMapping(value="/movieHome.do")
	public ModelAndView movieHome() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("movieHome.jsp");
		
		return mav;
	}
}
