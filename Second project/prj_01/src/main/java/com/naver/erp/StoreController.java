package com.naver.erp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {

	@RequestMapping( value="/storeForm.do")
	public ModelAndView storeForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("storeForm.jsp");
		return mav;
		
	}
}
