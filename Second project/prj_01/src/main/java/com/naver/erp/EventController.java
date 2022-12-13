package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EventController {
	@RequestMapping( value="/eventForm.do")
	public ModelAndView eventForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventForm.jsp");
		return mav;
		
	}
}
