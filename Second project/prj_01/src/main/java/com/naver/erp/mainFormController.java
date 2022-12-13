package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainFormController {
	
	@RequestMapping( value="/mainForm.do")
	public ModelAndView mainForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mainForm.jsp");
		return mav;
		
	}
	

}
