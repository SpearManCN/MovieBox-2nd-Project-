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
	
	
	@RequestMapping( value="/eventDetail0.do")
	public ModelAndView eventDetail0() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail0.jsp");
		return mav;
		
	}
	@RequestMapping( value="/eventDetail1.do")
	public ModelAndView eventDetail1() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail1.jsp");
		return mav;
		
	}
	@RequestMapping( value="/eventDetail2.do")
	public ModelAndView eventDetail2() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail2.jsp");
		return mav;
		
	}
	
	@RequestMapping( value="/eventDetail3.do")
	public ModelAndView eventDetail3() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail3.jsp");
		return mav;
		
	}
	@RequestMapping( value="/eventDetail4.do")
	public ModelAndView eventDetail4() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail4.jsp");
		return mav;
		
	}
	@RequestMapping( value="/eventDetail5.do")
	public ModelAndView eventDetail5() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("eventDetail5.jsp");
		return mav;
		
	}
	
	
	
}
